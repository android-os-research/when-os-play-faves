#!/usr/bin/env python3
from __future__ import annotations

import json
import re
import subprocess
from dataclasses import dataclass, asdict, field
from datetime import datetime, timezone
from typing import Any, Optional


# ----------------------------
# Data models
# ----------------------------

@dataclass
class PlayStoreResult:
    found: bool
    package: str
    title: Optional[str] = None
    developer: Optional[str] = None
    url: Optional[str] = None
    version: Optional[str] = None
    last_updated_on: Optional[str] = None
    score: Optional[float] = None
    installs: Optional[str] = None
    error: Optional[str] = None
    raw: Optional[dict[str, Any]] = None


@dataclass
class WildSourceHit:
    source: str
    found: bool
    package: str
    title: Optional[str] = None
    urls: list[str] = field(default_factory=list)
    error: Optional[str] = None


@dataclass
class WildScanResult:
    package: str
    checked_at_utc: str
    play_store: PlayStoreResult
    wild_hits: list[WildSourceHit] = field(default_factory=list)

    @property
    def exists_on_play_store(self) -> bool:
        return bool(self.play_store.found)

    @property
    def exists_in_wild(self) -> bool:
        return any(hit.found for hit in self.wild_hits)

    @property
    def exists_anywhere(self) -> bool:
        return self.exists_on_play_store or self.exists_in_wild

    def to_dict(self) -> dict[str, Any]:
        return asdict(self)

    def to_json(self, indent: int = 2) -> str:
        return json.dumps(self.to_dict(), indent=indent, ensure_ascii=False)


# ----------------------------
# Google Play adapter
# ----------------------------

def lookup_google_play(package: str, lang: str = "en", country: str = "us") -> PlayStoreResult:
    """
    Lookup an app on Google Play by package name using google_play_scraper.
    Returns found=False if not found / not accessible in region / blocked.
    """
    try:
        from google_play_scraper import app as gp_app
    except Exception as e:
        return PlayStoreResult(found=False, package=package, error=f"google_play_scraper import failed: {e}")

    try:
        data = gp_app(package, lang=lang, country=country)
        return PlayStoreResult(
            found=True,
            package=package,
            title=data.get("title"),
            developer=data.get("developer"),
            url=data.get("url"),
            version=data.get("version"),
            last_updated_on=data.get("lastUpdatedOn"),
            score=data.get("score"),
            installs=data.get("installs"),
            raw=data,
        )
    except Exception as e:
        return PlayStoreResult(found=False, package=package, error=str(e))


# ----------------------------
# apksearch CLI adapter
# ----------------------------

ANSI_RE = re.compile(r"\x1B\[[0-?]*[ -/]*[@-~]")

SOURCE_LINE_RE = re.compile(r"^\s*([A-Za-z0-9_]+)\s*:\s*(.*)$")
FOUND_RE = re.compile(r"^Found\s+(.*)$", re.IGNORECASE)
NO_RESULTS_RE = re.compile(r"No\s+Results", re.IGNORECASE)
LINK_RE = re.compile(r"Link:\s*(\S+)")



