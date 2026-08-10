# How to Read Smali and Verify Findings

This guide helps artifact evaluators manually examine the pipeline's evidence and
independently verify confirmed privilege deviations. No prior smali experience is required.

---

## 1. What is Smali?

Smali is a human-readable representation of Dalvik bytecode — the instruction set
used by Android's runtime. Every `.dex` file inside an Android framework JAR can be
disassembled into `.smali` files using [baksmali](https://github.com/JesusFreke/smali).

Think of smali as "Android assembly." It is verbose but follows predictable patterns
that become easy to read with a few rules.

---

## 2. Smali Basics (5-Minute Primer)

### File structure

```smali
.class public Lcom/android/server/spay/Utils;    # fully-qualified class name
.super Ljava/lang/Object;                         # parent class
.source "Utils.java"                               # original Java source file

# Fields
.field private mContext:Landroid/content/Context;

# Methods
.method public static backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    # ... instructions ...
    return v0
.end method
```

### Type descriptors

| Smali | Java |
|-------|------|
| `V` | `void` |
| `Z` | `boolean` |
| `I` | `int` |
| `J` | `long` |
| `Ljava/lang/String;` | `String` |
| `[B` | `byte[]` |
| `Landroid/content/Context;` | `Context` |

### Registers

Smali uses numbered registers instead of named variables:
- `p0`, `p1`, `p2` ... = parameter registers (`p0` = `this` in instance methods)
- `v0`, `v1`, `v2` ... = local registers

### Key instructions

| Instruction | Meaning | Java equivalent |
|-------------|---------|-----------------|
| `const-string v1, "com.foo.bar"` | Load string literal | `String v1 = "com.foo.bar"` |
| `invoke-virtual {v0, v1}, Lcom/Foo;->bar(Ljava/lang/String;)V` | Call instance method | `v0.bar(v1)` |
| `invoke-static {v0}, Lcom/Foo;->baz(I)Z` | Call static method | `Foo.baz(v0)` |
| `invoke-interface {v0, v1}, Lcom/IFoo;->qux(I)V` | Call interface method | `v0.qux(v1)` |
| `move-result v2` | Store return value | `v2 = <result>` |
| `iget v0, p0, Lcom/Foo;->count:I` | Read instance field | `v0 = this.count` |
| `sget-object v0, Lcom/Foo;->list:Ljava/util/ArrayList;` | Read static field | `v0 = Foo.list` |
| `if-eqz v0, :label` | Branch if zero/null | `if (v0 == 0) goto label` |
| `if-nez v0, :label` | Branch if non-zero | `if (v0 != 0) goto label` |
| `if-eq v0, v1, :label` | Branch if equal | `if (v0 == v1) goto label` |

### Reading a method signature

```
Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z
│                                 │                    │                       │                  │ │
│                                 │                    │                       │                  │ └─ return: boolean
│                                 │                    │                       │                  └─── param3: boolean
│                                 │                    │                       └──────────────────── param2: String
│                                 │                    └─────────────────────────────────────────── param1: Context
│                                 └──────────────────────────────────────────────────────────────── method name
└────────────────────────────────────────────────────────────────────────────────────────────────── class
```

In Java: `boolean Utils.backgroundWhitelist(Context p0, String p1, boolean p2)`

---

## 3. What the Pipeline Finds

The pipeline looks for **hardcoded third-party package names** inside Android framework
smali code. When the framework contains code like:

```smali
const-string v2, "com.samsung.android.spayfw"
invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_43      # if package matches, jump to privilege grant
```

...and the jump target grants a privilege (permission, background execution, etc.),
the pipeline flags it as a **privilege deviation**: the OS is treating a named package
differently from all other apps.

### Deviation categories (confirmed_tag)

| Tag | What it means | What to look for in smali |
|-----|---------------|---------------------------|
| `PERM_GRANT` | Runtime permission granted by name | `grantRuntimePermission()`, `backgroundAllowlistUid()`, `setAppOpMode()` |
| `PKG_QUERY` | Package queried / existence checked | `getPackageInfo()`, `getApplicationInfo()`, `resolveActivity()` |
| `PKG_MGMT` | Package install/uninstall/update control | `installExistingPackage()`, `setApplicationUninstallationDisabled()` |
| `UID_CHECK` | Behavior gated on specific UID | `Binder.getCallingUid()`, `if-eq vN, <uid>` |
| `SIG_CHECK` | Signature verification for named package | `checkSignatures()`, `getPackageInfo(... GET_SIGNATURES)` |
| `SYS_PROP_READ` | System property read gated on package | `SystemProperties.get()` conditional on package name |
| `APPOPS` | AppOps mode set for specific package | `setMode()`, `setUidMode()` with hardcoded package |

---

## 4. Walkthrough: Verifying a Real Finding

Let's manually verify this finding from the Samsung Galaxy A22 5G:

```
Package:       com.samsung.android.spayfw
Verdict:       CONFIRMED_HIGH
Tag:           PERM_GRANT
```

### Step 1: Find the smali file

The propagation report tells us the relevant class:
```
JAR:   service-samsung-payment
Class: com.android.server.spay.Utils
```

Navigate to the smali output:
```bash
find smali/ -path "*/spay/Utils.smali"
# → smali/service-samsung-payment/com/android/server/spay/Utils.smali
```

### Step 2: Find the hardcoded package name

Search for the flagged package:
```bash
grep -n "com.samsung.android.spayfw" smali/service-samsung-payment/com/android/server/spay/Utils.smali
```

### Step 3: Read the surrounding code

Here is the actual smali from `Utils.backgroundWhitelist()`:

```smali
.method public static backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 8

    # ... logging omitted ...

    if-eqz p1, :cond_103              # if package is null, skip

    const-string v2, "com.samsung.android.spay"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3

    if-nez v3, :cond_43               # ← match "com.samsung.android.spay" → grant

    const-string v3, "com.samsung.android.spayfw"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3

    if-nez v3, :cond_43               # ← match "com.samsung.android.spayfw" → grant

    const-string v3, "com.samsung.android.spaymini"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3

    if-nez v3, :cond_43               # ← match "spaymini" → grant

    # ... more packages checked ...

    goto/16 :goto_103                  # no match → skip (return false)
```

**Reading this**: The method takes a package name (`p1`) and compares it against a
hardcoded allowlist. If it matches `com.samsung.android.spayfw` (or siblings), execution
jumps to `:cond_43`.

### Step 4: Follow the jump target

What happens at `:cond_43`?

```smali
    :cond_43
    # ... optional signature check via hasValidSignature() ...

    :cond_70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(...)...
    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I    # get the app's UID

    # ... UID validation ...

    :cond_b7
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;
    move-result-object v2

    invoke-interface {v2, p0}, Landroid/app/IActivityManager;->backgroundAllowlistUid(I)V
    #                                                          ^^^^^^^^^^^^^^^^^^^^^^^^
    #                    THIS IS THE PRIVILEGE GRANT — adds the UID to the background
    #                    execution allowlist, bypassing Android's battery optimization
```

### Step 5: Confirm the deviation

The code flow is:
1. Package name `"com.samsung.android.spayfw"` is hardcoded in a `const-string`
2. It is compared with `String.equals()` — a direct name match
3. On match, the package's UID is looked up via `getApplicationInfo()`
4. The UID is passed to `ActivityManager.backgroundAllowlistUid()` — **granting
   background execution privilege**
5. This happens inside the system server (`service-samsung-payment.jar`), not in the
   app itself — the OS is granting the privilege unilaterally

**Verdict: CONFIRMED_HIGH / PERM_GRANT** — the Samsung framework grants background
execution to `com.samsung.android.spayfw` by hardcoded package name, bypassing the
standard background restriction model that applies to all other apps.

---

## 5. Common Patterns to Recognize

### Pattern A: Package name allowlist (most common)

```smali
const-string v0, "com.vendor.app"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :grant_label       # name match → special treatment
```

Java equivalent:
```java
if ("com.vendor.app".equals(packageName)) {
    // grant privilege
}
```

### Pattern B: Array/list-based allowlist

```smali
const-string v0, "com.vendor.app1"
aput-object v0, v2, v3         # store in array

# later:
invoke-static {v2, p1}, Ljava/util/Arrays;->asList(...)...
invoke-virtual {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
```

Java equivalent:
```java
String[] allowlist = {"com.vendor.app1", "com.vendor.app2"};
if (Arrays.asList(allowlist).contains(packageName)) { ... }
```

### Pattern C: Permission grant via PackageManager

```smali
invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->grantRuntimePermission(
    Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
# v1 = package name, v2 = permission string
```

### Pattern D: AppOps bypass

```smali
invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->setMode(IIILjava/lang/String;)V
# Sets an AppOps mode (e.g., MODE_ALLOWED) for a specific UID
```

### Pattern E: UID-gated early return

```smali
invoke-static {}, Landroid/os/Binder;->getCallingUid()I
move-result v0
const/16 v1, 0x3e8            # UID 1000 = system
if-eq v0, v1, :skip_check     # system UID → bypass permission check
```

---

## 6. How to Navigate the Evidence

### Pipeline output files

| File | Contents | How to use it |
|------|----------|---------------|
| `triage.json` | Phase 1 results (all candidates) | Find which packages were flagged and why |
| `claude_validated.json` | Phase 2 confirmed results | Look at `verdict`, `confirmed_tag`, `privacy_impact`, `attack_surface` |
| `step6_propagation/per_package/*.txt` | Propagation traces | Human-readable call chains with callers/callees |
| `smali/<jar>/<class>.smali` | Raw disassembled code | Ground truth — verify any claim here |

### Verification workflow

1. Pick a finding from `claude_validated.json` (filter by `verdict: CONFIRMED_HIGH`)
2. Open its propagation trace in `step6_propagation/per_package/<package>.txt`
3. Note the JAR, class, and method listed in the occurrence
4. Open the smali file: `smali/<jar>/<class path>.smali`
5. Search for the hardcoded package name (`const-string ... "<package>"`)
6. Trace what happens when the name matches — follow the `if-nez`/`if-eqz` branch
7. Identify the privilege-granting API call (see table in Section 3)

### Useful grep commands

```bash
# Find all occurrences of a package name in smali
grep -rn "com.vendor.app" smali/

# Find permission grant calls
grep -rn "grantRuntimePermission" smali/

# Find background allowlist calls
grep -rn "backgroundAllowlistUid\|backgroundWhitelist" smali/

# Find AppOps modifications
grep -rn "setMode\|setUidMode" smali/ | grep -i appops

# Find all hardcoded package names in a specific framework JAR
grep -rn 'const-string.*"com\.' smali/services/ | grep -v "android\." | head -30
```

---

## 7. Comparing with AOSP

To verify that a behavior is OEM-specific and not part of stock Android:

1. Find the class in [AOSP source](https://cs.android.com/) (search by class name)
2. If the class **does not exist in AOSP** → it is entirely vendor-added
3. If the class exists but the **hardcoded package check is absent** → vendor modification
4. Framework JARs with vendor-specific prefixes (e.g., `service-samsung-*`) are always
   vendor-added — they have no AOSP equivalent

For the example above, `com.android.server.spay.PaymentManagerService` does not exist
in AOSP at all — the entire `service-samsung-payment.jar` is Samsung-specific.

---

## 8. Quick Reference Card

```
const-string vN, "..."    → hardcoded string (package name)
invoke-virtual/static     → method call (look at target class + method name)
if-eqz / if-nez           → conditional branch (follow both paths)
move-result vN             → capture return value
iget / sget                → read field (instance / static)
iput / sput                → write field
return / return-void       → method exit

Lcom/foo/Bar;              → class com.foo.Bar
->methodName(params)rettype → method signature
V=void  Z=bool  I=int  J=long  [=array  L...;=object
```
