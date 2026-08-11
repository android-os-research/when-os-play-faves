"""
smali_extractor.py
==================
Reconstructs a "slim" smali file that contains exactly what the LLM needs
and nothing more:

    ┌─────────────────────────────────────────────────────┐
    │  Class header   (.class / .super / .implements /    │
    │                  .source / .annotation on class)    │
    │  Field decls    (.field lines)                      │
    │  <clinit>       static initializer (always kept)    │
    │  <init>         constructor(s)     (always kept)    │
    │  Relevant methods  ← call-chain methods             │
    │                    ← methods containing pkg string  │
    └─────────────────────────────────────────────────────┘

Each relevant method is annotated with a comment block showing:
  - whether it contains the hardcoded package string
  - which security tags its invocations hit
  - the specific lines that triggered each tag

Security tag taxonomy (mirrors step5_smali_callgraph.py):

  PERM_CHECK       checkPermission / enforcePermission
  PERM_GRANT       grantPermission / grantRuntimePermission
                   grantDefaultPermission / grantSystemNonFixed
  PERM_REVOKE      revokePermission
  PERM_FLAGS       updatePermissionFlags
  HIDDEN_API       isAllowedToUseHiddenApis / getHiddenApi*
  INSTALLER_VERIFY assertValidApk / noVerifyAllow
  SIG_CHECK        checkSignature / getSigningDetails /
                   computeDigest / hasSigningCertificate
  DEVICE_ID        getDeviceId / getImei / getSubscriberId /
                   getSimSerialNumber / getLine1Number
  APPOPS           setMode / checkOp / noteOp
  PKG_MGMT         installPackage / deletePackage /
                   setApplicationEnabledSetting
  PKG_QUERY        getPackageInfo / getApplicationInfo
  SYS_PROP_READ    SystemProperties.get() / getBoolean()
  SYS_PROP_WRITE   SystemProperties.set()
  UID_CHECK        getCallingUid / getCallingPid
  CALLER_ID        getCallingPackage
  SMS_SEND         sendTextMessage / sendDataMessage
  PHONE_CALL       placeCall
  NETWORK          openSocket / openConnection
"""

from __future__ import annotations

import re
from dataclasses import dataclass, field
from pathlib import Path
from typing import Optional


# ---------------------------------------------------------------------------
# Security tag patterns  (mirrors SEC_TAGS in step5_smali_callgraph.py)
# ---------------------------------------------------------------------------

# (lowercase_substring_to_match_in_line, TAG)
SEC_TAG_PATTERNS: list[tuple[str, str]] = [
    ("checkpermission",             "PERM_CHECK"),
    ("enforcepermission",           "PERM_CHECK"),
    ("grantpermission",             "PERM_GRANT"),
    ("grantruntimeperm",            "PERM_GRANT"),
    ("grantdefaultperm",            "PERM_GRANT"),
    ("grantsystemnonfixed",         "PERM_GRANT"),
    ("revokepermission",            "PERM_REVOKE"),
    ("updatepermissionflags",       "PERM_FLAGS"),
    ("hiddenapi",                   "HIDDEN_API"),
    ("isallowedtousehidden",        "HIDDEN_API"),
    ("gethiddenapienforcementpolicy", "HIDDEN_API"),
    ("assertvalidapk",              "INSTALLER_VERIFY"),
    ("noverifyallow",               "INSTALLER_VERIFY"),
    ("checksignature",              "SIG_CHECK"),
    ("getsigningdetails",           "SIG_CHECK"),
    ("computedigest",               "SIG_CHECK"),
    ("hassigningcertificate",       "SIG_CHECK"),
    ("getdeviceid",                 "DEVICE_ID"),
    ("getimei",                     "DEVICE_ID"),
    ("getsubscriberid",             "DEVICE_ID"),
    ("getsimserialnumber",          "DEVICE_ID"),
    ("getline1number",              "DEVICE_ID"),
    ("setmode",                     "APPOPS"),
    ("checkop",                     "APPOPS"),
    ("noteop",                      "APPOPS"),
    ("setapplicationenabledsetting","PKG_MGMT"),
    ("installpackage",              "PKG_MGMT"),
    ("deletepackage",               "PKG_MGMT"),
    ("setcomponentenabledsetting",  "PKG_MGMT"),
    ("systemproperties;->get",      "SYS_PROP_READ"),
    ("systemproperties;->getboolean","SYS_PROP_READ"),
    ("systemproperties;->set",      "SYS_PROP_WRITE"),
    ("getcallinguid",               "UID_CHECK"),
    ("getcallingpid",               "UID_CHECK"),
    ("getcallingpackage",           "CALLER_ID"),
    ("sendtextmessage",             "SMS_SEND"),
    ("senddatamessage",             "SMS_SEND"),
    ("placecall",                   "PHONE_CALL"),
    ("getpackageinfo",              "PKG_QUERY"),
    ("getapplicationinfo",          "PKG_QUERY"),
    ("opensocket",                  "NETWORK"),
    ("openconnection",              "NETWORK"),
]