def lookup_wild_sources_via_apksearch_cli(
    package: str,
    *,
    python_cmd: str = "python3",
    timeout_sec: int = 60,
) -> list["WildSourceHit"]:
    """
    Runs:
        python3 -m apksearch <package>

    Robust parsing:
      - reads BOTH stdout and stderr (apksearch may print there)
      - removes ANSI color codes
      - supports multiple links per source
    """
    cmd = [python_cmd, "-m", "apksearch", package]

    try:
        proc = subprocess.run(
            cmd,
            capture_output=True,
            text=True,
            timeout=timeout_sec,
            check=False,
        )
    except Exception as e:
        return [WildSourceHit(source="apksearch", found=False, package=package, error=f"failed to run {cmd}: {e}")]

    # IMPORTANT: apksearch may print to stderr
    output = ""
    if proc.stdout:
        output += proc.stdout
    if proc.stderr:
        output += "\n" + proc.stderr

    if not output.strip():
        return [WildSourceHit(source="apksearch", found=False, package=package, error="apksearch produced no output")]

    results_by_source: dict[str, WildSourceHit] = {}
    current_source: Optional[str] = None

    for raw_line in output.splitlines():
        line = ANSI_RE.sub("", raw_line).strip()
        if not line:
            continue

        m = SOURCE_LINE_RE.match(line)
        if m:
            src = m.group(1)
            rest = m.group(2).strip()
            current_source = src

            hit = results_by_source.get(src) or WildSourceHit(source=src, found=False, package=package)
            results_by_source[src] = hit

            if NO_RESULTS_RE.search(rest):
                hit.found = False
                hit.title = None
            else:
                fm = FOUND_RE.match(rest)
                if fm:
                    hit.found = True
                    hit.title = fm.group(1).strip()

            continue

        lm = LINK_RE.search(line)
        if lm and current_source:
            url = lm.group(1).strip()
            hit = results_by_source.get(current_source)
            if hit and url not in hit.urls:
                hit.urls.append(url)

    hits = list(results_by_source.values())
    hits.sort(key=lambda h: h.source.lower())
    return hits


# ----------------------------
# Main scanner tool
# ----------------------------

def scan_package(
    package: str,
    *,
    lang: str = "en",
    country: str = "us",
    python_cmd_for_apksearch: str = "python3",
    apksearch_timeout_sec: int = 60,
    include_wild_sources: bool = True,
    also_try_lowercase: bool = False,
) -> WildScanResult:
    """
    One-call scan:
      - Google Play (google_play_scraper)
      - Wild sources (python3 -m apksearch)

    also_try_lowercase=True will re-check the lowercase package variant if different.
    """
    package = package.strip()
    checked_at = datetime.now(timezone.utc).isoformat()

    play = lookup_google_play(package, lang=lang, country=country)

    wild_hits: list[WildSourceHit] = []
    if include_wild_sources:
        wild_hits = lookup_wild_sources_via_apksearch_cli(
            package,
            python_cmd=python_cmd_for_apksearch,
            timeout_sec=apksearch_timeout_sec,
        )

    # optional lowercase fallback
    if also_try_lowercase and package.lower() != package:
        pkg2 = package.lower()

        # Only override play if original not found but lowercase is found
        play2 = lookup_google_play(pkg2, lang=lang, country=country)
        if (not play.found) and play2.found:
            play = play2

        if include_wild_sources:
            hits2 = lookup_wild_sources_via_apksearch_cli(
                pkg2,
                python_cmd=python_cmd_for_apksearch,
                timeout_sec=apksearch_timeout_sec,
            )
            # merge sources (prefer original casing results if already present)
            seen = {h.source.lower() for h in wild_hits}
            for h in hits2:
                if h.source.lower() not in seen:
                    wild_hits.append(h)

            wild_hits.sort(key=lambda h: h.source.lower())

    return WildScanResult(
        package=package,
        checked_at_utc=checked_at,
        play_store=play,
        wild_hits=wild_hits,
    )


# ----------------------------
# Optional CLI usage
# ----------------------------

if __name__ == "__main__":
    import argparse

    p = argparse.ArgumentParser(description="Scan Android package presence on Google Play + wild sources via apksearch CLI.")
    p.add_argument("package", help="Android package name")
    p.add_argument("--lang", default="en")
    p.add_argument("--country", default="us")
    p.add_argument("--python-cmd", default="python3", help="Python command to run apksearch (default: python3)")
    p.add_argument("--apksearch-timeout", type=int, default=60)
    p.add_argument("--no-wild", action="store_true")
    p.add_argument("--also-try-lowercase", action="store_true")
    args = p.parse_args()

    res = scan_package(
        args.package,
        lang=args.lang,
        country=args.country,
        python_cmd_for_apksearch=args.python_cmd,
        apksearch_timeout_sec=args.apksearch_timeout,
        include_wild_sources=not args.no_wild,
        also_try_lowercase=args.also_try_lowercase,
    )
    print(res.to_json(indent=2))