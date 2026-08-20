.class public Lcom/samsung/android/core/pm/AbiAppHelper;
.super Ljava/lang/Object;
.source "AbiAppHelper.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ApplicationPackageManager"


# instance fields
.field private blacklist is32bitAppRunningInAbi64:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_14

    .line 21
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    iput-boolean v0, p0, Lcom/samsung/android/core/pm/AbiAppHelper;->is32bitAppRunningInAbi64:Z

    .line 22
    return-void
.end method


# virtual methods
.method public blacklist canAccessApkFile(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "targetAppInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 58
    if-nez p2, :cond_10

    .line 60
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x400

    .line 61
    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_c} :catch_e

    move-object p2, v0

    .line 64
    goto :goto_10

    .line 62
    :catch_e
    move-exception v0

    .line 63
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 p2, 0x0

    .line 67
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_10
    :goto_10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/core/pm/AbiAppHelper;->canAccessApkFile(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method public blacklist canAccessApkFile(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)Z
    .registers 11
    .param p1, "callerInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "targetInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 31
    iget-boolean v0, p0, Lcom/samsung/android/core/pm/AbiAppHelper;->is32bitAppRunningInAbi64:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 32
    return v1

    .line 35
    :cond_6
    if-eqz p1, :cond_30

    if-nez p2, :cond_b

    goto :goto_30

    .line 40
    :cond_b
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 43
    return v1

    .line 46
    :cond_12
    const/4 v0, 0x0

    .line 47
    .local v0, "lowerThan2gb":Z
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "apkPath":Ljava/lang/String;
    if-eqz v2, :cond_2f

    .line 49
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v3, "apkFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    div-long/2addr v4, v6

    .line 51
    .local v4, "fileSizeInMegaByte":J
    const-wide/16 v6, 0x7d0

    cmp-long v6, v4, v6

    if-gez v6, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    move v0, v1

    .line 53
    .end local v3    # "apkFile":Ljava/io/File;
    .end local v4    # "fileSizeInMegaByte":J
    :cond_2f
    return v0

    .line 38
    .end local v0    # "lowerThan2gb":Z
    .end local v2    # "apkPath":Ljava/lang/String;
    :cond_30
    :goto_30
    return v1
.end method