def tag_line(line: str) -> list[str]:
    """Return all security tags triggered by a single smali line."""
    lower = line.lower()
    seen: set[str] = set()
    tags: list[str] = []
    for pattern, tag in SEC_TAG_PATTERNS:
        if pattern in lower and tag not in seen:
            tags.append(tag)
            seen.add(tag)
    return tags


# ---------------------------------------------------------------------------
# Data structures
# ---------------------------------------------------------------------------

@dataclass
class SmaliMethod:
    """One parsed .method … .end method block."""
    signature: str           # full .method line (e.g. ".method public foo(I)V")
    name: str                # bare name (e.g. "foo")
    lines: list[str]         # all lines including .method and .end method

    # Analysis results (filled by analyse())
    has_pkg_string: bool                     = False
    pkg_string_lines: list[str]              = field(default_factory=list)
    security_tags: dict[str, list[str]]      = field(default_factory=dict)
    # {TAG: [line, ...]}  — lines that triggered each tag

    def analyse(self, pkg_string: str) -> None:
        """Tag the method body against the package string and SEC_TAG_PATTERNS."""
        for line in self.lines:
            stripped = line.strip()

            # Package string presence
            if pkg_string and f'"{pkg_string}"' in line:
                self.has_pkg_string = True
                self.pkg_string_lines.append(stripped)

            # Security tags
            for tag in tag_line(line):
                self.security_tags.setdefault(tag, []).append(stripped)

    @property
    def is_init(self) -> bool:
        return "<init>" in self.name or "<clinit>" in self.name

    @property
    def all_tags(self) -> list[str]:
        return sorted(self.security_tags.keys())

    def annotation_comment(self) -> str:
        """
        Build the comment block prepended to the method in the slim file.
        Example:
            # [ANCHOR] contains "com.miui.analytics"
            #   v0 := "com.miui.analytics"
            # [PERM_GRANT]
            #   invoke-virtual {...}, grantRuntimePermission(...)
        """
        lines = []
        if self.has_pkg_string:
            lines.append(f'# [ANCHOR] contains "{_truncate(self.pkg_string_lines[0])}"')
            for l in self.pkg_string_lines[1:3]:
                lines.append(f'#   {_truncate(l)}')
        for tag, tag_lines in sorted(self.security_tags.items()):
            lines.append(f"# [{tag}]")
            for l in tag_lines[:3]:
                lines.append(f"#   {_truncate(l)}")
        return "\n".join(lines)


