.class public Lcom/android/server/webkit/WebViewUpdateServiceImpl;
.super Ljava/lang/Object;
.source "WebViewUpdateServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;,
        Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewPackageMissingException;
    }
.end annotation


# static fields
.field public static final MULTIPROCESS_SETTING_OFF_VALUE:I = -0x80000000

.field public static final MULTIPROCESS_SETTING_ON_VALUE:I = 0x7fffffff

.field public static final NS_PER_MS:J = 0xf4240L

.field public static final NUMBER_OF_RELROS_UNKNOWN:I = 0x7fffffff

.field public static final TAG:Ljava/lang/String; = "WebViewUpdateServiceImpl"

.field public static final VALIDITY_INCORRECT_SDK_VERSION:I = 0x1

.field public static final VALIDITY_INCORRECT_SIGNATURE:I = 0x3

.field public static final VALIDITY_INCORRECT_VERSION_CODE:I = 0x2

.field public static final VALIDITY_NO_LIBRARY_FLAG:I = 0x4

.field public static final VALIDITY_OK:I = 0x0

.field public static final WAIT_TIMEOUT_MS:I = 0x3e8


# instance fields
.field public mAnyWebViewInstalled:Z

.field public final mContext:Landroid/content/Context;

.field public mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

.field public final mLock:Ljava/lang/Object;

.field public mMinimumVersionCode:J

.field public mNumRelroCreationsFinished:I

.field public mNumRelroCreationsStarted:I

.field public final mSystemInterface:Lcom/android/server/webkit/SystemInterface;

.field public mWebViewPackageDirty:Z


# direct methods
.method public static synthetic $r8$lambda$GfOd5F9zlirnEiPtEI33ofMPlZQ(Lcom/android/server/webkit/WebViewUpdateServiceImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->startZygoteWhenReady()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/webkit/SystemInterface;)V
    .registers 5

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 94
    iput-wide v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mMinimumVersionCode:J

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsStarted:I

    .line 98
    iput v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsFinished:I

    .line 100
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewPackageDirty:Z

    .line 101
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mAnyWebViewInstalled:Z

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mLock:Ljava/lang/Object;

    .line 111
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    return-void
.end method

