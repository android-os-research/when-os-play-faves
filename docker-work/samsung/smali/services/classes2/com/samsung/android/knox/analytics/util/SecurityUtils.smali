.class public Lcom/samsung/android/knox/analytics/util/SecurityUtils;
.super Ljava/lang/Object;
.source "SecurityUtils.java"


# static fields
.field public static final IS_ENG:Z

.field public static final IS_SHIP:Z

.field public static final SERVICE_KEEPER_METHOD_NAME:Ljava/lang/String; = "log"

.field public static final SERVICE_KEEPER_SERVICE_NAME:Ljava/lang/String; = "KnoxAnalytics"

.field public static final TAG:Ljava/lang/String;

.field public static final WHITELIST_FOR_TEST:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/util/SecurityUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "ro.build.type"

    .line 18
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->IS_ENG:Z

    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    .line 19
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->IS_SHIP:Z

    const-string v1, "com.android.frameworks.knoxservicestests"

    const-string v2, "com.samsung.android.knox.analytics.testapp"

    const-string v3, "com.samsung.android.knox.kpu.demo"

    const-string v4, "com.samsung.android.knox.kpu.poc"

    const-string v5, "com.samsung.knoxautomation"

    const-string v6, "android"

    const-string/jumbo v7, "root"

    .line 23
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->WHITELIST_FOR_TEST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enforceCallingPermissionForLog(Landroid/content/Context;II)V
    .registers 5

    .line 66
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_e

    .line 68
    sget-object p0, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->TAG:Ljava/lang/String;

    const-string p1, "enforceCallingPermissionForLog(): MyPid"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    const-string v0, "com.samsung.android.knox.permission.KNOX_ANALYTICS_INTERNAL"

    .line 72
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6b

    const-string v0, "com.samsung.android.knox.permission.KNOX_SOLUTION_SDK"

    .line 73
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_6b

    .line 88
    :cond_1f
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    .line 89
    invoke-static {p0}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->isPackageWhitelisted(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2e

    return-void

    .line 94
    :cond_2e
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Security Exception Occurred while pid["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] with uid["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] trying to access methodName ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "KnoxAnalytics"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] in ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "log"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] service"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6b
    :goto_6b
    return-void
.end method

.method public static final enforceInternalOnly(Ljava/lang/String;I)V
    .registers 5

    .line 52
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_e

    .line 54
    sget-object p0, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->TAG:Ljava/lang/String;

    const-string p1, "enforceInternalOnly(): MyPid"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 57
    :cond_e
    invoke-static {p0}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->isPackageWhitelisted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 61
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Security Exception Occurred while caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", pid = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " tried to access Content Provider"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static enforcePackageNameForContentProvider(Ljava/lang/String;I)V
    .registers 4

    .line 34
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_e

    .line 36
    sget-object p0, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->TAG:Ljava/lang/String;

    const-string p1, "enforcePackageNameForContentProvider(): MyPid"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    const-string p1, "com.samsung.android.knox.analytics.uploader"

    .line 39
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 40
    sget-object p0, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->TAG:Ljava/lang/String;

    const-string p1, "enforcePackageNameForContentProvider(): allowed"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 43
    :cond_1e
    invoke-static {p0}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->isPackageWhitelisted(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_25

    return-void

    .line 47
    :cond_25
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Security Exception Occurred while caller "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " tried to access Content Provider"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static isPackageWhitelisted(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 104
    :cond_4
    sget-boolean v1, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->IS_SHIP:Z

    if-eqz v1, :cond_d

    sget-boolean v1, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->IS_ENG:Z

    if-nez v1, :cond_d

    return v0

    .line 108
    :cond_d
    sget-object v1, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->WHITELIST_FOR_TEST:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_11
    if-ge v3, v2, :cond_36

    aget-object v4, v1, v3

    .line 109
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 110
    sget-object v0, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Allowing whitelisted package for tests: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_36
    return v0
.end method