@dataclass
class SlimSmali:
    """A reconstructed slim smali file for one class."""
    class_name: str
    source_path: Path
    header_lines: list[str]          = field(default_factory=list)
    field_lines: list[str]           = field(default_factory=list)
    kept_methods: list[SmaliMethod]  = field(default_factory=list)
    dropped_count: int               = 0
    # Summary of what was found
    pkg_string_methods: list[str]    = field(default_factory=list)
    tagged_methods: dict[str, list[str]] = field(default_factory=dict)
    # {TAG: [method_name, ...]}

    def render(self) -> str:
        """Render the slim smali file as a string."""
        parts: list[str] = []

        # ── Header ──
        parts.append("# === slim smali: {} ===".format(self.class_name))
        parts.append("# source: {}".format(self.source_path))
        parts.append("# kept {} methods  |  dropped {} methods".format(
            len(self.kept_methods), self.dropped_count))
        if self.pkg_string_methods:
            parts.append("# ANCHOR methods (contain pkg string): {}".format(
                ", ".join(self.pkg_string_methods)))
        for tag, methods in sorted(self.tagged_methods.items()):
            parts.append("# {} methods: {}".format(tag, ", ".join(methods)))
        parts.append("")
        parts.extend(self.header_lines)
        parts.append("")

        # ── Methods ── (before fields so they are never cut off by char-limit truncation)
        for method in self.kept_methods:
            ann = method.annotation_comment()
            if ann:
                parts.append(ann)
            parts.extend(line.rstrip() for line in method.lines)
            parts.append("")

        # ── Fields ──
        if self.field_lines:
            parts.extend(self.field_lines)
            parts.append("")

        return "\n".join(parts)

    def summary(self) -> str:
        """One-line summary for --print-context output."""
        tag_str = ", ".join(
            f"{tag}({len(ms)})" for tag, ms in sorted(self.tagged_methods.items())
        )
        return (
            f"{self.class_name}  "
            f"kept={len(self.kept_methods)} dropped={self.dropped_count}  "
            f"anchors={len(self.pkg_string_methods)}  "
            f"tags=[{tag_str or 'none'}]"
        )


# ---------------------------------------------------------------------------
# Parser
# ---------------------------------------------------------------------------

def parse_smali_methods(text: str) -> tuple[list[str], list[str], list[SmaliMethod]]:
    """
    Split a smali file into:
      (header_lines, field_lines, methods)

    Header = everything before the first .method (class decl, .super,
             .implements, .source, class-level .annotation blocks).
    Fields = .field lines extracted from the header region.
    Methods = list of SmaliMethod objects.
    """
    lines = text.splitlines(keepends=True)

    header: list[str] = []
    fields: list[str] = []
    methods: list[SmaliMethod] = []

    in_method = False
    current_method_lines: list[str] = []
    current_sig = ""
    first_method_seen = False

    # Regex for .method line — captures the full signature
    METHOD_START = re.compile(r"^\s*\.method\b")
    METHOD_END   = re.compile(r"^\s*\.end method\b")
    FIELD_LINE   = re.compile(r"^\s*\.field\b")

    for line in lines:
        stripped = line.strip()

        if in_method:
            current_method_lines.append(line)
            if METHOD_END.match(line):
                # Extract bare method name from signature
                # ".method public foo(ILjava/lang/String;)V" → "foo"
                name_match = re.search(r"\.method\b.*?\s(\S+?)\(", current_sig)
                bare_name = name_match.group(1) if name_match else current_sig
                m = SmaliMethod(
                    signature=current_sig.strip(),
                    name=bare_name,
                    lines=current_method_lines,
                )
                methods.append(m)
                in_method = False
                current_method_lines = []
                current_sig = ""

        elif METHOD_START.match(line):
            first_method_seen = True
            in_method = True
            current_sig = line
            current_method_lines = [line]

        elif not first_method_seen:
            if FIELD_LINE.match(line):
                fields.append(line)
            else:
                header.append(line)

    return header, fields, methods


# ---------------------------------------------------------------------------
# Main extraction function
# ---------------------------------------------------------------------------