.method public static getFallbackProvider([Landroid/webkit/WebViewProviderInfo;)Landroid/webkit/WebViewProviderInfo;
    .registers 5

    .line 615
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget-object v2, p0, v1

    .line 616
    iget-boolean v3, v2, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    if-eqz v3, :cond_b

    return-object v2

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInvalidityReason(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-eq p0, v0, :cond_12

    const/4 v0, 0x4

    if-eq p0, v0, :cond_f

    const-string p0, "Unexcepted validity-reason"

    return-object p0

    :cond_f
    const-string p0, "No WebView-library manifest flag"

    return-object p0

    :cond_12
    const-string p0, "Incorrect signature"

    return-object p0

    :cond_15
    const-string p0, "Version code too low"

    return-object p0

    :cond_18
    const-string p0, "SDK version too low"

    return-object p0
.end method

.method public static isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/webkit/UserPackage;",
            ">;)Z"
        }
    .end annotation

    .line 459
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/UserPackage;

    .line 460
    invoke-virtual {v0}, Landroid/webkit/UserPackage;->isInstalledPackage()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Landroid/webkit/UserPackage;->isEnabledPackage()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1c
    const/4 p0, 0x0

    return p0

    :cond_1e
    const/4 p0, 0x1

    return p0
.end method

.method public static providerHasValidSignature(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;Lcom/android/server/webkit/SystemInterface;)Z
    .registers 8

    .line 595
    invoke-interface {p2}, Lcom/android/server/webkit/SystemInterface;->systemIsDebuggable()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_8

    return v0

    .line 598
    :cond_8
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p2

    if-eqz p2, :cond_11

    return v0

    .line 601
    :cond_11
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p2

    const/4 v1, 0x0

    if-eq p2, v0, :cond_18

    return v1

    .line 604
    :cond_18
    iget-object p0, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p0

    move v2, v1

    :goto_1c
    if-ge v2, p2, :cond_2e

    aget-object v3, p0, v2

    .line 605
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    return v0

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_2e
    return v1
.end method

.method public static versionCodeGE(JJ)Z
    .registers 6

    const-wide/32 v0, 0x186a0

    .line 552
    div-long/2addr p0, v0

    .line 553
    div-long/2addr p2, v0

    cmp-long p0, p0, p2

    if-ltz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method


# virtual methods
.method public changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 288
    invoke-virtual {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->updateCurrentWebViewPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_9

    const-string p0, ""

    return-object p0

    .line 290
    :cond_9
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final checkIfRelrosDoneLocked()V
    .registers 3

    .line 491
    iget v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsStarted:I

    iget v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsFinished:I

    if-ne v0, v1, :cond_1e

    .line 492
    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewPackageDirty:Z

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    .line 493
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewPackageDirty:Z

    .line 497
    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 498
    invoke-virtual {p0, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_14
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewPackageMissingException; {:try_start_d .. :try_end_14} :catch_15

    goto :goto_1e

    :catch_15
    const/4 v0, 0x0

    .line 500
    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    goto :goto_1e

    .line 507
    :cond_19
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public final dumpAllPackageInformationLocked(Ljava/io/PrintWriter;)V
    .registers 14

    .line 685
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    const-string v1, "  WebView packages:"

    .line 686
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 687
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_a2

    aget-object v4, v0, v3

    .line 688
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    .line 689
    invoke-interface {v5, v6, v4}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v5

    .line 691
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/webkit/UserPackage;

    invoke-virtual {v5}, Landroid/webkit/UserPackage;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v5

    const/4 v6, 0x1

    if-nez v5, :cond_37

    new-array v5, v6, [Ljava/lang/Object;

    .line 693
    iget-object v4, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    aput-object v4, v5, v2

    const-string v4, "    %s is NOT installed."

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9e

    .line 697
    :cond_37
    invoke-virtual {p0, v4, v5}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I

    move-result v7

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Object;

    .line 698
    iget-object v10, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v10, v9, v2

    .line 701
    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v6

    iget-object v10, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 702
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    const-string/jumbo v10, "versionName: %s, versionCode: %d, targetSdkVersion: %d"

    .line 698
    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    if-nez v7, :cond_87

    .line 704
    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v10, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    .line 705
    invoke-interface {v7, v10, v4}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v4

    .line 704
    invoke-static {v4}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v4

    new-array v7, v8, [Ljava/lang/Object;

    .line 706
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v5, v7, v2

    aput-object v9, v7, v6

    if-eqz v4, :cond_79

    const-string v4, ""

    goto :goto_7b

    :cond_79
    const-string v4, "NOT"

    :goto_7b
    aput-object v4, v7, v11

    const-string v4, "    Valid package %s (%s) is %s installed/enabled for all users"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9e

    :cond_87
    new-array v4, v8, [Ljava/lang/Object;

    .line 712
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v5, v4, v2

    aput-object v9, v4, v6

    .line 715
    invoke-static {v7}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getInvalidityReason(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const-string v5, "    Invalid package %s (%s), reason: %s"

    .line 712
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_9e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_e

    :cond_a2
    return-void
.end method

.method public dumpState(Ljava/io/PrintWriter;)V
    .registers 10

    const-string v0, "Current WebView Update Service state"

    .line 648
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Multiprocess enabled: %b"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 649
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isMultiProcessEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 651
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    const/4 v3, 0x2

    if-nez v2, :cond_2a

    const-string v2, "  Current WebView package is null"

    .line 652
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3d

    :cond_2a
    const-string v5, "  Current WebView package (name, version): (%s, %s)"

    new-array v6, v3, [Ljava/lang/Object;

    .line 654
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v7, v6, v4

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v2, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3d
    const-string v2, "  Minimum targetSdkVersion: %d"

    new-array v5, v1, [Ljava/lang/Object;

    const/16 v6, 0x21

    .line 659
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 658
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  Minimum WebView version code: %d"

    new-array v5, v1, [Ljava/lang/Object;

    .line 660
    iget-wide v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mMinimumVersionCode:J

    .line 661
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v4

    .line 660
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  Number of relros started: %d"

    new-array v5, v1, [Ljava/lang/Object;

    .line 662
    iget v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsStarted:I

    .line 663
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 662
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  Number of relros finished: %d"

    new-array v5, v1, [Ljava/lang/Object;

    .line 664
    iget v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsFinished:I

    .line 665
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 664
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  WebView package dirty: %b"

    new-array v5, v1, [Ljava/lang/Object;

    .line 666
    iget-boolean v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewPackageDirty:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  Any WebView package installed: %b"

    new-array v5, v1, [Ljava/lang/Object;

    .line 667
    iget-boolean v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mAnyWebViewInstalled:Z

    .line 668
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    .line 667
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_af
    .catchall {:try_start_1f .. :try_end_af} :catchall_d7

    .line 671
    :try_start_af
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v2

    const-string v5, "  Preferred WebView package (name, version): (%s, %s)"

    new-array v3, v3, [Ljava/lang/Object;

    .line 672
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v6, v3, v4

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v2, v3, v1

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_c6
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewPackageMissingException; {:try_start_af .. :try_end_c6} :catch_c7
    .catchall {:try_start_af .. :try_end_c6} :catchall_d7

    goto :goto_d2

    :catch_c7
    :try_start_c7
    const-string v1, "  Preferred WebView package: none"

    new-array v2, v4, [Ljava/lang/Object;

    .line 677
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    :goto_d2
    invoke-virtual {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->dumpAllPackageInformationLocked(Ljava/io/PrintWriter;)V

    .line 681
    monitor-exit v0

    return-void

    :catchall_d7
    move-exception p0

    monitor-exit v0
    :try_end_d9
    .catchall {:try_start_c7 .. :try_end_d9} :catchall_d7

    throw p0
.end method

.method public enableMultiProcess(Z)V
    .registers 6

    .line 635
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 636
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_e

    const v3, 0x7fffffff

    goto :goto_10

    :cond_e
    const/high16 v3, -0x80000000

    :goto_10
    invoke-interface {v1, v2, v3}, Lcom/android/server/webkit/SystemInterface;->setMultiProcessSetting(Landroid/content/Context;I)V

    .line 638
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v1, p1}, Lcom/android/server/webkit/SystemInterface;->notifyZygote(Z)V

    if-eqz v0, :cond_21

    .line 640
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object p1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/android/server/webkit/SystemInterface;->killPackageDependents(Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public final findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewPackageMissingException;
        }
    .end annotation

    .line 414
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getValidWebViewPackagesAndInfos()[Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;

    move-result-object v0

    .line 416
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/server/webkit/SystemInterface;->getUserChosenWebViewProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 420
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v4, v2, :cond_33

    aget-object v5, v0, v4

    .line 421
    iget-object v6, v5, Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    iget-object v6, v6, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 423
    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    iget-object v8, v5, Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    .line 424
    invoke-interface {v6, v7, v8}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v6

    .line 426
    invoke-static {v6}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 427
    iget-object p0, v5, Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    return-object p0

    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 435
    :cond_33
    array-length v1, v0

    move v2, v3

    :goto_35
    if-ge v2, v1, :cond_53

    aget-object v4, v0, v2

    .line 436
    iget-object v5, v4, Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    iget-boolean v6, v5, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v6, :cond_50

    .line 438
    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    .line 439
    invoke-interface {v6, v7, v5}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v5

    .line 441
    invoke-static {v5}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 442
    iget-object p0, v4, Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    return-object p0

    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 448
    :cond_53
    iput-boolean v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mAnyWebViewInstalled:Z

    .line 449
    new-instance p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewPackageMissingException;

    const-string v0, "Could not find a loadable WebView package"

    invoke-direct {p0, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewPackageMissingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;
    .registers 2

    .line 472
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 473
    :try_start_3
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 474
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getMinimumVersionCode()J
    .registers 11

    .line 569
    iget-wide v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mMinimumVersionCode:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_9

    return-wide v0

    :cond_9
    const-wide/16 v0, -0x1

    .line 574
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v4}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_13
    if-ge v6, v5, :cond_2f

    aget-object v7, v4, v6

    .line 575
    iget-boolean v8, v7, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v8, :cond_2c

    .line 577
    :try_start_1b
    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v7, v7, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 578
    invoke-interface {v8, v7}, Lcom/android/server/webkit/SystemInterface;->getFactoryPackageVersion(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_23} :catch_2c

    cmp-long v9, v0, v2

    if-ltz v9, :cond_2b

    cmp-long v9, v7, v0

    if-gez v9, :cond_2c

    :cond_2b
    move-wide v0, v7

    :catch_2c
    :cond_2c
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 588
    :cond_2f
    iput-wide v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mMinimumVersionCode:J

    return-wide v0
.end method

.method public getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .registers 4

    .line 371
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getValidWebViewPackagesAndInfos()[Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;

    move-result-object p0

    .line 372
    array-length v0, p0

    new-array v0, v0, [Landroid/webkit/WebViewProviderInfo;

    const/4 v1, 0x0

    .line 374
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_14

    .line 375
    aget-object v2, p0, v1

    iget-object v2, v2, Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    return-object v0
.end method

.method public final getValidWebViewPackagesAndInfos()[Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;
    .registers 7

    .line 391
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    .line 392
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 393
    :goto_c
    array-length v3, v0

    if-ge v2, v3, :cond_2c

    .line 395
    :try_start_f
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    aget-object v4, v0, v2

    .line 396
    invoke-interface {v3, v4}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 397
    aget-object v4, v0, v2

    invoke-virtual {p0, v4, v3}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I

    move-result v4

    if-nez v4, :cond_29

    .line 398
    new-instance v4, Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;

    aget-object v5, v0, v2

    invoke-direct {v4, v5, v3}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;-><init>(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_29} :catch_29

    :catch_29
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 404
    :cond_2c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;

    return-object p0
.end method

.method public getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .registers 1

    .line 468
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {p0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public handleNewUser(I)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 218
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->handleUserChange()V

    return-void
.end method

.method public final handleUserChange()V
    .registers 2

    const/4 v0, 0x0

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->updateCurrentWebViewPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    return-void
.end method

.method public handleUserRemoved(I)V
    .registers 2

    .line 222
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->handleUserChange()V

    return-void
.end method

.method public isMultiProcessEnabled()Z
    .registers 4

    .line 624
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/server/webkit/SystemInterface;->getMultiProcessSetting(Landroid/content/Context;)I

    move-result v0

    .line 625
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {p0}, Lcom/android/server/webkit/SystemInterface;->isMultiProcessDefaultEnabled()Z

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_19

    const/high16 p0, -0x80000000

    if-le v0, p0, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    return v1

    :cond_19
    const p0, 0x7fffffff

    if-lt v0, p0, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    return v1
.end method

.method public notifyRelroCreationCompleted()V
    .registers 3

    .line 236
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_3
    iget v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsFinished:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsFinished:I

    .line 238
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->checkIfRelrosDoneLocked()V

    .line 239
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    .registers 6

    .line 340
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 341
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mAnyWebViewInstalled:Z

    .line 342
    iget v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsStarted:I

    iget v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsFinished:I

    if-ne v2, v3, :cond_22

    .line 343
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    const v1, 0x7fffffff

    .line 348
    iput v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsStarted:I

    const/4 v1, 0x0

    .line 349
    iput v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsFinished:I

    .line 350
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 351
    invoke-interface {v1, p1}, Lcom/android/server/webkit/SystemInterface;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I

    move-result p1

    iput p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsStarted:I

    .line 354
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->checkIfRelrosDoneLocked()V

    goto :goto_24

    .line 356
    :cond_22
    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewPackageDirty:Z

    .line 358
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_36

    .line 362
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isMultiProcessEnabled()Z

    move-result p1

    if-eqz p1, :cond_35

    .line 363
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/webkit/WebViewUpdateServiceImpl;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_35
    return-void

    :catchall_36
    move-exception p0

    .line 358
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public packageStateChanged(Ljava/lang/String;II)V
    .registers 10

    .line 119
    iget-object p2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {p2}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object p2

    array-length p3, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-ge v1, p3, :cond_84

    aget-object v2, p2, v1

    .line 120
    iget-object v3, v2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 122
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 127
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 p1, 0x0

    .line 129
    :try_start_19
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 130
    iget-object p3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    if-eqz p3, :cond_24

    .line 131
    iget-object p3, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_23
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewPackageMissingException; {:try_start_19 .. :try_end_23} :catch_54
    .catchall {:try_start_19 .. :try_end_23} :catchall_52

    goto :goto_25

    :cond_24
    move-object p3, p1

    .line 136
    :goto_25
    :try_start_25
    iget-object v1, v2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    iget-object v4, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 137
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    iget-object v1, v2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 138
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;
    :try_end_39
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewPackageMissingException; {:try_start_25 .. :try_end_39} :catch_50
    .catchall {:try_start_25 .. :try_end_39} :catchall_52

    if-nez v1, :cond_3c

    goto :goto_3e

    :cond_3c
    move v1, v0

    goto :goto_3f

    :cond_3e
    :goto_3e
    const/4 v1, 0x1

    .line 142
    :goto_3f
    :try_start_3f
    iget-object v2, v2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 143
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v1, :cond_72

    .line 145
    invoke-virtual {p0, p2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_4a
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewPackageMissingException; {:try_start_3f .. :try_end_4a} :catch_4b
    .catchall {:try_start_3f .. :try_end_4a} :catchall_52

    goto :goto_72

    :catch_4b
    move-exception p2

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_57

    :catch_50
    move-exception p2

    goto :goto_56

    :catchall_52
    move-exception p0

    goto :goto_7f

    :catch_54
    move-exception p2

    move-object p3, p1

    :goto_56
    move v1, v0

    .line 148
    :goto_57
    :try_start_57
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 149
    sget-object p1, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find valid WebView package to create relro with "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v1

    move v1, v0

    move v0, v5

    .line 152
    :cond_72
    :goto_72
    monitor-exit v3
    :try_end_73
    .catchall {:try_start_57 .. :try_end_73} :catchall_52

    if-eqz v1, :cond_7e

    if-nez v0, :cond_7e

    if-eqz p3, :cond_7e

    .line 159
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {p0, p3}, Lcom/android/server/webkit/SystemInterface;->killPackageDependents(Ljava/lang/String;)V

    :cond_7e
    return-void

    .line 152
    :goto_7f
    :try_start_7f
    monitor-exit v3
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_52

    throw p0

    :cond_81
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_84
    return-void
.end method

.method public prepareWebViewInSystemServer()V
    .registers 5

    .line 167
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isMultiProcessEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/webkit/SystemInterface;->notifyZygote(Z)V

    .line 169
    :try_start_9
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_3b

    .line 170
    :try_start_c
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 171
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/server/webkit/SystemInterface;->getUserChosenWebViewProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 172
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 179
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/android/server/webkit/SystemInterface;->updateUserSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    :cond_31
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V

    .line 183
    monitor-exit v0

    goto :goto_43

    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_c .. :try_end_3a} :catchall_38

    :try_start_3a
    throw v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception v0

    .line 186
    sget-object v1, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "error preparing webview provider from system server"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    :goto_43
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_7f

    .line 194
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    .line 195
    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getFallbackProvider([Landroid/webkit/WebViewProviderInfo;)Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_78

    .line 197
    sget-object v1, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No valid provider, trying to enable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    iget-object v0, v0, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v0, v2}, Lcom/android/server/webkit/SystemInterface;->enablePackageForAllUsers(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_7f

    .line 201
    :cond_78
    sget-object p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->TAG:Ljava/lang/String;

    const-string v0, "No valid provider and no fallback available."

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7f
    :goto_7f
    return-void
.end method

.method public final startZygoteWhenReady()V
    .registers 1

    .line 209
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    .line 210
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {p0}, Lcom/android/server/webkit/SystemInterface;->ensureZygoteStarted()V

    return-void
.end method

.method public final updateCurrentWebViewPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 6

    .line 302
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_3
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    if-eqz p1, :cond_e

    .line 306
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3, p1}, Lcom/android/server/webkit/SystemInterface;->updateUserSetting(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_50

    .line 310
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz v1, :cond_21

    .line 311
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1c
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewPackageMissingException; {:try_start_e .. :try_end_1c} :catch_34
    .catchall {:try_start_e .. :try_end_1c} :catchall_50

    if-nez v2, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v2, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v2, 0x1

    :goto_22
    if-eqz v2, :cond_27

    .line 322
    :try_start_24
    invoke-virtual {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V

    .line 324
    :cond_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_50

    if-eqz v2, :cond_33

    if-eqz v1, :cond_33

    .line 327
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, v0}, Lcom/android/server/webkit/SystemInterface;->killPackageDependents(Ljava/lang/String;)V

    :cond_33
    return-object p1

    :catch_34
    move-exception p1

    const/4 v1, 0x0

    .line 316
    :try_start_36
    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 317
    sget-object p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find WebView package to use "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    monitor-exit v0

    return-object v1

    :catchall_50
    move-exception p0

    .line 324
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_36 .. :try_end_52} :catchall_50

    throw p0
.end method

.method public final validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I
    .registers 7

    .line 514
    invoke-static {p2}, Landroid/webkit/UserPackage;->hasCorrectTargetSdkVersion(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 517
    :cond_8
    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getMinimumVersionCode()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->versionCodeGE(JJ)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 518
    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->systemIsDebuggable()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 p0, 0x2

    return p0

    .line 523
    :cond_20
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-static {p1, p2, p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->providerHasValidSignature(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;Lcom/android/server/webkit/SystemInterface;)Z

    move-result p0

    if-nez p0, :cond_2a

    const/4 p0, 0x3

    return p0

    .line 526
    :cond_2a
    iget-object p0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_34

    const/4 p0, 0x4

    return p0

    :cond_34
    const/4 p0, 0x0

    return p0
.end method

.method public waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    .registers 10

    .line 244
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v0, v4

    .line 247
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 248
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->webViewIsReadyLocked()Z

    move-result v5

    :goto_12
    if-nez v5, :cond_2a

    .line 250
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    div-long/2addr v6, v2
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_79

    cmp-long v8, v6, v0

    if-ltz v8, :cond_1e

    goto :goto_2a

    .line 253
    :cond_1e
    :try_start_1e
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mLock:Ljava/lang/Object;

    sub-long v6, v0, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_25} :catch_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_79

    .line 257
    :catch_25
    :try_start_25
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->webViewIsReadyLocked()Z

    move-result v5

    goto :goto_12

    .line 260
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    if-eqz v5, :cond_30

    const/4 p0, 0x0

    goto :goto_69

    .line 263
    :cond_30
    iget-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mAnyWebViewInstalled:Z

    if-nez v1, :cond_36

    const/4 p0, 0x4

    goto :goto_69

    :cond_36
    const/4 v1, 0x3

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timed out waiting for relro creation, relros started "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsStarted:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " relros finished "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsFinished:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " package dirty? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewPackageDirty:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 273
    sget-object v2, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->TAG:Ljava/lang/String;

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x40

    .line 274
    invoke-static {v2, v3, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    move p0, v1

    .line 276
    :goto_69
    monitor-exit v4
    :try_end_6a
    .catchall {:try_start_25 .. :try_end_6a} :catchall_79

    if-nez v5, :cond_73

    .line 277
    sget-object v1, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "creating relro file timed out"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_73
    new-instance v1, Landroid/webkit/WebViewProviderResponse;

    invoke-direct {v1, v0, p0}, Landroid/webkit/WebViewProviderResponse;-><init>(Landroid/content/pm/PackageInfo;I)V

    return-object v1

    :catchall_79
    move-exception p0

    .line 276
    :try_start_7a
    monitor-exit v4
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw p0
.end method

.method public final webViewIsReadyLocked()Z
    .registers 3

    .line 482
    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewPackageDirty:Z

    if-nez v0, :cond_10

    iget v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsStarted:I

    iget v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsFinished:I

    if-ne v0, v1, :cond_10

    iget-boolean p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mAnyWebViewInstalled:Z

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method