def extract_slim_smali(
    smali_path: Path,
    pkg_string: str,
    chain_method_names: Optional[list[str]] = None,
    *,
    always_keep_init: bool = True,
) -> SlimSmali:
    """
    Parse a smali file and return a SlimSmali containing only the methods
    that are relevant for analysis.

    A method is kept if ANY of the following are true:
      1. It is <init> or <clinit>  (always_keep_init=True, default)
      2. It contains the hardcoded pkg_string in a const-string instruction
      3. Its name matches one of chain_method_names (from the propagation trace)
      4. It invokes a security-tagged call

    Parameters
    ----------
    smali_path        : Path to the .smali file
    pkg_string        : The hardcoded package/property string to anchor on
                        (e.g. "com.miui.analytics")
    chain_method_names: Method names (bare, no signature) from the propagation
                        trace callers/callees. Can be None.
    always_keep_init  : Keep <init> and <clinit> for class context (default True)
    """
    text = smali_path.read_text(errors="replace")
    header_lines, field_lines, all_methods = parse_smali_methods(text)

    # Normalise chain method names for matching (strip class prefix if present)
    chain_names: set[str] = set()
    for raw in (chain_method_names or []):
        # "AccessibilityManagerService.updateServicesLocked()" → "updateServicesLocked"
        bare = raw.strip()
        bare = re.sub(r"^.*\.", "", bare)   # strip class prefix
        bare = re.sub(r"\(.*$", "", bare)   # strip signature
        bare = bare.strip("<> ")
        if bare:
            chain_names.add(bare)

    # Derive class name from path for display
    class_name = str(smali_path).replace("/", ".").replace("\\", ".")
    if ".smali" in class_name:
        class_name = class_name[:class_name.rfind(".smali")]
    # Trim leading path noise
    for marker in ("smali.", "classes."):
        idx = class_name.find(marker)
        if idx != -1:
            class_name = class_name[idx + len(marker):]

    slim = SlimSmali(
        class_name=class_name,
        source_path=smali_path,
        header_lines=[l.rstrip() for l in header_lines],
        field_lines=[l.rstrip() for l in field_lines],
    )

    for method in all_methods:
        method.analyse(pkg_string)

        # Keep decisions are based purely on structure — NOT on whether our
        # substring patterns fire. The tag patterns are annotation hints only.
        # This ensures novel or unanticipated OEM patterns are never silently dropped.
        keep_reason = None

        if always_keep_init and method.is_init:
            keep_reason = "init"

        elif method.has_pkg_string:
            # This method directly holds the hardcoded package string
            keep_reason = "anchor"

        elif chain_names and method.name in chain_names:
            # This method appears in the propagation call chain
            keep_reason = "chain"

        # Note: we intentionally do NOT keep methods purely because they match
        # a SEC_TAG_PATTERN. Tags are annotation only — Claude decides relevance.

        if keep_reason:
            slim.kept_methods.append(method)
            if method.has_pkg_string:
                slim.pkg_string_methods.append(method.name)
            # Annotate with any tags found (for Claude's reference, not for filtering)
            for tag in method.all_tags:
                slim.tagged_methods.setdefault(tag, []).append(method.name)
        else:
            slim.dropped_count += 1

    return slim


# ---------------------------------------------------------------------------
# Multi-class loader (used by claude_hotspot_validator.py)
# ---------------------------------------------------------------------------

def build_slim_context(
    class_names: list[str],
    smali_dir: Path,
    pkg_string: str,
    chain_method_names: Optional[list[str]] = None,
    *,
    max_classes: int = 5,
    max_chars_per_class: int = 6000,
    max_total_chars: int = 20000,
) -> tuple[str, list[dict]]:
    """
    Load and slim smali files for a list of class names.

    Returns
    -------
    (combined_text, manifest)

    combined_text  : The rendered slim smali files joined together,
                     capped at max_total_chars.
    manifest       : List of dicts describing what was found/loaded,
                     suitable for --print-context output.
    """
    manifest: list[dict] = []
    parts: list[str] = []
    total_chars = 0

    for cls in class_names[:max_classes]:
        path = _resolve_smali_path(cls, smali_dir)
        entry: dict = {"class": cls, "path": str(path) if path else None}

        if not path:
            entry["status"] = "NOT_FOUND"
            entry["searched"] = str(smali_dir / (cls.replace(".", "/") + ".smali"))
            manifest.append(entry)
            continue

        try:
            slim = extract_slim_smali(path, pkg_string, chain_method_names)
        except Exception as e:
            entry["status"] = f"PARSE_ERROR: {e}"
            manifest.append(entry)
            continue

        rendered = slim.render()
        if len(rendered) > max_chars_per_class:
            rendered = rendered[:max_chars_per_class] + f"\n# ... [trimmed at {max_chars_per_class} chars]"

        entry["status"]           = "OK"
        entry["kept_methods"]     = len(slim.kept_methods)
        entry["dropped_methods"]  = slim.dropped_count
        entry["anchor_methods"]   = slim.pkg_string_methods
        entry["security_tags"]    = {tag: methods for tag, methods in slim.tagged_methods.items()}
        entry["rendered_chars"]   = len(rendered)
        entry["summary"]          = slim.summary()
        manifest.append(entry)

        if total_chars + len(rendered) <= max_total_chars:
            parts.append(rendered)
            total_chars += len(rendered)
        else:
            remaining = max_total_chars - total_chars
            if remaining > 500:
                parts.append(rendered[:remaining] + "\n# ... [budget exhausted]")
            entry["status"] = "TRUNCATED_BUDGET"
            break

    return "\n\n".join(parts), manifest


# ---------------------------------------------------------------------------
# Path resolver
# ---------------------------------------------------------------------------

def _resolve_smali_path(class_name: str, smali_dir: Path) -> Optional[Path]:
    """
    Find the .smali file for a class name by searching all JAR subdirectories.

    smali_dir layout (produced by step2_decompile_jars.sh):
      smali_dir/
        services/
          com/android/server/pm/PackageManagerService.smali
        framework/
          android/os/Binder.smali
    """
    clean = class_name.strip()
    # Smali descriptor: Lcom/foo/Bar; → com.foo.Bar
    if clean.startswith("L") and clean.endswith(";"):
        clean = clean[1:-1].replace("/", ".")
    # Strip method signature: <com.foo.Bar: void m()> → com.foo.Bar
    m = re.match(r"<?([\w.$]+)\s*:", clean)
    if m:
        clean = m.group(1)
    # Use outer class for file lookup (Bar$Inner → Bar)
    outer = re.split(r"\$", clean)[0]
    rel   = outer.replace(".", "/") + ".smali"

    for subdir in smali_dir.iterdir():
        if not subdir.is_dir():
            continue
        candidate = subdir / rel
        if candidate.exists():
            return candidate
        # Also search one level deeper for jars that use classes1/classes2/etc. layout
        # e.g. smali/framework/classes2/android/os/Foo.smali
        for subsubdir in subdir.iterdir():
            if not subsubdir.is_dir():
                continue
            candidate = subsubdir / rel
            if candidate.exists():
                return candidate
    return None


# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------

def _truncate(s: str, n: int = 100) -> str:
    return s if len(s) <= n else s[:n] + "…"


# ---------------------------------------------------------------------------
# CLI — quick test / standalone inspection
# ---------------------------------------------------------------------------

if __name__ == "__main__":
    import argparse
    import sys

    ap = argparse.ArgumentParser(
        description="Extract a slim smali file for LLM analysis.")
    ap.add_argument("smali_file",  help="Path to the .smali file")
    ap.add_argument("pkg_string",  help='Hardcoded string to anchor on, e.g. "com.miui.analytics"')
    ap.add_argument("--chain-methods", nargs="*", default=None,
                    help="Method names from the call chain to always keep")
    ap.add_argument("--stats-only", action="store_true",
                    help="Print summary stats only, not the full slim file")
    args = ap.parse_args()

    slim = extract_slim_smali(
        Path(args.smali_file),
        args.pkg_string,
        args.chain_methods,
    )

    if args.stats_only:
        print(slim.summary())
        print(f"\nAnchor methods ({len(slim.pkg_string_methods)}):")
        for m in slim.pkg_string_methods:
            print(f"  {m}")
        print(f"\nSecurity-tagged methods:")
        for tag, methods in sorted(slim.tagged_methods.items()):
            print(f"  {tag}: {', '.join(methods)}")
    else:
        print(slim.render())