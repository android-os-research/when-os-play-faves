.class public final Lcom/android/server/pm/InstallPackageHelper;
.super Ljava/lang/Object;
.source "InstallPackageHelper.java"


# static fields
.field public static final AID_OEM_RESERVED_2_END:I = 0x176f

.field public static final AID_OEM_RESERVED_2_START:I = 0x1388

.field public static final SMART_SWITCH_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.easyMover"

.field public static final SPEG_BLOCK_TIME_DURATION_MINUTES:I = 0x28

.field public static final SPEG_COLLECT_TIME:I = 0x7d0

.field public static final SPEG_CONSECUTIVE_STARTS_INTERVAL_MINUTES:I = 0x3

.field public static final SPEG_DEX_CNT_LIMIT:I = 0x4

.field public static final SPEG_DISABLED_ATTR:Ljava/lang/String; = "com.samsung.android.speg.disabled"

.field public static final SPEG_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.speg"

.field public static final SPEG_TOTAL_CONTINUAL_STARTS_INTERVAL_MINUTES:I = 0xa

.field public static final SPEG_TOTAL_CONTINUAL_STARTS_MAX_NUM:I = 0x5

.field public static final SPEG_UNINITIALIZED_TIME:J = -0x1L

.field public static final SPEG_VERSION:Ljava/lang/String; = "2.1"

.field public static final SPQR_DEX_CNT_LIMIT:I = 0xa

.field public static final SYSTEM_TO_DATA_APP_PATH:Ljava/lang/String; = "/system/etc/system_to_data_app_list.xml"

.field public static final TAG_RESTRICTED:Ljava/lang/String; = "AASA_PackageManager_RESTRICTED"

.field public static final TAG_SPEG:Ljava/lang/String; = "SPEG"


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

.field public final mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

.field public mBlockContinualSpeg:Z

.field public final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public final mContext:Landroid/content/Context;

.field public final mDexManager:Lcom/android/server/pm/dex/DexManager;

.field public final mIncrementalManager:Landroid/os/incremental/IncrementalManager;

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

.field public final mPackageAbiHelper:Lcom/android/server/pm/PackageAbiHelper;

.field public final mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

.field public final mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

.field public final mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

.field public mSpeg:Lcom/android/server/SpegService;

.field public mSpegBlockStartTime:J

.field public mSpegFirstLaunchTime:J

.field public mSpegLaunchesCount:I

.field public mSpegPrevLaunchTime:J

.field public final mViewCompiler:Lcom/android/server/pm/dex/ViewCompiler;


# direct methods
.method public static synthetic $r8$lambda$Au7-zHAikG3WRS5yB_H6eHaKiSk(Lcom/android/server/pm/InstallPackageHelper;IILcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;Ljava/io/File;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/InstallPackageHelper;->lambda$updateDuplicatePreloadApps$4(IILcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NjYU2lveA5-vQy9ZdJdOk73i33E(Lcom/android/server/pm/InstallPackageHelper;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->lambda$processInstallRequests$1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZI8YQmvCr6TGwo2cXhl3_mULTqA(Lcom/android/server/pm/InstallPackageHelper;Ljava/util/ArrayList;[I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/InstallPackageHelper;->lambda$commitPackagesLocked$3(Ljava/util/ArrayList;[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fKLhVvcgwJ9OVE08k5hqllhGqok(Lcom/android/server/pm/InstallPackageHelper;Ljava/lang/Integer;)Landroid/content/pm/UserInfo;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->lambda$preparePackageLI$2(Ljava/lang/Integer;)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rmY7woBPPULjYx5G6xWOlZpWZAg(Lcom/android/server/pm/InstallPackageHelper;Ljava/lang/String;ILandroid/content/IntentSender;Lcom/android/server/pm/PackageInstalledInfo;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/InstallPackageHelper;->lambda$installExistingPackageAsUser$0(Ljava/lang/String;ILandroid/content/IntentSender;Lcom/android/server/pm/PackageInstalledInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 3

    .line 368
    new-instance v0, Lcom/android/server/pm/AppDataHelper;

    invoke-direct {v0, p1}, Lcom/android/server/pm/AppDataHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/InstallPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/AppDataHelper;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/AppDataHelper;)V
    .registers 5

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    new-instance v0, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    invoke-direct {v0}, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    const/4 v0, 0x0

    .line 2802
    iput-boolean v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mBlockContinualSpeg:Z

    .line 2803
    iput v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mSpegLaunchesCount:I

    const-wide/16 v0, -0x1

    .line 2805
    iput-wide v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mSpegFirstLaunchTime:J

    .line 2806
    iput-wide v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mSpegPrevLaunchTime:J

    .line 2807
    iput-wide v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mSpegBlockStartTime:J

    .line 344
    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 345
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iput-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 346
    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 347
    new-instance p2, Lcom/android/server/pm/BroadcastHelper;

    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-direct {p2, v0}, Lcom/android/server/pm/BroadcastHelper;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 348
    new-instance p2, Lcom/android/server/pm/RemovePackageHelper;

    invoke-direct {p2, p1}, Lcom/android/server/pm/RemovePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 349
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getIncrementalManager()Landroid/os/incremental/IncrementalManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 350
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getApexManager()Lcom/android/server/pm/ApexManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 351
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 352
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getArtManagerService()Lcom/android/server/pm/dex/ArtManagerService;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    .line 353
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    .line 354
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageDexOptimizer()Lcom/android/server/pm/PackageDexOptimizer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    .line 355
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getAbiHelper()Lcom/android/server/pm/PackageAbiHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPackageAbiHelper:Lcom/android/server/pm/PackageAbiHelper;

    .line 356
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getViewCompiler()Lcom/android/server/pm/dex/ViewCompiler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mViewCompiler:Lcom/android/server/pm/dex/ViewCompiler;

    .line 357
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 358
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz p1, :cond_85

    .line 359
    const-class p1, Lcom/android/server/SpegService;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/SpegService;

    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mSpeg:Lcom/android/server/SpegService;

    .line 362
    :cond_85
    sget-boolean p1, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    if-eqz p1, :cond_8f

    .line 363
    invoke-static {p2}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    :cond_8f
    return-void
.end method

.method public static apkHasNumOfDexFiles(Ljava/lang/String;I)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2817
    :try_start_2
    new-instance v2, Landroid/util/jar/StrictJarFile;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v3}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_8} :catch_3b
    .catchall {:try_start_2 .. :try_end_8} :catchall_39

    .line 2819
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "classes"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le p1, v0, :cond_19

    .line 2820
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1b

    :cond_19
    const-string p1, ""

    :goto_1b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".dex"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2819
    invoke-virtual {v2, p1}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_2b} :catch_36
    .catchall {:try_start_8 .. :try_end_2b} :catchall_33

    if-eqz p0, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v3

    .line 2827
    :goto_2f
    :try_start_2f
    invoke-virtual {v2}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_32

    :catch_32
    return v0

    :catchall_33
    move-exception p0

    move-object v1, v2

    goto :goto_60

    :catch_36
    move-exception p1

    move-object v1, v2

    goto :goto_3c

    :catchall_39
    move-exception p0

    goto :goto_60

    :catch_3b
    move-exception p1

    :goto_3c
    :try_start_3c
    const-string v2, "PackageManager"

    .line 2822
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for counting dex files, error: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_3c .. :try_end_5a} :catchall_39

    if-eqz v1, :cond_5f

    .line 2827
    :try_start_5c
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_5f

    :catch_5f
    :cond_5f
    return v0

    :goto_60
    if-eqz v1, :cond_65

    :try_start_62
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_65

    .line 2830
    :catch_65
    :cond_65
    throw p0
.end method

.method public static cannotInstallWithBadPermissionGroups(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)Z
    .registers 2

    .line 2267
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result p0

    const/16 v0, 0x1f

    if-lt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private synthetic lambda$commitPackagesLocked$3(Ljava/util/ArrayList;[I)V
    .registers 9

    .line 2418
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcast(ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    return-void
.end method

.method private synthetic lambda$installExistingPackageAsUser$0(Ljava/lang/String;ILandroid/content/IntentSender;Lcom/android/server/pm/PackageInstalledInfo;)V
    .registers 6

    .line 853
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->restorePermissionsAndUpdateRolesForNewUserInstall(Ljava/lang/String;I)V

    if-eqz p3, :cond_e

    .line 856
    iget p1, p4, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    invoke-static {p1, p0, p3}, Lcom/android/server/pm/InstallPackageHelper;->onRestoreComplete(ILandroid/content/Context;Landroid/content/IntentSender;)V

    :cond_e
    return-void
.end method

.method private synthetic lambda$preparePackageLI$2(Ljava/lang/Integer;)Landroid/content/pm/UserInfo;
    .registers 2

    .line 1435
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$processInstallRequests$1(Ljava/util/List;)V
    .registers 2

    .line 1075
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->installApexPackagesTraced(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$updateDuplicatePreloadApps$4(IILcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;Ljava/io/File;)V
    .registers 14

    .line 4671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update a duplicate package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", apk: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 4673
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, p5}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    if-nez v2, :cond_28

    return-void

    .line 4677
    :cond_28
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v5, 0x1

    invoke-virtual {v4, p5, v5}, Lcom/android/server/pm/Settings;->disableSystemPackageLPw(Ljava/lang/String;Z)Z

    .line 4678
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/android/server/pm/RemovePackageHelper;->removePackageLI(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p6

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 4679
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/InstallPackageHelper;->installPackagesFromAppRootDir(Ljava/io/File;Ljava/util/List;IILcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static onRestoreComplete(ILandroid/content/Context;Landroid/content/IntentSender;)V
    .registers 11

    .line 887
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 889
    invoke-static {p0}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result p0

    const-string v0, "android.content.pm.extra.STATUS"

    .line 888
    invoke-virtual {v3, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 891
    :try_start_e
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p0

    const/4 v0, 0x0

    .line 892
    invoke-virtual {p0, v0}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 894
    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    move-object v0, p2

    move-object v1, p1

    .line 893
    invoke-virtual/range {v0 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_23
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_e .. :try_end_23} :catch_23

    :catch_23
    return-void
.end method

.method public static updateDigest(Ljava/security/MessageDigest;Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2388
    new-instance v0, Ljava/security/DigestInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1, p0}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    .line 2391
    :goto_a
    :try_start_a
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->read()I

    move-result p0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_16

    const/4 p1, -0x1

    if-eq p0, p1, :cond_12

    goto :goto_a

    .line 2394
    :cond_12
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    return-void

    :catchall_16
    move-exception p0

    .line 2388
    :try_start_17
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1f
    throw p0
.end method


# virtual methods
.method public final addForInitLI(Lcom/android/server/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mLock",
            "mPm.mInstallLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 5004
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/InstallPackageHelper;->scanSystemPackageLI(Lcom/android/server/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;)Landroid/util/Pair;

    move-result-object p2

    .line 5006
    iget-object p3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Lcom/android/server/pm/ScanResult;

    .line 5007
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 5008
    iget-boolean p4, p3, Lcom/android/server/pm/ScanResult;->mSuccess:Z

    if-eqz p4, :cond_69

    .line 5009
    iget-object p4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p4, p4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter p4

    const/4 v0, 0x0

    .line 5012
    :try_start_1a
    iget-object v1, p3, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 5013
    new-instance v2, Lcom/android/server/pm/ReconcileRequest;

    .line 5014
    invoke-static {v1, p3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 5017
    invoke-virtual {v4, p1}, Lcom/android/server/pm/PackageManagerService;->getSettingsVersionForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v4

    .line 5016
    invoke-static {v1, v4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/pm/ReconcileRequest;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 5018
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 5020
    invoke-virtual {v4}, Lcom/android/server/pm/Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 5019
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/pm/ReconcilePackageUtils;->reconcilePackages(Lcom/android/server/pm/ReconcileRequest;Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/KeySetManagerService;Lcom/android/server/pm/Settings;)Ljava/util/Map;

    move-result-object v2

    .line 5022
    invoke-virtual {p0, p3}, Lcom/android/server/pm/InstallPackageHelper;->optimisticallyRegisterAppId(Lcom/android/server/pm/ScanResult;)Z

    move-result v0

    .line 5023
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ReconciledPackage;

    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 5024
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    .line 5023
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/InstallPackageHelper;->commitReconciledScanResultLocked(Lcom/android/server/pm/ReconciledPackage;[I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :try_end_5c
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1a .. :try_end_5c} :catch_60
    .catchall {:try_start_1a .. :try_end_5c} :catchall_5e

    .line 5031
    :try_start_5c
    monitor-exit p4

    goto :goto_69

    :catchall_5e
    move-exception p0

    goto :goto_67

    :catch_60
    move-exception p1

    if-eqz v0, :cond_66

    .line 5027
    invoke-virtual {p0, p3}, Lcom/android/server/pm/InstallPackageHelper;->cleanUpAppIdCreation(Lcom/android/server/pm/ScanResult;)V

    .line 5029
    :cond_66
    throw p1

    .line 5031
    :goto_67
    monitor-exit p4
    :try_end_68
    .catchall {:try_start_5c .. :try_end_68} :catchall_5e

    throw p0

    :cond_69
    :goto_69
    if-eqz p2, :cond_81

    .line 5035
    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter p2

    .line 5036
    :try_start_70
    iget-object p4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p4, p4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p4, v0, v1}, Lcom/android/server/pm/Settings;->disableSystemPackageLPw(Ljava/lang/String;Z)Z

    .line 5037
    monitor-exit p2

    goto :goto_81

    :catchall_7e
    move-exception p0

    monitor-exit p2
    :try_end_80
    .catchall {:try_start_70 .. :try_end_80} :catchall_7e

    throw p0

    .line 5039
    :cond_81
    :goto_81
    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    if-eqz p2, :cond_ad

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_ad

    .line 5040
    iget-object p2, p3, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    if-eqz p2, :cond_ad

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->isLoading()Z

    move-result p2

    if-eqz p2, :cond_ad

    .line 5042
    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object p4

    new-instance v0, Lcom/android/server/pm/IncrementalProgressListener;

    .line 5043
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, p1, p0}, Lcom/android/server/pm/IncrementalProgressListener;-><init>(Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)V

    .line 5042
    invoke-virtual {p2, p4, v0}, Landroid/os/incremental/IncrementalManager;->registerLoadingProgressCallback(Ljava/lang/String;Landroid/content/pm/IPackageLoadingProgressCallback;)Z

    .line 5046
    :cond_ad
    iget-object p0, p3, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    return-object p0
.end method

.method public addSamsungOverlayForInitLI(Lcom/android/server/pm/parsing/pkg/ParsedPackage;IIJLandroid/os/UserHandle;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 5873
    invoke-virtual {p0, p1, p2, p3, p6}, Lcom/android/server/pm/InstallPackageHelper;->addForInitLI(Lcom/android/server/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    return-object p0
.end method

.method public final adjustScanFlags(ILcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/os/UserHandle;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)I
    .registers 9

    .line 5829
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/pm/ScanPackageUtils;->adjustScanFlagsWithPackageSetting(ILcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/os/UserHandle;)I

    move-result p1

    const/high16 p2, 0x80000

    and-int/2addr p2, p1

    const/4 p3, 0x0

    if-eqz p2, :cond_14

    .line 5834
    invoke-static {}, Lcom/android/server/pm/ScanPackageUtils;->getVendorPartitionVersion()I

    move-result p2

    const/16 p4, 0x1c

    if-ge p2, p4, :cond_14

    const/4 p2, 0x1

    goto :goto_15

    :cond_14
    move p2, p3

    :goto_15
    const/high16 p4, 0x20000

    and-int v0, p1, p4

    if-nez v0, :cond_6d

    .line 5836
    invoke-interface {p5}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isPrivileged()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 5837
    invoke-interface {p5}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSharedUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6d

    if-nez p2, :cond_6d

    const/4 p2, 0x0

    .line 5840
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 5842
    :try_start_2f
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p5}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSharedUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p3, p3, p3}, Lcom/android/server/pm/Settings;->getSharedUserLPw(Ljava/lang/String;IIZ)Lcom/android/server/pm/SharedUserSetting;

    move-result-object p2
    :try_end_3b
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2f .. :try_end_3b} :catch_3e
    .catchall {:try_start_2f .. :try_end_3b} :catchall_3c

    goto :goto_3e

    :catchall_3c
    move-exception p0

    goto :goto_6b

    :catch_3e
    :goto_3e
    if-eqz p2, :cond_69

    .line 5846
    :try_start_40
    invoke-virtual {p2}, Lcom/android/server/pm/SharedUserSetting;->isPrivileged()Z

    move-result p2

    if-eqz p2, :cond_69

    .line 5851
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string p2, "android"

    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    .line 5853
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p0

    .line 5854
    invoke-interface {p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p2

    .line 5852
    invoke-static {p0, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result p0

    if-eqz p0, :cond_69

    or-int p0, p1, p4

    move p1, p0

    .line 5859
    :cond_69
    monitor-exit v0

    goto :goto_6d

    :goto_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_40 .. :try_end_6c} :catchall_3c

    throw p0

    :cond_6d
    :goto_6d
    return p1
.end method

.method public final assertOverlayIsValid(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    const-string v1, "Overlay "

    if-eqz v0, :cond_9e

    and-int/lit8 p2, p2, 0x10

    if-nez p2, :cond_37

    .line 5708
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageManagerService;->isOverlayMutable(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto/16 :goto_1f4

    .line 5709
    :cond_19
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5710
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is static and cannot be upgraded."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    const/high16 p0, 0x80000

    and-int/2addr p0, p3

    const-string p2, "). This will become an install error in a future release"

    const-string p3, "System overlay "

    const-string v0, "PackageManager"

    if-eqz p0, :cond_73

    .line 5715
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result p0

    invoke-static {}, Lcom/android/server/pm/ScanPackageUtils;->getVendorPartitionVersion()I

    move-result v1

    if-ge p0, v1, :cond_1f4

    .line 5716
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " targets an SDK below the required SDK level of vendor overlays ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5719
    invoke-static {}, Lcom/android/server/pm/ScanPackageUtils;->getVendorPartitionVersion()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5716
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f4

    .line 5723
    :cond_73
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p0, v1, :cond_1f4

    .line 5724
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " targets an SDK below the required SDK level of system overlays ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f4

    .line 5732
    :cond_9e
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_b0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "com.samsung.android.zippedOverlay"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_b1

    :cond_b0
    move p2, p3

    .line 5736
    :goto_b1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isSamsungThemeOverlay()Z

    move-result v0

    if-eqz v0, :cond_d8

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/overlays/themepark/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5737
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d8

    const/4 p3, 0x1

    .line 5742
    :cond_d8
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v0

    const/16 v2, 0x1d

    const-string v3, "/data/overlays/current_locale_apks/files"

    const-string v4, "/data/overlays/currentstyle"

    if-ge v0, v2, :cond_13f

    .line 5743
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string v2, "android"

    .line 5744
    invoke-virtual {v0, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 5745
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isSamsungThemeOverlay()Z

    move-result v2

    if-nez v2, :cond_f6

    if-eqz p2, :cond_112

    :cond_f6
    if-nez p3, :cond_13f

    .line 5746
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_112

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13f

    .line 5748
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13f

    .line 5751
    :cond_112
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v2

    .line 5750
    invoke-static {v0, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->comparePackageSignatures(Lcom/android/server/pm/PackageSetting;[Landroid/content/pm/Signature;)Z

    move-result v0

    if-eqz v0, :cond_121

    goto :goto_13f

    .line 5752
    :cond_121
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5753
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must target Q or later, or be signed with the platform certificate"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5766
    :cond_13f
    :goto_13f
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTargetOverlayableName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f4

    .line 5767
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 5768
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-eqz v0, :cond_1f4

    .line 5770
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isSamsungThemeOverlay()Z

    move-result v2

    if-nez v2, :cond_15b

    if-eqz p2, :cond_177

    :cond_15b
    if-nez p3, :cond_1f4

    .line 5771
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_177

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1f4

    .line 5773
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1f4

    .line 5776
    :cond_177
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p2

    .line 5775
    invoke-static {v0, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->comparePackageSignatures(Lcom/android/server/pm/PackageSetting;[Landroid/content/pm/Signature;)Z

    move-result p2

    if-nez p2, :cond_1f4

    .line 5778
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    if-eqz p2, :cond_1ca

    .line 5785
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 5786
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    .line 5789
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p2

    .line 5788
    invoke-static {p0, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->comparePackageSignatures(Lcom/android/server/pm/PackageSetting;[Landroid/content/pm/Signature;)Z

    move-result p0

    if-eqz p0, :cond_1a0

    goto :goto_1f4

    .line 5790
    :cond_1a0
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5791
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " signed with a different certificate than both the reference package and target "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5793
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTarget()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", and the overlay lacks <overlay android:targetName>"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5779
    :cond_1ca
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5780
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " and target "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5781
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTarget()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " signed with different certificates, and the overlay lacks <overlay android:targetName>"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f4
    :goto_1f4
    return-void
.end method

.method public final assertPackageIsValid(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_7

    .line 5534
    invoke-static {p1}, Lcom/android/server/pm/ScanPackageUtils;->assertCodePolicy(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 5537
    :cond_7
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21e

    and-int/lit8 v0, p3, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_15

    move v0, v1

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    and-int/lit16 v3, p3, 0x1000

    if-eqz v3, :cond_1c

    move v3, v1

    goto :goto_1d

    :cond_1c
    move v3, v2

    :goto_1d
    const/4 v4, -0x5

    if-nez v0, :cond_22

    if-eqz v3, :cond_2e

    .line 5547
    :cond_22
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 5548
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/ApexManager;->isApexPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_203

    .line 5555
    :cond_2e
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v0

    .line 5556
    invoke-virtual {v0, p1}, Lcom/android/server/pm/KeySetManagerService;->assertScannedPackageValid(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 5558
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 5560
    :try_start_3e
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "android"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 5561
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->getCoreAndroidApplication()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-nez v3, :cond_53

    goto :goto_8a

    :cond_53
    const-string p0, "PackageManager"

    const-string p2, "*************************************************"

    .line 5562
    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "PackageManager"

    const-string p2, "Core android package being redefined.  Skipping."

    .line 5563
    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "PackageManager"

    .line 5564
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " codePath="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "PackageManager"

    const-string p1, "*************************************************"

    .line 5565
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5566
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "Core android package being redefined.  Skipping."

    invoke-direct {p0, v4, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_8a
    :goto_8a
    and-int/lit8 v3, p3, 0x4

    if-nez v3, :cond_f0

    .line 5572
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 5573
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f0

    .line 5575
    iget-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p3

    .line 5576
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 5577
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 5576
    invoke-virtual {v3, v5}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    if-eqz v3, :cond_b7

    goto :goto_b8

    :cond_b7
    move v1, v2

    :goto_b8
    if-eqz p3, :cond_d0

    .line 5578
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    invoke-virtual {v2, p1, p3, v1, p2}, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->isDuplicatePackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;ZI)Z

    move-result p2

    if-eqz p2, :cond_d0

    .line 5580
    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    invoke-virtual {p2, p1}, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->addDuplicatePackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 5581
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->addSystemPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 5584
    :cond_d0
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Application package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5585
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already installed.  Skipping duplicate."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 5589
    :cond_f0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isStaticSharedLibrary()Z

    move-result v1

    if-eqz v1, :cond_115

    if-nez v3, :cond_10f

    .line 5592
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 5593
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_107

    goto :goto_10f

    .line 5594
    :cond_107
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "Duplicate static shared lib provider package"

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5597
    :cond_10f
    :goto_10f
    invoke-static {p1, p3}, Lcom/android/server/pm/ScanPackageUtils;->assertStaticSharedLibraryIsValid(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    .line 5598
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->assertStaticSharedLibraryVersionCodeIsValid(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    :cond_115
    and-int/lit16 v1, p3, 0x80

    if-eqz v1, :cond_1e3

    .line 5610
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService;->isExpectingBetter(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_141

    const-string v1, "PackageManager"

    .line 5611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Relax SCAN_REQUIRE_KNOWN requirement for package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5612
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5611
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e3

    .line 5614
    :cond_141
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    if-eqz v1, :cond_199

    .line 5620
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15f

    goto/16 :goto_1e3

    .line 5621
    :cond_15f
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/16 p2, -0x17

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application package "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5622
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " found at "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5623
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but expected at "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5624
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; ignoring."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 5628
    :cond_199
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v1

    if-eqz v1, :cond_1c1

    const-string v1, "PackageManager"

    .line 5629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Application package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not found at first boot, but allow data preload apps to be installed"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e3

    .line 5632
    :cond_1c1
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/16 p2, -0x13

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Application package "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5633
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found; ignoring."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1e3
    :goto_1e3
    if-eqz v3, :cond_1ec

    .line 5645
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/resolution/ComponentResolver;->assertProvidersNotDefined(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 5650
    :cond_1ec
    invoke-static {p1}, Lcom/android/server/pm/ScanPackageUtils;->assertProcessesAreValid(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 5653
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->assertPackageWithSharedUserIdIsPrivileged(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 5656
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTarget()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1fb

    .line 5657
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/InstallPackageHelper;->assertOverlayIsValid(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V

    .line 5662
    :cond_1fb
    invoke-static {p1, p2}, Lcom/android/server/pm/ScanPackageUtils;->assertMinSignatureSchemeIsValid(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    .line 5663
    monitor-exit v0

    return-void

    :catchall_200
    move-exception p0

    monitor-exit v0
    :try_end_202
    .catchall {:try_start_3e .. :try_end_202} :catchall_200

    throw p0

    .line 5549
    :cond_203
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 5550
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is an APEX package and can\'t be installed as an APK."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 5539
    :cond_21e
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/4 p1, -0x2

    const-string p2, "Code and resource paths haven\'t been set correctly"

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final assertPackageWithSharedUserIdIsPrivileged(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 5804
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isPrivileged()Z

    move-result v0

    if-nez v0, :cond_67

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSharedUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_67

    const/4 v0, 0x0

    .line 5807
    :try_start_d
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSharedUserId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v3}, Lcom/android/server/pm/Settings;->getSharedUserLPw(Ljava/lang/String;IIZ)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v0
    :try_end_1a
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_d .. :try_end_1a} :catch_1a

    :catch_1a
    if-eqz v0, :cond_67

    .line 5811
    invoke-virtual {v0}, Lcom/android/server/pm/SharedUserSetting;->isPrivileged()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 5813
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string v0, "android"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    .line 5815
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    .line 5814
    invoke-static {p0, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->comparePackageSignatures(Lcom/android/server/pm/PackageSetting;[Landroid/content/pm/Signature;)Z

    move-result p0

    if-eqz p0, :cond_3b

    goto :goto_67

    .line 5816
    :cond_3b
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Apps that share a user with a privileged app must themselves be marked as privileged. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5818
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " shares privileged user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5819
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSharedUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_67
    :goto_67
    return-void
.end method

.method public final assertStaticSharedLibraryVersionCodeIsValid(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 5672
    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 5673
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfos(Ljava/lang/String;)Lcom/android/server/utils/WatchedLongSparseArray;

    move-result-object v0

    const-wide/high16 v1, -0x8000000000000000L

    const-wide v3, 0x7fffffffffffffffL

    if-eqz v0, :cond_54

    .line 5675
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1a
    if-ge v6, v5, :cond_54

    .line 5677
    invoke-virtual {v0, v6}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/SharedLibraryInfo;

    .line 5678
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v8

    .line 5679
    invoke-virtual {v8}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v8

    .line 5680
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v10

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibVersion()J

    move-result-wide v12

    cmp-long v10, v10, v12

    const-wide/16 v11, 0x1

    if-gez v10, :cond_3e

    add-long/2addr v8, v11

    .line 5681
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_4f

    .line 5682
    :cond_3e
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v13

    .line 5683
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibVersion()J

    move-result-wide v15

    cmp-long v7, v13, v15

    if-lez v7, :cond_52

    sub-long/2addr v8, v11

    .line 5684
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :goto_4f
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_52
    move-wide v1, v8

    move-wide v3, v1

    .line 5691
    :cond_54
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getLongVersionCode()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-ltz v0, :cond_65

    .line 5692
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getLongVersionCode()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-gtz v0, :cond_65

    return-void

    .line 5693
    :cond_65
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Static shared lib version codes must be ordered as lib versions"

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final canSkipForcedPackageVerification(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 4

    .line 5417
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    .line 5418
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/security/VerityUtils;->hasFsverity(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_f

    return v0

    .line 5422
    :cond_f
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object p0

    .line 5423
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    move p1, v0

    .line 5424
    :goto_1a
    array-length v1, p0

    if-ge p1, v1, :cond_29

    .line 5425
    aget-object v1, p0, p1

    invoke-static {v1}, Lcom/android/internal/security/VerityUtils;->hasFsverity(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    return v0

    :cond_26
    add-int/lit8 p1, p1, 0x1

    goto :goto_1a

    :cond_29
    const/4 p0, 0x1

    return p0
.end method

.method public checkExistingBetterPackages(Landroid/util/ArrayMap;Ljava/util/List;II)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4909
    :goto_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_9b

    .line 4910
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4911
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto/16 :goto_97

    .line 4914
    :cond_19
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    const/4 v3, 0x5

    .line 4916
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected better "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " but never showed up; reverting to system"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 4919
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 4920
    invoke-virtual {v3, v2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->getSystemPackageRescanFlagsAndReparseFlags(Ljava/io/File;II)Landroid/util/Pair;

    move-result-object v3

    .line 4922
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 4923
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v5, "PackageManager"

    if-nez v4, :cond_68

    .line 4926
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring unexpected fallback path "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    .line 4929
    :cond_68
    iget-object v6, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v1}, Lcom/android/server/pm/Settings;->enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    const/4 v6, 0x0

    .line 4932
    :try_start_70
    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/android/server/pm/InstallPackageHelper;->scanSystemPackageTracedLI(Ljava/io/File;IILandroid/os/UserHandle;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 4935
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isStub()Z

    move-result v2

    if-eqz v2, :cond_97

    .line 4936
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7d
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_70 .. :try_end_7d} :catch_7e

    goto :goto_97

    :catch_7e
    move-exception v1

    .line 4939
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse original system package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4940
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4939
    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_97
    :goto_97
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_9b
    return-void
.end method

.method public final checkNoAppStorageIsConsistent(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mInstallLock"
        }
    .end annotation

    const/4 p0, 0x1

    if-nez p1, :cond_4

    return p0

    .line 1368
    :cond_4
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getProperties()Ljava/util/Map;

    move-result-object p1

    const-string v0, "android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManager$Property;

    .line 1370
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getProperties()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageManager$Property;

    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    .line 1371
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p1

    if-nez p1, :cond_24

    goto :goto_2f

    :cond_24
    if-eqz p2, :cond_2d

    .line 1374
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p1

    if-eqz p1, :cond_2d

    goto :goto_2e

    :cond_2d
    move p0, v0

    :goto_2e
    return p0

    :cond_2f
    :goto_2f
    if-eqz p2, :cond_39

    .line 1372
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p1

    if-nez p1, :cond_38

    goto :goto_39

    :cond_38
    move p0, v0

    :cond_39
    :goto_39
    return p0
.end method

.method public final checkSpegContinualLaunchesLimitViolation()Z
    .registers 9

    .line 2902
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2905
    iget-boolean v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mBlockContinualSpeg:Z

    const-string v3, "SPEG"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3d

    .line 2906
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v6, p0, Lcom/android/server/pm/InstallPackageHelper;->mSpegBlockStartTime:J

    sub-long v6, v0, v6

    .line 2907
    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    long-to-int v2, v6

    const/16 v6, 0x28

    if-ge v2, v6, :cond_35

    .line 2909
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Disable SPEG due to continuous installation, blockedDuration: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " minutes"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 2913
    :cond_35
    iput-boolean v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mBlockContinualSpeg:Z

    .line 2914
    iput v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mSpegLaunchesCount:I

    const-wide/16 v6, -0x1

    .line 2915
    iput-wide v6, p0, Lcom/android/server/pm/InstallPackageHelper;->mSpegBlockStartTime:J

    .line 2917
    :cond_3d
    iget v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mSpegLaunchesCount:I

    add-int/2addr v2, v5

    const/4 v6, 0x5

    if-lt v2, v6, :cond_5a

    .line 2921
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v6, p0, Lcom/android/server/pm/InstallPackageHelper;->mSpegFirstLaunchTime:J

    sub-long v6, v0, v6

    .line 2922
    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    long-to-int v2, v6

    const/16 v6, 0xa

    if-ge v2, v6, :cond_57

    .line 2925
    iput-boolean v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mBlockContinualSpeg:Z

    .line 2926
    iput-wide v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mSpegBlockStartTime:J

    goto :goto_6c

    .line 2928
    :cond_57
    iput v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mSpegLaunchesCount:I

    goto :goto_6c

    :cond_5a
    if-le v2, v5, :cond_6c

    .line 2932
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v6, p0, Lcom/android/server/pm/InstallPackageHelper;->mSpegPrevLaunchTime:J

    sub-long v6, v0, v6

    .line 2933
    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    long-to-int v2, v6

    const/4 v6, 0x3

    if-le v2, v6, :cond_6c

    .line 2935
    iput v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mSpegLaunchesCount:I

    .line 2938
    :cond_6c
    :goto_6c
    iget v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mSpegLaunchesCount:I

    if-nez v2, :cond_77

    .line 2939
    iput-wide v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mSpegFirstLaunchTime:J

    const-string v2, "Continual launches limit is reset"

    .line 2940
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2942
    :cond_77
    iput-wide v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mSpegPrevLaunchTime:J

    .line 2943
    iget v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mSpegLaunchesCount:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mSpegLaunchesCount:I

    return v4
.end method

.method public final cleanUpAppIdCreation(Lcom/android/server/pm/ScanResult;)V
    .registers 3

    .line 5075
    iget-object v0, p1, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v0

    if-lez v0, :cond_15

    .line 5076
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object p1, p1, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeAppIdLPw(I)V

    :cond_15
    return-void
.end method

.method public cleanupDisabledPackageSettings(Ljava/util/List;[II)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[II)V"
        }
    .end annotation

    .line 4749
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_a1

    .line 4750
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4751
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4756
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/Settings;->removeDisabledSystemPackageLPw(Ljava/lang/String;)V

    const-string v4, "Updated system package "

    if-nez v3, :cond_38

    .line 4760
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " no longer exists; removing its data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7c

    .line 4766
    :cond_38
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " no longer exists; rescanning package on data"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4775
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v5, v3, v1}, Lcom/android/server/pm/RemovePackageHelper;->removePackageLI(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    .line 4777
    :try_start_51
    new-instance v5, Ljava/io/File;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 4778
    invoke-virtual {p0, v5, v3, p3, v6}, Lcom/android/server/pm/InstallPackageHelper;->scanSystemPackageTracedLI(Ljava/io/File;IILandroid/os/UserHandle;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :try_end_5f
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_51 .. :try_end_5f} :catch_60

    goto :goto_7b

    :catch_60
    move-exception v3

    .line 4780
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse updated, ex-system package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4781
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "PackageManager"

    .line 4780
    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7b
    move-object v3, v4

    .line 4789
    :goto_7c
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    if-eqz v6, :cond_99

    .line 4790
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4, v2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_99

    .line 4791
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/RemovePackageHelper;->removePackageDataLIF(Lcom/android/server/pm/PackageSetting;[ILcom/android/server/pm/PackageRemovedInfo;IZ)V

    :cond_99
    const/4 v2, 0x5

    .line 4793
    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_6

    :cond_a1
    return-void
.end method

.method public clearNoninstalledDataApps(Lcom/android/server/utils/WatchedArrayMap;[I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;[I)V"
        }
    .end annotation

    .line 4650
    new-instance v0, Lcom/samsung/android/server/pm/install/PmConfigParser;

    invoke-direct {v0}, Lcom/samsung/android/server/pm/install/PmConfigParser;-><init>()V

    const-string v1, "/system/etc/system_to_data_app_list.xml"

    .line 4651
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/pm/install/PmConfigParser;->parsePackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4653
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4654
    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_f

    .line 4655
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_f

    .line 4656
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/RemovePackageHelper;->removePackageDataLIF(Lcom/android/server/pm/PackageSetting;[ILcom/android/server/pm/PackageRemovedInfo;IZ)V

    goto :goto_f

    :cond_34
    return-void
.end method

.method public final commitPackageSettings(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;IZLcom/android/server/pm/ReconciledPackage;)V
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    .line 531
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 532
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mCustomResolverComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_2b

    .line 533
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 534
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v8, v9}, Lcom/android/server/pm/PackageManagerService;->setUpCustomResolverActivity(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)V

    .line 537
    :cond_2b
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 538
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v8, v9}, Lcom/android/server/pm/PackageManagerService;->setPlatformPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)V

    .line 543
    :cond_3c
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v15

    .line 544
    :try_start_41
    iget-object v0, v13, Lcom/android/server/pm/ReconciledPackage;->mAllowedSharedLibraryInfos:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/16 v16, 0x0

    if-nez v0, :cond_8f

    .line 545
    iget-object v0, v13, Lcom/android/server/pm/ReconciledPackage;->mAllowedSharedLibraryInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/SharedLibraryInfo;

    .line 546
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/SharedLibrariesImpl;->commitSharedLibraryInfoLPw(Landroid/content/pm/SharedLibraryInfo;)V

    goto :goto_51

    .line 549
    :cond_63
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/pm/ReconciledPackage;->getCombinedAvailablePackages()Ljava/util/Map;

    move-result-object v7
    :try_end_67
    .catchall {:try_start_41 .. :try_end_67} :catchall_1c5

    .line 552
    :try_start_67
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;
    :try_end_69
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_67 .. :try_end_69} :catch_77
    .catchall {:try_start_67 .. :try_end_69} :catchall_1c5

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v17, v7

    :try_start_71
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/SharedLibrariesImpl;->updateSharedLibrariesLPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)V
    :try_end_74
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_71 .. :try_end_74} :catch_75
    .catchall {:try_start_71 .. :try_end_74} :catchall_1c5

    goto :goto_82

    :catch_75
    move-exception v0

    goto :goto_7a

    :catch_77
    move-exception v0

    move-object/from16 v17, v7

    :goto_7a
    :try_start_7a
    const-string v2, "PackageManager"

    const-string/jumbo v3, "updateSharedLibrariesLPr failed: "

    .line 555
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_82
    and-int/lit8 v0, v11, 0x10

    if-nez v0, :cond_8f

    .line 560
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    move-object/from16 v2, v17

    invoke-virtual {v0, v8, v9, v2}, Lcom/android/server/pm/SharedLibrariesImpl;->updateAllSharedLibrariesLPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_91

    :cond_8f
    move-object/from16 v0, v16

    .line 564
    :goto_91
    monitor-exit v15
    :try_end_92
    .catchall {:try_start_7a .. :try_end_92} :catchall_1c5

    .line 565
    iget-object v2, v13, Lcom/android/server/pm/ReconciledPackage;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    if-eqz v2, :cond_98

    .line 566
    iput-object v0, v2, Lcom/android/server/pm/PackageInstalledInfo;->mLibraryConsumers:Ljava/util/ArrayList;

    :cond_98
    and-int/lit8 v2, v11, 0x10

    if-eqz v2, :cond_9d

    goto :goto_b0

    :cond_9d
    and-int/lit16 v2, v11, 0x400

    if-eqz v2, :cond_a2

    goto :goto_b0

    :cond_a2
    and-int/lit16 v2, v11, 0x800

    if-eqz v2, :cond_a7

    goto :goto_b0

    .line 579
    :cond_a7
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    invoke-interface {v2, v14}, Lcom/android/server/pm/Computer;->checkPackageFrozen(Ljava/lang/String;)V

    .line 582
    :goto_b0
    iget-object v2, v13, Lcom/android/server/pm/ReconciledPackage;->mPrepareResult:Lcom/android/server/pm/PrepareResult;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_bc

    iget-boolean v2, v2, Lcom/android/server/pm/PrepareResult;->mReplace:Z

    if-eqz v2, :cond_bc

    move v2, v3

    goto :goto_bd

    :cond_bc
    move v2, v4

    :goto_bd
    if-eqz v0, :cond_e7

    .line 587
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c7

    if-eqz v2, :cond_e7

    :cond_c7
    move v5, v4

    .line 588
    :goto_c8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_e7

    .line 589
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 590
    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 591
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v6

    const-string/jumbo v14, "update lib"

    .line 590
    invoke-virtual {v7, v13, v6, v14}, Lcom/android/server/pm/PackageManagerService;->killApplication(Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_c8

    :cond_e7
    const-string/jumbo v0, "updateSettings"

    const-wide/32 v5, 0x40000

    .line 597
    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 599
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v7

    .line 602
    :try_start_f5
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v9, v8}, Lcom/android/server/pm/Settings;->insertPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 604
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13, v8}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v0, 0x800000

    and-int/2addr v0, v11

    if-eqz v0, :cond_111

    .line 606
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0, v8}, Lcom/android/server/pm/ApexManager;->registerApkInApex(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 610
    :cond_111
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v0

    .line 611
    invoke-virtual {v0, v8}, Lcom/android/server/pm/KeySetManagerService;->addScannedPackageLPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 613
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 614
    iget-object v13, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v13, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    invoke-virtual {v14, v8, v12, v13, v0}, Lcom/android/server/pm/resolution/ComponentResolver;->addAllComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/Computer;)V

    .line 615
    iget-object v13, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    invoke-virtual {v13, v0, v9, v2}, Lcom/android/server/pm/AppsFilterImpl;->addPackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;Z)V

    .line 616
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/pm/PackageManagerService;->addAllPackageProperties(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    if-eqz v10, :cond_148

    .line 618
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_140

    goto :goto_148

    .line 621
    :cond_140
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v0, v10, v9}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->migrateState(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageStateInternal;)V

    goto :goto_14f

    .line 619
    :cond_148
    :goto_148
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v0, v9}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->addPackage(Lcom/android/server/pm/pkg/PackageStateInternal;)V

    .line 624
    :goto_14f
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getInstrumentations()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    move v9, v4

    move-object/from16 v2, v16

    :goto_15a
    if-ge v9, v0, :cond_191

    .line 628
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getInstrumentations()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;

    .line 629
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/server/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    .line 630
    iget-object v13, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v10}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v13, v14, v10}, Lcom/android/server/pm/PackageManagerService;->addInstrumentation(Landroid/content/ComponentName;Lcom/android/server/pm/pkg/component/ParsedInstrumentation;)V

    if-eqz v12, :cond_18e

    if-nez v2, :cond_182

    .line 633
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v13, 0x100

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_187

    :cond_182
    const/16 v13, 0x20

    .line 635
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 637
    :goto_187
    invoke-interface {v10}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18e
    add-int/lit8 v9, v9, 0x1

    goto :goto_15a

    .line 644
    :cond_191
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v0

    .line 645
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1ac

    .line 646
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    monitor-enter v2
    :try_end_1a0
    .catchall {:try_start_f5 .. :try_end_1a0} :catchall_1c2

    .line 647
    :try_start_1a0
    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 648
    monitor-exit v2

    goto :goto_1ac

    :catchall_1a9
    move-exception v0

    monitor-exit v2
    :try_end_1ab
    .catchall {:try_start_1a0 .. :try_end_1ab} :catchall_1a9

    :try_start_1ab
    throw v0

    .line 651
    :cond_1ac
    :goto_1ac
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    and-int/lit16 v1, v11, 0x2000

    if-eqz v1, :cond_1b7

    move-object/from16 v1, p2

    goto :goto_1ba

    :cond_1b7
    move-object/from16 v1, p2

    move v3, v4

    :goto_1ba
    invoke-interface {v0, v8, v3, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onPackageAdded(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 653
    monitor-exit v7
    :try_end_1be
    .catchall {:try_start_1ab .. :try_end_1be} :catchall_1c2

    .line 655
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1c2
    move-exception v0

    .line 653
    :try_start_1c3
    monitor-exit v7
    :try_end_1c4
    .catchall {:try_start_1c3 .. :try_end_1c4} :catchall_1c2

    throw v0

    :catchall_1c5
    move-exception v0

    .line 564
    :try_start_1c6
    monitor-exit v15
    :try_end_1c7
    .catchall {:try_start_1c6 .. :try_end_1c7} :catchall_1c5

    throw v0
.end method

.method public final commitPackagesLocked(Lcom/android/server/pm/CommitRequest;)V
    .registers 19
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mLock"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 2401
    iget-object v0, v2, Lcom/android/server/pm/CommitRequest;->mReconciledPackages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/pm/ReconciledPackage;

    .line 2402
    iget-object v0, v4, Lcom/android/server/pm/ReconciledPackage;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 2403
    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    .line 2404
    iget-object v5, v0, Lcom/android/server/pm/ScanRequest;->mParsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 2405
    invoke-interface {v5}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 2406
    iget-object v13, v4, Lcom/android/server/pm/ReconciledPackage;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    .line 2407
    new-instance v0, Lcom/android/server/pm/RemovePackageHelper;

    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, v6}, Lcom/android/server/pm/RemovePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 2408
    new-instance v6, Lcom/android/server/pm/DeletePackageHelper;

    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v6, v7}, Lcom/android/server/pm/DeletePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 2411
    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v7, v12}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2412
    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v8, v12}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v8

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-nez v7, :cond_73

    if-eqz v8, :cond_73

    .line 2413
    invoke-static {v8}, Lcom/android/server/pm/AsecInstallHelper;->isExternal(Lcom/android/server/pm/PackageSetting;)Z

    move-result v7

    if-eqz v7, :cond_73

    new-array v7, v15, [I

    .line 2414
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v9

    aput v9, v7, v14

    .line 2415
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 2416
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2417
    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v10, v1, v9, v7}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/InstallPackageHelper;Ljava/util/ArrayList;[I)V

    invoke-virtual {v8, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2423
    :cond_73
    iget-object v7, v4, Lcom/android/server/pm/ReconciledPackage;->mPrepareResult:Lcom/android/server/pm/PrepareResult;

    iget-boolean v7, v7, Lcom/android/server/pm/PrepareResult;->mReplace:Z

    if-eqz v7, :cond_179

    .line 2424
    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v7, v12}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2427
    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v7

    .line 2428
    invoke-interface {v11}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v7

    .line 2429
    iget-object v8, v4, Lcom/android/server/pm/ReconciledPackage;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v9, v2, Lcom/android/server/pm/CommitRequest;->mAllUsers:[I

    .line 2430
    invoke-virtual {v8, v7, v9}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTimeFromReplaced(Lcom/android/server/pm/pkg/PackageStateInternal;[I)Lcom/android/server/pm/PackageSetting;

    move-result-object v8

    .line 2431
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;

    .line 2433
    iget-object v8, v13, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v9, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 2434
    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v9

    iget-object v14, v4, Lcom/android/server/pm/ReconciledPackage;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v15, v2, Lcom/android/server/pm/CommitRequest;->mAllUsers:[I

    move-object/from16 v16, v3

    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 2435
    invoke-virtual {v3}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v3

    .line 2433
    invoke-virtual {v10, v9, v14, v15, v3}, Lcom/android/server/pm/AppsFilterBase;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILcom/android/server/utils/WatchedArrayMap;)Landroid/util/SparseArray;

    move-result-object v3

    iput-object v3, v8, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    .line 2436
    iget-object v3, v4, Lcom/android/server/pm/ReconciledPackage;->mPrepareResult:Lcom/android/server/pm/PrepareResult;

    iget-boolean v3, v3, Lcom/android/server/pm/PrepareResult;->mSystem:Z

    const/4 v14, 0x0

    if-eqz v3, :cond_f2

    const/4 v3, 0x1

    .line 2438
    invoke-virtual {v0, v11, v3}, Lcom/android/server/pm/RemovePackageHelper;->removePackageLI(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    .line 2439
    invoke-virtual {v1, v11}, Lcom/android/server/pm/InstallPackageHelper;->disableSystemPackageLPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_ec

    .line 2444
    iget-object v0, v13, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2445
    invoke-interface {v11}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 2447
    invoke-static {v11, v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v6

    .line 2449
    invoke-static {v11, v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v7

    .line 2446
    invoke-static {v6, v7}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2444
    invoke-virtual {v3, v5, v6}, Lcom/android/server/pm/PackageManagerService;->createInstallArgsForExisting(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/pm/InstallArgs;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/InstallArgs;

    goto/16 :goto_17b

    .line 2461
    :cond_ec
    iget-object v0, v13, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iput-object v14, v0, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/InstallArgs;

    goto/16 :goto_17b

    .line 2466
    :cond_f2
    :try_start_f2
    iget-object v7, v4, Lcom/android/server/pm/ReconciledPackage;->mDeletePackageAction:Lcom/android/server/pm/DeletePackageAction;

    const/4 v9, 0x1

    iget-object v10, v2, Lcom/android/server/pm/CommitRequest;->mAllUsers:[I
    :try_end_f7
    .catch Lcom/android/server/pm/SystemDeleteException; {:try_start_f2 .. :try_end_f7} :catch_101

    const/4 v0, 0x0

    move-object v8, v12

    move-object v3, v11

    move v11, v0

    :try_start_fb
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/pm/DeletePackageHelper;->executeDeletePackageLIF(Lcom/android/server/pm/DeletePackageAction;Ljava/lang/String;Z[IZ)V
    :try_end_fe
    .catch Lcom/android/server/pm/SystemDeleteException; {:try_start_fb .. :try_end_fe} :catch_ff

    goto :goto_109

    :catch_ff
    move-exception v0

    goto :goto_103

    :catch_101
    move-exception v0

    move-object v3, v11

    .line 2470
    :goto_103
    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v6, v6, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    if-nez v6, :cond_171

    .line 2477
    :goto_109
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v6, v4, Lcom/android/server/pm/ReconciledPackage;->mPrepareResult:Lcom/android/server/pm/PrepareResult;

    iget-object v6, v6, Lcom/android/server/pm/PrepareResult;->mExistingPackage:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2478
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2477
    invoke-virtual {v0, v6}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 2479
    iget-object v6, v4, Lcom/android/server/pm/ReconciledPackage;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget v6, v6, Lcom/android/server/pm/InstallArgs;->mInstallFlags:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-nez v6, :cond_143

    .line 2481
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getOldCodePaths()Ljava/util/Set;

    move-result-object v6

    if-nez v6, :cond_12c

    .line 2483
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    :cond_12c
    new-array v8, v7, [Ljava/lang/String;

    .line 2485
    invoke-interface {v3}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-static {v6, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2486
    invoke-interface {v3}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2487
    invoke-virtual {v0, v6}, Lcom/android/server/pm/PackageSetting;->setOldCodePaths(Ljava/util/Set;)Lcom/android/server/pm/PackageSetting;

    goto :goto_146

    .line 2489
    :cond_143
    invoke-virtual {v0, v14}, Lcom/android/server/pm/PackageSetting;->setOldCodePaths(Ljava/util/Set;)Lcom/android/server/pm/PackageSetting;

    .line 2492
    :goto_146
    iget-object v0, v4, Lcom/android/server/pm/ReconciledPackage;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget v0, v0, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_17b

    .line 2494
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 2495
    invoke-interface {v5}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2494
    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-eqz v0, :cond_17b

    .line 2497
    iget-object v3, v13, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 2498
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16d

    const/4 v0, 0x1

    goto :goto_16e

    :cond_16d
    const/4 v0, 0x0

    :goto_16e
    iput-boolean v0, v3, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedForAllUsers:Z

    goto :goto_17b

    .line 2471
    :cond_171
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected failure"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_179
    move-object/from16 v16, v3

    .line 2504
    :cond_17b
    :goto_17b
    iget-object v0, v2, Lcom/android/server/pm/CommitRequest;->mAllUsers:[I

    invoke-virtual {v1, v4, v0}, Lcom/android/server/pm/InstallPackageHelper;->commitReconciledScanResultLocked(Lcom/android/server/pm/ReconciledPackage;[I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 2506
    iget-object v3, v2, Lcom/android/server/pm/CommitRequest;->mAllUsers:[I

    invoke-virtual {v1, v0, v4, v3, v13}, Lcom/android/server/pm/InstallPackageHelper;->updateSettingsLI(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/ReconciledPackage;[ILcom/android/server/pm/PackageInstalledInfo;)V

    .line 2508
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v12}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-eqz v0, :cond_1a4

    .line 2510
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v3

    iput-object v3, v13, Lcom/android/server/pm/PackageInstalledInfo;->mNewUsers:[I

    const/4 v3, 0x0

    .line 2511
    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageSetting;->setUpdateAvailable(Z)Lcom/android/server/pm/PackageSetting;

    goto :goto_1a5

    :cond_1a4
    const/4 v4, 0x1

    .line 2513
    :goto_1a5
    iget v3, v13, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    if-ne v3, v4, :cond_1b5

    .line 2514
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v13, Lcom/android/server/pm/PackageInstalledInfo;->mNewUsers:[I

    invoke-virtual {v3, v0, v4}, Lcom/android/server/pm/PackageManagerService;->updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V

    .line 2515
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/pm/PackageManagerService;->updateInstantAppInstallerLocked(Ljava/lang/String;)V

    :cond_1b5
    move-object/from16 v3, v16

    goto/16 :goto_e

    .line 2518
    :cond_1b9
    invoke-static {}, Landroid/app/ApplicationPackageManager;->invalidateGetPackagesForUidCache()V

    return-void
.end method

.method public commitReconciledScanResultLocked(Lcom/android/server/pm/ReconciledPackage;[I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 27
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mLock",
            "mPm.mInstallLock"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v7, p1

    .line 381
    iget-object v0, v7, Lcom/android/server/pm/ReconciledPackage;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 382
    iget-object v1, v0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    .line 384
    iget-object v2, v1, Lcom/android/server/pm/ScanRequest;->mParsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 385
    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_24

    .line 387
    iget-object v3, v8, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->getSdkVersion()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setVersionCode(I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v3

    .line 388
    invoke-interface {v3, v4}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setVersionCodeMajor(I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 391
    :cond_24
    iget-object v3, v1, Lcom/android/server/pm/ScanRequest;->mOldPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 392
    iget v5, v1, Lcom/android/server/pm/ScanRequest;->mParseFlags:I

    .line 393
    iget v6, v1, Lcom/android/server/pm/ScanRequest;->mScanFlags:I

    .line 394
    iget-object v9, v1, Lcom/android/server/pm/ScanRequest;->mOldPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 395
    iget-object v10, v1, Lcom/android/server/pm/ScanRequest;->mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 396
    iget-object v11, v1, Lcom/android/server/pm/ScanRequest;->mUser:Landroid/os/UserHandle;

    .line 397
    iget-object v12, v1, Lcom/android/server/pm/ScanRequest;->mRealPkgName:Ljava/lang/String;

    .line 398
    iget-object v13, v0, Lcom/android/server/pm/ScanResult;->mChangedAbiCodePath:Ljava/util/List;

    .line 400
    iget-object v14, v1, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    if-eqz v14, :cond_6d

    .line 401
    iget-object v15, v8, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v15, v14}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v14

    .line 403
    iget-object v15, v8, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, v0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v15, v4}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v4

    if-eqz v14, :cond_6b

    if-eq v14, v4, :cond_6b

    .line 408
    iget-object v4, v1, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v14, v4}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)Z

    .line 410
    iget-object v4, v8, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Lcom/android/server/pm/Settings;->checkAndPruneSharedUserLPw(Lcom/android/server/pm/SharedUserSetting;Z)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 412
    iget-object v4, v7, Lcom/android/server/pm/ReconciledPackage;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    if-eqz v4, :cond_6e

    iget-object v4, v4, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz v4, :cond_6e

    .line 414
    iget v14, v14, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    iput v14, v4, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedAppId:I

    goto :goto_6e

    :cond_6b
    const/4 v15, 0x0

    goto :goto_6e

    :cond_6d
    move v15, v4

    .line 420
    :cond_6e
    :goto_6e
    iget-boolean v4, v0, Lcom/android/server/pm/ScanResult;->mExistingSettingCopied:Z

    if-eqz v4, :cond_7b

    .line 421
    iget-object v1, v1, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 422
    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageSetting;->updateFrom(Lcom/android/server/pm/PackageSetting;)V

    :goto_79
    move-object v10, v1

    goto :goto_a6

    .line 424
    :cond_7b
    iget-object v1, v0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    if-eqz v10, :cond_9a

    .line 426
    iget-object v0, v8, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 427
    invoke-static {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRealPackageOrNull(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v4

    .line 428
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 426
    invoke-virtual {v0, v4, v14}, Lcom/android/server/pm/Settings;->addRenamedPackageLPw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 429
    iget-object v0, v8, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mTransferredPackages:Landroid/util/ArraySet;

    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_79

    .line 431
    :cond_9a
    iget-object v0, v8, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/pm/Settings;->removeRenamedPackageLPw(Ljava/lang/String;)V

    goto :goto_79

    .line 434
    :goto_a6
    iget-object v0, v8, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v10}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v0

    if-eqz v0, :cond_cd

    .line 436
    invoke-virtual {v0, v10}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    .line 437
    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isLeavingSharedUid()Z

    move-result v1

    if-eqz v1, :cond_cd

    const/4 v1, 0x2

    .line 438
    invoke-static {v1}, Lcom/android/server/pm/SharedUidMigration;->applyStrategy(I)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 439
    invoke-virtual {v0}, Lcom/android/server/pm/SharedUserSetting;->isSingleUser()Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 441
    iget-object v1, v8, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->convertSharedUserSettingsLPw(Lcom/android/server/pm/SharedUserSetting;)V

    .line 444
    :cond_cd
    iget-object v1, v7, Lcom/android/server/pm/ReconciledPackage;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    const/4 v4, 0x1

    if-eqz v1, :cond_d9

    iget-boolean v1, v1, Lcom/android/server/pm/InstallArgs;->mForceQueryableOverride:Z

    if-eqz v1, :cond_d9

    .line 446
    invoke-virtual {v10, v4}, Lcom/android/server/pm/PackageSetting;->setForceQueryableOverride(Z)Lcom/android/server/pm/PackageSetting;

    .line 451
    :cond_d9
    iget-object v1, v7, Lcom/android/server/pm/ReconciledPackage;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz v1, :cond_f8

    .line 452
    iget-object v1, v1, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 453
    iget-object v14, v1, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    if-eqz v14, :cond_f5

    .line 454
    iget-object v15, v8, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v15, v14}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v14

    if-eqz v14, :cond_f5

    .line 458
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getSignatures()Lcom/android/server/pm/PackageSignatures;

    move-result-object v14

    .line 457
    invoke-virtual {v1, v14}, Lcom/android/server/pm/InstallSource;->setInitiatingPackageSignatures(Lcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object v1

    .line 461
    :cond_f5
    invoke-virtual {v10, v1}, Lcom/android/server/pm/PackageSetting;->setInstallSource(Lcom/android/server/pm/InstallSource;)Lcom/android/server/pm/PackageSetting;

    .line 470
    :cond_f8
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v1

    invoke-interface {v2, v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setUid(I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 471
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->hideAsFinal()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v14

    .line 473
    iget-object v1, v8, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, v10, v9}, Lcom/android/server/pm/Settings;->writeUserRestrictionsLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V

    if-eqz v12, :cond_117

    .line 476
    iget-object v1, v8, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mTransferredPackages:Landroid/util/ArraySet;

    invoke-interface {v14}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 479
    :cond_117
    iget-object v1, v7, Lcom/android/server/pm/ReconciledPackage;->mCollectedSharedLibraryInfos:Ljava/util/ArrayList;

    if-nez v1, :cond_123

    if-eqz v9, :cond_138

    .line 480
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getUsesLibraryInfos()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_138

    .line 483
    :cond_123
    iget-object v1, v8, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v2, v7, Lcom/android/server/pm/ReconciledPackage;->mCollectedSharedLibraryInfos:Ljava/util/ArrayList;

    move-object/from16 v16, v1

    move-object/from16 v17, v14

    move-object/from16 v18, v10

    move-object/from16 v21, v2

    move-object/from16 v22, p2

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/pm/SharedLibrariesImpl;->executeSharedLibrariesUpdateLPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/ArrayList;[I)V

    .line 487
    :cond_138
    iget-object v1, v8, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v1

    .line 488
    iget-boolean v2, v7, Lcom/android/server/pm/ReconciledPackage;->mRemoveAppKeySetData:Z

    if-eqz v2, :cond_14b

    .line 489
    invoke-interface {v14}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/KeySetManagerService;->removeAppKeySetDataLPw(Ljava/lang/String;)V

    .line 491
    :cond_14b
    iget-boolean v1, v7, Lcom/android/server/pm/ReconciledPackage;->mSharedUserSignaturesChanged:Z

    if-eqz v1, :cond_159

    .line 492
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    .line 493
    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, v7, Lcom/android/server/pm/ReconciledPackage;->mSigningDetails:Landroid/content/pm/SigningDetails;

    iput-object v1, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 495
    :cond_159
    iget-object v0, v7, Lcom/android/server/pm/ReconciledPackage;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v10, v0}, Lcom/android/server/pm/PackageSetting;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/PackageSetting;

    if-eqz v13, :cond_185

    .line 497
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_185

    .line 498
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_16b
    if-ltz v0, :cond_185

    .line 499
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 501
    :try_start_173
    iget-object v2, v8, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 502
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getPreferredInstructionSet()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 501
    invoke-virtual {v2, v1, v12}, Lcom/android/server/pm/Installer;->rmdex(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_182
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_173 .. :try_end_182} :catch_182

    :catch_182
    add-int/lit8 v0, v0, -0x1

    goto :goto_16b

    :cond_185
    if-nez v11, :cond_189

    const/4 v11, 0x0

    goto :goto_18e

    .line 508
    :cond_189
    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    move v11, v0

    :goto_18e
    const/high16 v0, -0x80000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_196

    move/from16 v23, v4

    goto :goto_198

    :cond_196
    const/16 v23, 0x0

    :goto_198
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v3

    move-object v3, v10

    move-object v4, v9

    move v5, v6

    move/from16 v6, v23

    move-object/from16 v7, p1

    .line 510
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/InstallPackageHelper;->commitPackageSettings(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;IZLcom/android/server/pm/ReconciledPackage;)V

    .line 512
    invoke-virtual {v10, v11}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v0

    if-eqz v0, :cond_1b7

    .line 513
    iget-object v0, v8, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v1

    invoke-virtual {v0, v11, v1}, Lcom/android/server/pm/InstantAppRegistry;->addInstantApp(II)V

    .line 516
    :cond_1b7
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c6

    const/high16 v0, 0x3f800000    # 1.0f

    .line 517
    invoke-virtual {v10, v0}, Lcom/android/server/pm/PackageSetting;->setLoadingProgress(F)Lcom/android/server/pm/PackageSetting;

    :cond_1c6
    return-object v14
.end method

.method public final decompressPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mInstallLock"
        }
    .end annotation

    .line 4377
    invoke-static {p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->compressedFileExists(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_22

    .line 4378
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz p0, :cond_21

    .line 4379
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No files to decompress at: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-object v1

    .line 4384
    :cond_22
    invoke-static {v1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->getNextCodePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 4386
    invoke-static {p2, v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->decompressFiles(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_35

    .line 4388
    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->extractNativeBinaries(Ljava/io/File;Ljava/lang/String;)I

    move-result p2

    :cond_35
    if-ne p2, v2, :cond_5e

    .line 4395
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isSystemReady()Z

    move-result p1

    if-nez p1, :cond_54

    .line 4396
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    if-nez p2, :cond_4c

    .line 4397
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    .line 4399
    :cond_4c
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 4401
    :cond_54
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 4402
    invoke-static {p0, v0}, Lcom/android/internal/content/F2fsUtils;->releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V

    :goto_5d
    return-object v0

    .line 4405
    :cond_5e
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_65

    return-object v1

    .line 4408
    :cond_65
    new-instance p1, Lcom/android/server/pm/RemovePackageHelper;

    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p1, p0}, Lcom/android/server/pm/RemovePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-virtual {p1, v0}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePathLI(Ljava/io/File;)V

    return-object v1
.end method

.method public final disableStubPackage(Lcom/android/server/pm/DeletePackageAction;Lcom/android/server/pm/PackageSetting;[I)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mLock"
        }
    .end annotation

    .line 4462
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 4463
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 4462
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 4465
    iget-object p1, p1, Lcom/android/server/pm/DeletePackageAction;->mUser:Landroid/os/UserHandle;

    const/4 p2, -0x1

    if-nez p1, :cond_15

    move p1, p2

    goto :goto_19

    .line 4466
    :cond_15
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    :goto_19
    const-string v0, "android"

    const/4 v1, 0x2

    if-ne p1, p2, :cond_2a

    .line 4468
    array-length p1, p3

    const/4 p2, 0x0

    :goto_20
    if-ge p2, p1, :cond_2f

    aget v2, p3, p2

    .line 4469
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_20

    :cond_2a
    if-ltz p1, :cond_2f

    .line 4472
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    :cond_2f
    return-void
.end method

.method public final disableSystemPackageLPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mLock"
        }
    .end annotation

    .line 2523
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->disableSystemPackageLPw(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final doesSignatureMatchForPermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/ParsedPackage;I)Z
    .registers 9

    .line 2279
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 2280
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 2281
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v2

    .line 2282
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v3

    .line 2283
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_66

    if-nez v1, :cond_23

    .line 2286
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    goto :goto_27

    :cond_23
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    .line 2287
    :goto_27
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 2288
    invoke-virtual {v2, v1, v3, p3}, Lcom/android/server/pm/KeySetManagerService;->shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/SharedUserApi;I)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 2290
    invoke-virtual {v2, v1, p2}, Lcom/android/server/pm/KeySetManagerService;->checkUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result p0

    return p0

    .line 2297
    :cond_3c
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    const/4 p3, 0x4

    .line 2296
    invoke-virtual {v0, p1, p3}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_49

    return v2

    .line 2300
    :cond_49
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result p1

    if-eqz p1, :cond_64

    .line 2305
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter p0

    .line 2306
    :try_start_58
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageSetting;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/PackageSetting;

    .line 2307
    monitor-exit p0

    return v2

    :catchall_61
    move-exception p1

    monitor-exit p0
    :try_end_63
    .catchall {:try_start_58 .. :try_end_63} :catchall_61

    throw p1

    :cond_64
    const/4 p0, 0x0

    return p0

    :catchall_66
    move-exception p0

    .line 2283
    :try_start_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw p0
.end method

.method public enableCompressedPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Z
    .registers 15

    .line 4276
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getDefParseFlags()I

    move-result v0

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x40

    .line 4278
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4280
    :try_start_12
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 4281
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "setEnabledSetting"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v4
    :try_end_1f
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_12 .. :try_end_1f} :catch_8a
    .catchall {:try_start_12 .. :try_end_1f} :catchall_87

    .line 4282
    :try_start_1f
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/pm/InstallPackageHelper;->installStubPackageLI(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 4283
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v5, v0}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataAfterInstallLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 4284
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v5, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v11
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_7b

    .line 4286
    :try_start_2d
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 4288
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    move-object v6, v0

    move-object v7, p2

    .line 4286
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/SharedLibrariesImpl;->updateSharedLibrariesLPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)V
    :try_end_3e
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2d .. :try_end_3e} :catch_41
    .catchall {:try_start_2d .. :try_end_3e} :catchall_3f

    goto :goto_4a

    :catchall_3f
    move-exception p2

    goto :goto_79

    :catch_41
    move-exception p2

    :try_start_42
    const-string v5, "PackageManager"

    const-string/jumbo v6, "updateAllSharedLibrariesLPw failed: "

    .line 4290
    invoke-static {v5, v6, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4292
    :goto_4a
    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    sget-object v5, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->DEFAULT:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    const/4 v6, -0x1

    invoke-interface {p2, v0, v6, v5, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onPackageInstalled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V

    .line 4296
    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP()V

    .line 4299
    monitor-exit v11
    :try_end_5a
    .catchall {:try_start_42 .. :try_end_5a} :catchall_3f

    if-eqz v4, :cond_5f

    .line 4300
    :try_start_5c
    invoke-virtual {v4}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_5f
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_5c .. :try_end_5f} :catch_8a
    .catchall {:try_start_5c .. :try_end_5f} :catchall_87

    .line 4331
    :cond_5f
    :try_start_5f
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    const/16 p2, 0x27

    invoke-virtual {p1, v0, v6, p2}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V

    .line 4334
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 4335
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v0

    .line 4334
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/dex/DexManager;->notifyPackageUpdated(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 4336
    monitor-exit v1
    :try_end_78
    .catchall {:try_start_5f .. :try_end_78} :catchall_87

    return v2

    .line 4299
    :goto_79
    :try_start_79
    monitor-exit v11
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_3f

    :try_start_7a
    throw p2
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_7b

    :catchall_7b
    move-exception p2

    if-eqz v4, :cond_86

    .line 4280
    :try_start_7e
    invoke-virtual {v4}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_82

    goto :goto_86

    :catchall_82
    move-exception v0

    :try_start_83
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_86
    :goto_86
    throw p2
    :try_end_87
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_83 .. :try_end_87} :catch_8a
    .catchall {:try_start_83 .. :try_end_87} :catchall_87

    :catchall_87
    move-exception p0

    goto/16 :goto_151

    :catch_8a
    const/4 p2, 0x2

    .line 4302
    :try_start_8b
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 4303
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "setEnabledSetting"

    invoke-virtual {v0, v4, v5}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v0
    :try_end_98
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_8b .. :try_end_98} :catch_f1
    .catchall {:try_start_8b .. :try_end_98} :catchall_ef

    .line 4304
    :try_start_98
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v4
    :try_end_9d
    .catchall {:try_start_98 .. :try_end_9d} :catchall_e3

    .line 4307
    :try_start_9d
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/Settings;->enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 4308
    monitor-exit v4
    :try_end_a9
    .catchall {:try_start_9d .. :try_end_a9} :catchall_e0

    .line 4309
    :try_start_a9
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 4310
    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v5

    const/4 v6, 0x0

    .line 4309
    invoke-virtual {p0, v4, v5, v6, v2}, Lcom/android/server/pm/InstallPackageHelper;->installPackageFromSystemLIF(Ljava/lang/String;[I[IZ)V
    :try_end_b9
    .catchall {:try_start_a9 .. :try_end_b9} :catchall_e3

    if-eqz v0, :cond_be

    .line 4313
    :try_start_bb
    invoke-virtual {v0}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_be
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_bb .. :try_end_be} :catch_f1
    .catchall {:try_start_bb .. :try_end_be} :catchall_ef

    .line 4319
    :cond_be
    :try_start_be
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0
    :try_end_c3
    .catchall {:try_start_be .. :try_end_c3} :catchall_87

    .line 4320
    :try_start_c3
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 4321
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 4320
    invoke-virtual {v2, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p1

    if-eqz p1, :cond_d6

    const-string v2, "android"

    .line 4323
    invoke-virtual {p1, p2, v3, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 4326
    :cond_d6
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP()V

    .line 4327
    monitor-exit v0

    goto :goto_12a

    :catchall_dd
    move-exception p0

    monitor-exit v0
    :try_end_df
    .catchall {:try_start_c3 .. :try_end_df} :catchall_dd

    :try_start_df
    throw p0
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_87

    :catchall_e0
    move-exception v2

    .line 4308
    :try_start_e1
    monitor-exit v4
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_e0

    :try_start_e2
    throw v2
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_e3

    :catchall_e3
    move-exception v2

    if-eqz v0, :cond_ee

    .line 4302
    :try_start_e6
    invoke-virtual {v0}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_e9
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_ea

    goto :goto_ee

    :catchall_ea
    move-exception v0

    :try_start_eb
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_ee
    :goto_ee
    throw v2
    :try_end_ef
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_eb .. :try_end_ef} :catch_f1
    .catchall {:try_start_eb .. :try_end_ef} :catchall_ef

    :catchall_ef
    move-exception v0

    goto :goto_12f

    :catch_f1
    move-exception v0

    :try_start_f2
    const-string v2, "PackageManager"

    .line 4315
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to restore system package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10c
    .catchall {:try_start_f2 .. :try_end_10c} :catchall_ef

    .line 4319
    :try_start_10c
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0
    :try_end_111
    .catchall {:try_start_10c .. :try_end_111} :catchall_87

    .line 4320
    :try_start_111
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 4321
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 4320
    invoke-virtual {v2, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p1

    if-eqz p1, :cond_124

    const-string v2, "android"

    .line 4323
    invoke-virtual {p1, p2, v3, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 4326
    :cond_124
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP()V

    .line 4327
    monitor-exit v0
    :try_end_12a
    .catchall {:try_start_111 .. :try_end_12a} :catchall_12c

    .line 4329
    :goto_12a
    :try_start_12a
    monitor-exit v1
    :try_end_12b
    .catchall {:try_start_12a .. :try_end_12b} :catchall_87

    return v3

    :catchall_12c
    move-exception p0

    .line 4327
    :try_start_12d
    monitor-exit v0
    :try_end_12e
    .catchall {:try_start_12d .. :try_end_12e} :catchall_12c

    :try_start_12e
    throw p0

    .line 4319
    :goto_12f
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2
    :try_end_134
    .catchall {:try_start_12e .. :try_end_134} :catchall_87

    .line 4320
    :try_start_134
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 4321
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 4320
    invoke-virtual {v4, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p1

    if-eqz p1, :cond_147

    const-string v4, "android"

    .line 4323
    invoke-virtual {p1, p2, v3, v4}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 4326
    :cond_147
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP()V

    .line 4327
    monitor-exit v2
    :try_end_14d
    .catchall {:try_start_134 .. :try_end_14d} :catchall_14e

    .line 4328
    :try_start_14d
    throw v0
    :try_end_14e
    .catchall {:try_start_14d .. :try_end_14e} :catchall_87

    :catchall_14e
    move-exception p0

    .line 4327
    :try_start_14f
    monitor-exit v2
    :try_end_150
    .catchall {:try_start_14f .. :try_end_150} :catchall_14e

    :try_start_150
    throw p0

    .line 4336
    :goto_151
    monitor-exit v1
    :try_end_152
    .catchall {:try_start_150 .. :try_end_152} :catchall_87

    throw p0
.end method

.method public final enableRestrictedSettings(Ljava/lang/String;I)V
    .registers 9

    .line 2756
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 2757
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p0

    .line 2758
    array-length v1, p0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_27

    aget v3, p0, v2

    .line 2759
    invoke-static {v3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    const/16 v4, 0x77

    const/4 v5, 0x2

    .line 2760
    invoke-virtual {v0, v4, v3, p1, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_27
    return-void
.end method

.method public final executePostCommitSteps(Lcom/android/server/pm/CommitRequest;)V
    .registers 24

    move-object/from16 v1, p0

    .line 3306
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v0, p1

    .line 3307
    iget-object v0, v0, Lcom/android/server/pm/CommitRequest;->mReconciledPackages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2cd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/pm/ReconciledPackage;

    .line 3308
    iget-object v0, v4, Lcom/android/server/pm/ReconciledPackage;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget v0, v0, Lcom/android/server/pm/ScanRequest;->mScanFlags:I

    and-int/lit16 v0, v0, 0x2000

    const/4 v6, 0x0

    if-eqz v0, :cond_2d

    const/4 v7, 0x1

    goto :goto_2e

    :cond_2d
    move v7, v6

    .line 3310
    :goto_2e
    iget-object v0, v4, Lcom/android/server/pm/ReconciledPackage;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v9

    .line 3311
    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 3312
    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 3313
    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    if-eqz v10, :cond_49

    .line 3314
    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_49

    const/16 v19, 0x1

    goto :goto_4b

    :cond_49
    move/from16 v19, v6

    .line 3318
    :goto_4b
    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v12

    .line 3319
    iget-object v10, v4, Lcom/android/server/pm/ReconciledPackage;->mPrepareResult:Lcom/android/server/pm/PrepareResult;

    iget-object v10, v10, Lcom/android/server/pm/PrepareResult;->mExistingPackage:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3320
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v13

    .line 3321
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v14

    .line 3323
    iget-object v11, v1, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v15, Lcom/android/server/SpqrService;

    invoke-virtual {v11, v15}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/SpqrService;

    if-nez v19, :cond_e2

    if-eqz v11, :cond_e2

    if-eqz v10, :cond_e2

    .line 3339
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/InstallPackageHelper;->isDexoptLimited()Z

    move-result v15

    if-nez v15, :cond_e2

    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3340
    invoke-static {v15}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v15

    if-nez v15, :cond_e2

    .line 3342
    invoke-virtual {v11, v8}, Lcom/android/server/SpqrService;->isInBlockList(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_e2

    if-nez v7, :cond_e2

    .line 3343
    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isDebuggable()Z

    move-result v15

    if-nez v15, :cond_e2

    const/16 v15, 0xb

    .line 3344
    invoke-static {v12, v15}, Lcom/android/server/pm/InstallPackageHelper;->apkHasNumOfDexFiles(Ljava/lang/String;I)Z

    move-result v15

    if-nez v15, :cond_e2

    const/16 v15, 0x1388

    if-lt v14, v15, :cond_9e

    const/16 v15, 0x176f

    if-le v14, v15, :cond_e2

    .line 3346
    :cond_9e
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 3347
    invoke-static {v8}, Landroid/os/Environment;->getDataRefProfilesDePackageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    .line 3348
    invoke-static {v5}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3349
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3350
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v16

    const-wide/16 v20, 0x0

    cmp-long v5, v16, v20

    if-lez v5, :cond_e2

    .line 3351
    invoke-interface {v10}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v5

    .line 3353
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    .line 3354
    invoke-interface {v10}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getVersionName()Ljava/lang/String;

    move-result-object v17

    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getVersionName()Ljava/lang/String;

    move-result-object v18

    move-object v10, v11

    move-object v11, v5

    move-object v15, v8

    .line 3352
    invoke-virtual/range {v10 .. v18}, Lcom/android/server/SpqrService;->createInvariantProfileLI(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    goto :goto_e3

    :cond_e2
    move v5, v6

    :goto_e3
    if-eqz v19, :cond_108

    .line 3360
    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    invoke-virtual {v10, v0}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    move-result-object v0

    if-eqz v0, :cond_f1

    .line 3365
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_108

    .line 3362
    :cond_f1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Install: null storage for incremental package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3368
    :cond_108
    :goto_108
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v0, v9, v6}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataPostCommitLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    .line 3369
    iget-object v0, v4, Lcom/android/server/pm/ReconciledPackage;->mPrepareResult:Lcom/android/server/pm/PrepareResult;

    iget-boolean v0, v0, Lcom/android/server/pm/PrepareResult;->mClearCodeCache:Z

    if-eqz v0, :cond_11b

    .line 3370
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    const/4 v10, -0x1

    const/16 v11, 0x27

    invoke-virtual {v0, v9, v10, v11}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V

    .line 3374
    :cond_11b
    iget-object v0, v4, Lcom/android/server/pm/ReconciledPackage;->mPrepareResult:Lcom/android/server/pm/PrepareResult;

    iget-boolean v0, v0, Lcom/android/server/pm/PrepareResult;->mReplace:Z

    if-eqz v0, :cond_132

    .line 3375
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 3376
    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v12

    .line 3375
    invoke-virtual {v0, v10, v11, v12}, Lcom/android/server/pm/dex/DexManager;->notifyPackageUpdated(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3380
    :cond_132
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    iget-object v10, v4, Lcom/android/server/pm/ReconciledPackage;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget v10, v10, Lcom/android/server/pm/InstallArgs;->mInstallScenario:I

    .line 3381
    invoke-virtual {v0, v10}, Lcom/android/server/pm/dex/DexManager;->getCompilationReasonForInstallScenario(I)I

    move-result v0

    .line 3390
    iget-object v10, v4, Lcom/android/server/pm/ReconciledPackage;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget v10, v10, Lcom/android/server/pm/InstallArgs;->mInstallReason:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_149

    const/4 v11, 0x3

    if-ne v10, v11, :cond_147

    goto :goto_149

    :cond_147
    move v10, v6

    goto :goto_14a

    :cond_149
    :goto_149
    const/4 v10, 0x1

    :goto_14a
    if-eqz v10, :cond_14f

    const/16 v10, 0x800

    goto :goto_150

    :cond_14f
    move v10, v6

    :goto_150
    or-int/lit16 v15, v10, 0x404

    if-eqz v5, :cond_163

    .line 3401
    new-instance v0, Lcom/android/server/pm/dex/DexoptOptions;

    const/16 v12, 0x15

    const/4 v14, 0x0

    const-string/jumbo v13, "speed-profile"

    move-object v10, v0

    move-object v11, v8

    move v5, v15

    invoke-direct/range {v10 .. v15}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_169

    :cond_163
    move v5, v15

    .line 3405
    new-instance v10, Lcom/android/server/pm/dex/DexoptOptions;

    invoke-direct {v10, v8, v0, v5}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    .line 3411
    :goto_169
    iget-object v0, v4, Lcom/android/server/pm/ReconciledPackage;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget v0, v0, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    const-string v11, "PackageManager"

    const/4 v12, 0x1

    if-ne v0, v12, :cond_1b3

    .line 3413
    :try_start_172
    invoke-static {}, Landroid/content/pm/ASKSManager;->getASKSManager()Landroid/content/pm/IASKSManager;

    move-result-object v0

    if-eqz v0, :cond_194

    .line 3414
    invoke-static {}, Landroid/content/pm/ASKSManager;->getASKSManager()Landroid/content/pm/IASKSManager;

    move-result-object v0

    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v4, Lcom/android/server/pm/ReconciledPackage;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v14, v14, Lcom/android/server/pm/InstallArgs;->mUser:Landroid/os/UserHandle;

    .line 3415
    invoke-virtual {v14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    move-result-object v13

    aget v13, v13, v6

    .line 3414
    invoke-interface {v0, v8, v12, v13}, Landroid/content/pm/IASKSManager;->postASKSsetup(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1b3

    :cond_194
    const-string v0, "ASKSManager.getASKSManager is null !"

    .line 3417
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_199
    .catch Landroid/os/RemoteException; {:try_start_172 .. :try_end_199} :catch_19a

    goto :goto_1b3

    :catch_19a
    move-exception v0

    .line 3420
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "RemoteException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3454
    :cond_1b3
    :goto_1b3
    iget-object v0, v4, Lcom/android/server/pm/ReconciledPackage;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget v0, v0, Lcom/android/server/pm/InstallArgs;->mInstallFlags:I

    const/high16 v12, 0x4000000

    and-int/2addr v0, v12

    if-eqz v0, :cond_1be

    const/4 v12, 0x1

    goto :goto_1bf

    :cond_1be
    move v12, v6

    .line 3460
    :goto_1bf
    invoke-static {}, Lcom/android/server/apphibernation/AppHibernationService;->isAppHibernationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1ea

    .line 3461
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v13, Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    .line 3462
    invoke-virtual {v0, v13}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    .line 3463
    invoke-virtual {v0, v8}, Lcom/android/server/apphibernation/AppHibernationManagerInternal;->isHibernatingGlobally(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1eb

    .line 3465
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", hibernated during installation"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1eb

    :cond_1ea
    move v0, v6

    :cond_1eb
    :goto_1eb
    if-eqz v7, :cond_1fc

    .line 3470
    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    .line 3472
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v13, "instant_app_dexopt_enabled"

    .line 3471
    invoke-static {v7, v13, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_210

    .line 3474
    :cond_1fc
    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isDebuggable()Z

    move-result v7

    if-nez v7, :cond_210

    if-nez v19, :cond_210

    if-nez v0, :cond_210

    .line 3477
    invoke-virtual {v10}, Lcom/android/server/pm/dex/DexoptOptions;->isCompilationEnabled()Z

    move-result v0

    if-eqz v0, :cond_210

    if-nez v12, :cond_210

    const/4 v0, 0x1

    goto :goto_211

    :cond_210
    move v0, v6

    :goto_211
    if-eqz v12, :cond_219

    const-string v7, "Skip dexopt by request"

    .line 3481
    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_220

    :cond_219
    if-nez v0, :cond_220

    const-string v7, "Skip dexopt"

    .line 3483
    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3485
    :cond_220
    :goto_220
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v7, :cond_250

    .line 3486
    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mSpeg:Lcom/android/server/SpegService;

    if-eqz v7, :cond_250

    if-eqz v0, :cond_22f

    if-eqz v12, :cond_22d

    goto :goto_22f

    :cond_22d
    move v12, v6

    goto :goto_230

    :cond_22f
    :goto_22f
    const/4 v12, 0x1

    :goto_230
    invoke-virtual {v1, v4, v12}, Lcom/android/server/pm/InstallPackageHelper;->isSpegSkipped(Lcom/android/server/pm/ReconciledPackage;Z)Z

    move-result v7

    if-nez v7, :cond_250

    .line 3487
    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mSpeg:Lcom/android/server/SpegService;

    iput-object v8, v7, Lcom/android/server/SpegService;->mPrevInstalledPkg:Ljava/lang/String;

    .line 3488
    invoke-virtual {v1, v4}, Lcom/android/server/pm/InstallPackageHelper;->spegLaunchApp(Lcom/android/server/pm/ReconciledPackage;)Z

    move-result v7

    if-eqz v7, :cond_250

    .line 3489
    new-instance v7, Lcom/android/server/pm/dex/DexoptOptions;

    const/16 v12, 0x16

    const/4 v14, 0x0

    const-string/jumbo v13, "speed-profile"

    move-object v10, v7

    move-object v11, v8

    move v15, v5

    invoke-direct/range {v10 .. v15}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    move-object v14, v7

    goto :goto_251

    :cond_250
    move-object v14, v10

    .line 3499
    :goto_251
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v4, Lcom/android/server/pm/ReconciledPackage;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v10, v10, Lcom/android/server/pm/InstallArgs;->mUser:Landroid/os/UserHandle;

    .line 3501
    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    move-result-object v7

    const/4 v10, 0x1

    .line 3499
    invoke-virtual {v5, v9, v7, v10}, Lcom/android/server/pm/dex/ArtManagerService;->prepareAppProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[IZ)V

    if-eqz v0, :cond_2c0

    const-string/jumbo v0, "pm.precompile_layouts"

    .line 3507
    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-wide/32 v5, 0x40000

    if-eqz v0, :cond_280

    const-string v0, "compileLayouts"

    .line 3508
    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3509
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mViewCompiler:Lcom/android/server/pm/dex/ViewCompiler;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/dex/ViewCompiler;->compileLayouts(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    .line 3510
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    :cond_280
    const-string v0, "dexopt"

    .line 3513
    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3514
    iget-object v0, v4, Lcom/android/server/pm/ReconciledPackage;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 3522
    iget-boolean v7, v0, Lcom/android/server/pm/ScanResult;->mExistingSettingCopied:Z

    if-eqz v7, :cond_290

    .line 3523
    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v0, v0, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    goto :goto_292

    :cond_290
    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    :goto_292
    if-nez v0, :cond_296

    .line 3525
    iget-object v0, v4, Lcom/android/server/pm/ReconciledPackage;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    :cond_296
    move-object v10, v0

    .line 3529
    iget-object v0, v4, Lcom/android/server/pm/ReconciledPackage;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    .line 3530
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v0

    .line 3532
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUpdatedSystemApp(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 3534
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    const/4 v11, 0x0

    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 3536
    invoke-virtual {v7, v9}, Lcom/android/server/pm/PackageManagerService;->getOrCreateCompilerPackageStats(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/CompilerStats$PackageStats;

    move-result-object v12

    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 3537
    invoke-virtual {v7, v8}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v13

    move-object v7, v8

    move-object v8, v0

    .line 3534
    invoke-virtual/range {v8 .. v14}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOpt(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    .line 3539
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_2c1

    :cond_2c0
    move-object v7, v8

    .line 3546
    :goto_2c1
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->getService()Lcom/android/server/pm/BackgroundDexOptService;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackageChanged(Ljava/lang/String;)V

    .line 3548
    invoke-virtual {v1, v4}, Lcom/android/server/pm/InstallPackageHelper;->notifyPackageChangeObserversOnUpdate(Lcom/android/server/pm/ReconciledPackage;)V

    goto/16 :goto_13

    .line 3550
    :cond_2cd
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->waitForNativeBinariesExtractionForIncremental(Landroid/util/ArraySet;)V

    return-void
.end method

.method public final freezePackageForInstall(Ljava/lang/String;IILjava/lang/String;)Lcom/android/server/pm/PackageFreezer;
    .registers 5

    and-int/lit16 p3, p3, 0x1000

    if-eqz p3, :cond_c

    .line 2381
    new-instance p1, Lcom/android/server/pm/PackageFreezer;

    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p1, p0}, Lcom/android/server/pm/PackageFreezer;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-object p1

    .line 2383
    :cond_c
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    move-result-object p0

    return-object p0
.end method

.method public final freezePackageForInstall(Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/pm/PackageFreezer;
    .registers 5

    const/4 v0, -0x1

    .line 2375
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/pm/InstallPackageHelper;->freezePackageForInstall(Ljava/lang/String;IILjava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    move-result-object p0

    return-object p0
.end method

.method public final getIPackageManager()Landroid/content/pm/IPackageManager;
    .registers 1

    .line 3174
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    return-object p0
.end method

.method public final getOriginalPackageLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mLock"
        }
    .end annotation

    .line 5467
    invoke-static {p1, p2}, Lcom/android/server/pm/ScanPackageUtils;->isPackageRenamed(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    return-object v0

    .line 5470
    :cond_8
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getOriginalPackages()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_12
    if-ltz p2, :cond_8c

    .line 5471
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 5472
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getOriginalPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    if-eqz v1, :cond_89

    .line 5476
    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/InstallPackageHelper;->verifyPackageUpdateLPr(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_89

    .line 5479
    :cond_2f
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v2

    if-eqz v2, :cond_88

    .line 5480
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 5481
    invoke-virtual {v2, v1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    .line 5482
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSharedUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_88

    .line 5484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to migrate data from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5485
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": old shared user settings name "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " differs from "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5487
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSharedUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    .line 5484
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    :cond_88
    return-object v1

    :cond_89
    :goto_89
    add-int/lit8 p2, p2, -0x1

    goto :goto_12

    :cond_8c
    return-object v0
.end method

.method public getUidForVerifier(Landroid/content/pm/VerifierInfo;)I
    .registers 6

    .line 3729
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 3730
    :try_start_5
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p1, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    const/4 v1, -0x1

    if-nez p0, :cond_16

    .line 3732
    monitor-exit v0

    return v1

    .line 3733
    :cond_16
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_41

    const-string p0, "PackageManager"

    .line 3734
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verifier package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has more than one signature; ignoring"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3736
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_87

    return v1

    .line 3747
    :cond_41
    :try_start_41
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 3748
    invoke-virtual {v2}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 3749
    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2
    :try_end_54
    .catch Ljava/security/cert/CertificateException; {:try_start_41 .. :try_end_54} :catch_85
    .catchall {:try_start_41 .. :try_end_54} :catchall_87

    .line 3754
    :try_start_54
    iget-object v3, p1, Landroid/content/pm/VerifierInfo;->publicKey:Ljava/security/PublicKey;

    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    .line 3756
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_7f

    const-string p0, "PackageManager"

    .line 3757
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verifier package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not have the expected public key; ignoring"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3759
    monitor-exit v0

    return v1

    .line 3762
    :cond_7f
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result p0

    monitor-exit v0

    return p0

    .line 3751
    :catch_85
    monitor-exit v0

    return v1

    :catchall_87
    move-exception p0

    .line 3763
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_54 .. :try_end_89} :catchall_87

    throw p0
.end method

.method public final getUnknownSourcesSettings()I
    .registers 4

    .line 4203
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "install_non_market_apps"

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public handlePackagePostInstall(Lcom/android/server/pm/PackageInstalledInfo;Lcom/android/server/pm/InstallArgs;Z)V
    .registers 39

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 3816
    iget v0, v3, Lcom/android/server/pm/InstallArgs;->mInstallFlags:I

    and-int/lit16 v4, v0, 0x1000

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_10

    move v4, v6

    goto :goto_11

    :cond_10
    move v4, v5

    :goto_11
    const/high16 v7, 0x10000

    and-int/2addr v0, v7

    if-eqz v0, :cond_18

    move v11, v6

    goto :goto_19

    :cond_18
    move v11, v5

    .line 3820
    :goto_19
    iget-object v0, v3, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    .line 3821
    iget-object v15, v3, Lcom/android/server/pm/InstallArgs;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 3822
    iget v14, v3, Lcom/android/server/pm/InstallArgs;->mDataLoaderType:I

    .line 3823
    iget v7, v2, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    if-ne v7, v6, :cond_28

    move/from16 v16, v6

    goto :goto_2a

    :cond_28
    move/from16 v16, v5

    .line 3824
    :goto_2a
    iget-object v7, v2, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz v7, :cond_35

    iget-object v7, v7, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    if-eqz v7, :cond_35

    move/from16 v17, v6

    goto :goto_37

    :cond_35
    move/from16 v17, v5

    .line 3825
    :goto_37
    iget-object v13, v2, Lcom/android/server/pm/PackageInstalledInfo;->mName:Ljava/lang/String;

    const/4 v12, 0x0

    if-eqz v16, :cond_47

    .line 3827
    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v7

    invoke-interface {v7, v13}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v7

    goto :goto_48

    :cond_47
    move-object v7, v12

    :goto_48
    if-eqz v7, :cond_67

    .line 3829
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v8

    if-eqz v8, :cond_65

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v2, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3830
    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 3829
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_65

    goto :goto_67

    :cond_65
    move v8, v5

    goto :goto_68

    :cond_67
    :goto_67
    move v8, v6

    .line 3832
    :goto_68
    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v9, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/android/server/pm/AppsFilterImpl;->recomputeComponentVisibilityIfNeeded(Lcom/android/server/pm/snapshot/PackageDataSnapshot;)V

    if-eqz v16, :cond_b0

    if-eqz v8, :cond_b0

    const-string v0, "PackageManager"

    .line 3835
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " was removed before handlePackagePostInstall could be executed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x17

    .line 3837
    iput v0, v2, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    const-string v0, "Package was removed before install could complete."

    .line 3838
    iput-object v0, v2, Lcom/android/server/pm/PackageInstalledInfo;->mReturnMsg:Ljava/lang/String;

    .line 3841
    iget-object v0, v2, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz v0, :cond_9b

    iget-object v12, v0, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/InstallArgs;

    :cond_9b
    if-eqz v12, :cond_aa

    .line 3843
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3844
    :try_start_a2
    invoke-virtual {v12, v6}, Lcom/android/server/pm/InstallArgs;->doPostDeleteLI(Z)Z

    .line 3845
    monitor-exit v3

    goto :goto_aa

    :catchall_a7
    move-exception v0

    monitor-exit v3
    :try_end_a9
    .catchall {:try_start_a2 .. :try_end_a9} :catchall_a7

    throw v0

    .line 3847
    :cond_aa
    :goto_aa
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v2, v15}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/PackageInstalledInfo;Landroid/content/pm/IPackageInstallObserver2;)V

    return-void

    .line 3851
    :cond_b0
    sget-boolean v8, Lcom/samsung/android/rune/PMRune;->PM_ENABLE_GMS:Z

    if-eqz v8, :cond_d0

    if-eqz v7, :cond_d0

    .line 3853
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->isGMSPackage(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d0

    .line 3854
    new-instance v8, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;

    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;-><init>(Landroid/content/Context;)V

    .line 3855
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v2, Lcom/android/server/pm/PackageInstalledInfo;->mNewUsers:[I

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->setGmsEnabledPackage(Ljava/lang/String;[I)V

    :cond_d0
    if-eqz v16, :cond_4ba

    .line 3862
    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iput-object v12, v8, Lcom/android/server/pm/PackageManagerService;->mPerUidReadTimeoutsCache:[Landroid/os/incremental/PerUidReadTimeouts;

    .line 3865
    iget-object v8, v2, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz v8, :cond_106

    .line 3866
    iget-boolean v9, v8, Lcom/android/server/pm/PackageRemovedInfo;->mIsExternal:Z

    if-eqz v9, :cond_101

    new-array v9, v6, [I

    .line 3871
    iget v8, v8, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    aput v8, v9, v5

    .line 3872
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 3873
    iget-object v10, v2, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v10, v10, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3874
    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v23, 0x0

    move-object/from16 v18, v10

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    invoke-virtual/range {v18 .. v23}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcast(ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    .line 3877
    :cond_101
    iget-object v8, v2, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    invoke-virtual {v8, v4, v5}, Lcom/android/server/pm/PackageRemovedInfo;->sendPackageRemovedBroadcasts(ZZ)V

    .line 3881
    :cond_106
    iget-object v8, v2, Lcom/android/server/pm/PackageInstalledInfo;->mInstallerPackageName:Ljava/lang/String;

    if-eqz v8, :cond_10c

    :goto_10a
    move-object v10, v8

    goto :goto_114

    .line 3883
    :cond_10c
    iget-object v8, v2, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz v8, :cond_113

    .line 3884
    iget-object v8, v8, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    goto :goto_10a

    :cond_113
    move-object v10, v12

    .line 3887
    :goto_114
    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v2, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v12, v2, Lcom/android/server/pm/PackageInstalledInfo;->mNewUsers:[I

    invoke-virtual {v8, v9, v12}, Lcom/android/server/pm/PackageManagerService;->notifyInstantAppPackageInstalled(Ljava/lang/String;[I)V

    .line 3891
    sget-object v8, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    .line 3895
    iget-object v9, v2, Lcom/android/server/pm/PackageInstalledInfo;->mOrigUsers:[I

    if-eqz v9, :cond_12e

    array-length v9, v9

    if-nez v9, :cond_12b

    goto :goto_12e

    :cond_12b
    move/from16 v29, v5

    goto :goto_130

    :cond_12e
    :goto_12e
    move/from16 v29, v6

    .line 3896
    :goto_130
    iget-object v9, v2, Lcom/android/server/pm/PackageInstalledInfo;->mNewUsers:[I

    array-length v12, v9

    move-object v3, v8

    move-object v6, v3

    move-object/from16 v19, v10

    move v10, v5

    move-object v5, v6

    :goto_139
    if-ge v10, v12, :cond_19a

    move/from16 v20, v12

    aget v12, v9, v10

    .line 3897
    invoke-interface {v7, v12}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v21

    .line 3898
    invoke-interface/range {v21 .. v21}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v21

    if-eqz v29, :cond_15b

    if-eqz v21, :cond_150

    .line 3901
    invoke-static {v6, v12}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v6

    goto :goto_154

    .line 3903
    :cond_150
    invoke-static {v8, v12}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v8

    :goto_154
    move-object/from16 v22, v7

    move-object/from16 v23, v9

    move/from16 v24, v14

    goto :goto_18f

    :cond_15b
    move-object/from16 v22, v7

    .line 3908
    iget-object v7, v2, Lcom/android/server/pm/PackageInstalledInfo;->mOrigUsers:[I

    move-object/from16 v23, v9

    array-length v9, v7

    move/from16 v24, v14

    const/4 v14, 0x0

    :goto_165
    if-ge v14, v9, :cond_174

    move/from16 v25, v9

    aget v9, v7, v14

    if-ne v9, v12, :cond_16f

    const/4 v7, 0x0

    goto :goto_175

    :cond_16f
    add-int/lit8 v14, v14, 0x1

    move/from16 v9, v25

    goto :goto_165

    :cond_174
    const/4 v7, 0x1

    :goto_175
    if-eqz v7, :cond_184

    if-eqz v21, :cond_17e

    .line 3916
    invoke-static {v6, v12}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v6

    goto :goto_18f

    .line 3918
    :cond_17e
    invoke-static {v8, v12}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v7

    move-object v8, v7

    goto :goto_18f

    :cond_184
    if-eqz v21, :cond_18b

    .line 3922
    invoke-static {v3, v12}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    goto :goto_18f

    .line 3924
    :cond_18b
    invoke-static {v5, v12}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    :goto_18f
    add-int/lit8 v10, v10, 0x1

    move/from16 v12, v20

    move-object/from16 v7, v22

    move-object/from16 v9, v23

    move/from16 v14, v24

    goto :goto_139

    :cond_19a
    move/from16 v24, v14

    .line 3930
    iget-object v7, v2, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3c0

    .line 3931
    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mProcessLoggingHandler:Lcom/android/server/pm/ProcessLoggingHandler;

    iget-object v9, v2, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/pm/ProcessLoggingHandler;->invalidateBaseApkHash(Ljava/lang/String;)V

    .line 3935
    iget v7, v2, Lcom/android/server/pm/PackageInstalledInfo;->mUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    .line 3936
    iget-object v7, v2, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v7

    .line 3937
    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v10

    if-nez v7, :cond_1ca

    if-eqz v11, :cond_1c8

    goto :goto_1ca

    :cond_1c8
    const/4 v14, 0x0

    goto :goto_1cb

    :cond_1ca
    :goto_1ca
    const/4 v14, 0x1

    :goto_1cb
    move-object v7, v9

    move-object v9, v8

    move-object v8, v10

    move-object v10, v9

    move-object v9, v13

    move/from16 v30, v4

    move-object/from16 v31, v10

    move-object/from16 v4, v19

    move v10, v14

    const/4 v14, 0x0

    move-object/from16 v32, v4

    move-object v4, v13

    move-object/from16 v13, v31

    move-object/from16 v33, v3

    move-object v3, v14

    move/from16 v18, v24

    move-object v14, v6

    move-object/from16 v34, v15

    move/from16 v15, v18

    invoke-virtual/range {v7 .. v15}, Lcom/android/server/pm/PackageManagerService;->sendPackageAddedForNewUsers(Lcom/android/server/pm/Computer;Ljava/lang/String;ZZI[I[II)V

    .line 3942
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    if-eqz v0, :cond_213

    const-string v8, "com.android.vending"

    .line 3946
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_213

    const-string v8, "certificate_policy"

    .line 3948
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 3947
    invoke-static {v8}, Lcom/samsung/android/knox/keystore/ICertificatePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v8

    if-eqz v8, :cond_213

    const/4 v9, 0x0

    .line 3950
    :try_start_206
    invoke-interface {v8, v3, v9}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isSignatureIdentityInformationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v8

    if-eqz v8, :cond_213

    const-string/jumbo v8, "isMarketInstallation"

    const/4 v9, 0x1

    .line 3951
    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_213
    .catch Landroid/os/RemoteException; {:try_start_206 .. :try_end_213} :catch_213

    :catch_213
    :cond_213
    const-string v8, "android.intent.extra.UID"

    .line 3958
    iget v9, v2, Lcom/android/server/pm/PackageInstalledInfo;->mUid:I

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v17, :cond_222

    const-string v8, "android.intent.extra.REPLACING"

    const/4 v9, 0x1

    .line 3960
    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_222
    const-string v8, "android.content.pm.extra.DATA_LOADER_TYPE"

    move/from16 v9, v18

    .line 3962
    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3965
    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v8

    .line 3966
    :try_start_22e
    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v9

    .line 3967
    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    const/16 v11, 0x3e8

    .line 3968
    invoke-interface {v9, v4, v11}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    iget-object v12, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 3969
    invoke-virtual {v12}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v12

    .line 3967
    invoke-virtual {v10, v9, v11, v5, v12}, Lcom/android/server/pm/AppsFilterBase;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILcom/android/server/utils/WatchedArrayMap;)Landroid/util/SparseArray;

    move-result-object v27

    .line 3970
    monitor-exit v8
    :try_end_24b
    .catchall {:try_start_22e .. :try_end_24b} :catchall_3bd

    .line 3971
    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v19, "android.intent.action.PACKAGE_ADDED"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v28, 0x0

    move-object/from16 v18, v8

    move-object/from16 v20, v4

    move-object/from16 v21, v7

    move-object/from16 v25, v5

    move-object/from16 v26, v33

    invoke-virtual/range {v18 .. v28}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    if-eqz v32, :cond_281

    .line 3977
    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v19, "android.intent.action.PACKAGE_ADDED"

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v18, v8

    move-object/from16 v20, v4

    move-object/from16 v21, v7

    move-object/from16 v23, v32

    move-object/from16 v25, v5

    move-object/from16 v26, v33

    invoke-virtual/range {v18 .. v28}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 3984
    :cond_281
    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    move-object/from16 v12, v32

    if-eqz v8, :cond_291

    .line 3985
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_291

    const/4 v8, 0x1

    goto :goto_292

    :cond_291
    const/4 v8, 0x0

    :goto_292
    if-eqz v8, :cond_2b1

    .line 3987
    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v19, "android.intent.action.PACKAGE_ADDED"

    const/16 v22, 0x0

    iget-object v10, v9, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v18, v9

    move-object/from16 v20, v4

    move-object/from16 v21, v7

    move-object/from16 v23, v10

    move-object/from16 v25, v5

    move-object/from16 v26, v33

    invoke-virtual/range {v18 .. v28}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 3994
    :cond_2b1
    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v9, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    if-eqz v10, :cond_2d0

    const-string v19, "android.intent.action.PACKAGE_ADDED"

    const/high16 v22, 0x1000000

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v18, v9

    move-object/from16 v20, v4

    move-object/from16 v21, v7

    move-object/from16 v23, v10

    move-object/from16 v25, v31

    move-object/from16 v26, v33

    .line 3995
    invoke-virtual/range {v18 .. v28}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    :cond_2d0
    if-eqz v17, :cond_353

    .line 4003
    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v19, "android.intent.action.PACKAGE_REPLACED"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    iget-object v9, v2, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v9, v9, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    const/16 v28, 0x0

    move-object/from16 v18, v6

    move-object/from16 v20, v4

    move-object/from16 v21, v7

    move-object/from16 v25, v5

    move-object/from16 v26, v33

    move-object/from16 v27, v9

    invoke-virtual/range {v18 .. v28}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    if-eqz v12, :cond_30e

    .line 4009
    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v19, "android.intent.action.PACKAGE_REPLACED"

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v18, v6

    move-object/from16 v20, v4

    move-object/from16 v21, v7

    move-object/from16 v23, v12

    move-object/from16 v25, v5

    move-object/from16 v26, v33

    invoke-virtual/range {v18 .. v28}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    :cond_30e
    if-eqz v8, :cond_32d

    .line 4016
    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v19, "android.intent.action.PACKAGE_REPLACED"

    const/16 v22, 0x0

    iget-object v8, v6, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v18, v6

    move-object/from16 v20, v4

    move-object/from16 v21, v7

    move-object/from16 v23, v8

    move-object/from16 v25, v5

    move-object/from16 v26, v33

    invoke-virtual/range {v18 .. v28}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 4022
    :cond_32d
    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v19, "android.intent.action.MY_PACKAGE_REPLACED"

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x0

    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    const/16 v8, 0x137

    .line 4027
    invoke-virtual {v7, v8}, Lcom/android/server/pm/BroadcastHelper;->getTemporaryAppAllowlistBroadcastOptions(I)Landroid/app/BroadcastOptions;

    move-result-object v7

    .line 4028
    invoke-virtual {v7}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v28

    move-object/from16 v18, v6

    move-object/from16 v23, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v33

    .line 4022
    invoke-virtual/range {v18 .. v28}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    goto :goto_365

    :cond_353
    if-eqz p3, :cond_365

    .line 4029
    iget-object v5, v2, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v5

    if-nez v5, :cond_365

    .line 4036
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    move-object/from16 v7, v31

    invoke-virtual {v5, v4, v0, v7, v6}, Lcom/android/server/pm/BroadcastHelper;->sendFirstLaunchBroadcast(Ljava/lang/String;Ljava/lang/String;[I[I)V

    goto :goto_367

    :cond_365
    :goto_365
    move-object/from16 v7, v31

    .line 4041
    :goto_367
    iget-object v5, v2, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isExternalStorage()Z

    move-result v5

    if-eqz v5, :cond_3bb

    if-nez v17, :cond_39e

    .line 4043
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v6, Landroid/os/storage/StorageManager;

    .line 4044
    invoke-virtual {v5, v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 4045
    iget-object v6, v2, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4048
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getVolumeUuid()Ljava/lang/String;

    move-result-object v6

    .line 4047
    invoke-static {v6}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    .line 4048
    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4046
    invoke-virtual {v5, v6}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v5

    .line 4049
    iget-object v6, v2, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4051
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isExternalStorage()Z

    move-result v6

    .line 4050
    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageExternalStorageType(Landroid/os/storage/VolumeInfo;Z)I

    move-result v5

    if-eqz v5, :cond_39e

    const/16 v6, 0xb5

    .line 4054
    invoke-static {v6, v5, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;)V

    :cond_39e
    const/4 v5, 0x1

    new-array v12, v5, [I

    .line 4062
    iget-object v6, v2, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v6

    const/4 v14, 0x0

    aput v6, v12, v14

    .line 4063
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 4064
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4065
    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcast(ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    goto :goto_41b

    :cond_3bb
    const/4 v14, 0x0

    goto :goto_41b

    :catchall_3bd
    move-exception v0

    .line 3970
    :try_start_3be
    monitor-exit v8
    :try_end_3bf
    .catchall {:try_start_3be .. :try_end_3bf} :catchall_3bd

    throw v0

    :cond_3c0
    move/from16 v30, v4

    move-object v7, v8

    move-object v4, v13

    move-object/from16 v34, v15

    const/4 v3, 0x0

    const/4 v14, 0x0

    .line 4068
    iget-object v5, v2, Lcom/android/server/pm/PackageInstalledInfo;->mLibraryConsumers:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_41b

    .line 4070
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    if-nez v17, :cond_3e2

    .line 4071
    iget-object v6, v2, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3e2

    const/4 v6, 0x1

    goto :goto_3e3

    :cond_3e2
    move v6, v14

    :goto_3e3
    move v9, v14

    .line 4072
    :goto_3e4
    iget-object v8, v2, Lcom/android/server/pm/PackageInstalledInfo;->mLibraryConsumers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v9, v8, :cond_41b

    .line 4073
    iget-object v8, v2, Lcom/android/server/pm/PackageInstalledInfo;->mLibraryConsumers:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4075
    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v8}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v20

    new-instance v11, Ljava/util/ArrayList;

    .line 4076
    invoke-interface {v8}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4077
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v18, v10

    move-object/from16 v19, v5

    move/from16 v21, v6

    move-object/from16 v22, v11

    .line 4075
    invoke-virtual/range {v18 .. v24}, Lcom/android/server/pm/PackageManagerService;->sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3e4

    .line 4082
    :cond_41b
    :goto_41b
    array-length v5, v7

    if-lez v5, :cond_42c

    .line 4083
    array-length v5, v7

    move v9, v14

    :goto_420
    if-ge v9, v5, :cond_42c

    aget v6, v7, v9

    .line 4084
    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v8, v4, v6}, Lcom/android/server/pm/PackageManagerService;->restorePermissionsAndUpdateRolesForNewUserInstall(Ljava/lang/String;I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_420

    :cond_42c
    if-eqz v29, :cond_438

    if-nez v17, :cond_438

    .line 4090
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v6, v2, Lcom/android/server/pm/PackageInstalledInfo;->mUid:I

    invoke-virtual {v5, v4, v6}, Lcom/android/server/pm/PackageManagerService;->notifyPackageAdded(Ljava/lang/String;I)V

    goto :goto_43f

    .line 4092
    :cond_438
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v6, v2, Lcom/android/server/pm/PackageInstalledInfo;->mUid:I

    invoke-virtual {v5, v4, v6}, Lcom/android/server/pm/PackageManagerService;->notifyPackageChanged(Ljava/lang/String;I)V

    :goto_43f
    const/16 v5, 0xc26

    .line 4097
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/InstallPackageHelper;->getUnknownSourcesSettings()I

    move-result v6

    .line 4096
    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(II)I

    .line 4100
    iget-object v5, v2, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz v5, :cond_44f

    iget-object v12, v5, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/InstallArgs;

    goto :goto_450

    :cond_44f
    move-object v12, v3

    :goto_450
    if-eqz v12, :cond_468

    if-nez v30, :cond_45a

    .line 4107
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v12}, Lcom/android/server/pm/PackageManagerService;->scheduleDeferredNoKillPostDelete(Lcom/android/server/pm/InstallArgs;)V

    goto :goto_46f

    .line 4109
    :cond_45a
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v5, 0x1

    .line 4110
    :try_start_460
    invoke-virtual {v12, v5}, Lcom/android/server/pm/InstallArgs;->doPostDeleteLI(Z)Z

    .line 4111
    monitor-exit v3

    goto :goto_46f

    :catchall_465
    move-exception v0

    monitor-exit v3
    :try_end_467
    .catchall {:try_start_460 .. :try_end_467} :catchall_465

    throw v0

    .line 4116
    :cond_468
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->requestConcurrentGC()V

    .line 4119
    :goto_46f
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    .line 4125
    array-length v5, v7

    move v9, v14

    :goto_477
    if-ge v9, v5, :cond_48b

    aget v6, v7, v9

    const-wide/16 v10, 0x0

    .line 4126
    invoke-interface {v3, v4, v10, v11, v6}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v8

    if-eqz v8, :cond_488

    .line 4130
    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    invoke-virtual {v10, v8, v6}, Lcom/android/server/pm/dex/DexManager;->notifyPackageInstalled(Landroid/content/pm/PackageInfo;I)V

    :cond_488
    add-int/lit8 v9, v9, 0x1

    goto :goto_477

    .line 4134
    :cond_48b
    sget-boolean v3, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    if-eqz v3, :cond_4c0

    if-eqz v4, :cond_4c0

    .line 4135
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->isMonetizedPreloadApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4c0

    const-string v3, "PrePackageInstaller"

    .line 4136
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c0

    .line 4138
    iget-object v0, v2, Lcom/android/server/pm/PackageInstalledInfo;->mNewUsers:[I

    array-length v3, v0

    move v9, v14

    :goto_4a5
    if-ge v9, v3, :cond_4b0

    aget v5, v0, v9

    if-nez v5, :cond_4ad

    const/4 v0, 0x1

    goto :goto_4b1

    :cond_4ad
    add-int/lit8 v9, v9, 0x1

    goto :goto_4a5

    :cond_4b0
    move v0, v14

    :goto_4b1
    if-eqz v0, :cond_4c0

    .line 4145
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    const/4 v3, 0x1

    invoke-virtual {v0, v4, v3, v3, v3}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->updateSettingsForMonetization(Ljava/lang/String;ZZZ)V

    goto :goto_4c0

    :cond_4ba
    move/from16 v30, v4

    move v14, v5

    move-object v4, v13

    move-object/from16 v34, v15

    :cond_4c0
    :goto_4c0
    if-eqz v16, :cond_516

    if-eqz v17, :cond_516

    move-object/from16 v3, p2

    .line 4151
    iget-boolean v0, v3, Lcom/android/server/pm/InstallArgs;->needToMove:Z

    if-eqz v0, :cond_518

    .line 4153
    :try_start_4ca
    new-instance v0, Lcom/android/server/pm/AsecInstallHelper;

    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, v5}, Lcom/android/server/pm/AsecInstallHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 4154
    invoke-virtual {v0}, Lcom/android/server/pm/AsecInstallHelper;->getMountedExternalVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v5

    if-eqz v5, :cond_4ea

    .line 4155
    iget-object v6, v5, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;
    :try_end_4d9
    .catch Ljava/lang/RuntimeException; {:try_start_4ca .. :try_end_4d9} :catch_506
    .catch Landroid/os/RemoteException; {:try_start_4ca .. :try_end_4d9} :catch_4f6

    if-eqz v6, :cond_4ea

    move-object/from16 v6, v34

    .line 4156
    :try_start_4dd
    invoke-virtual {v0, v2, v6}, Lcom/android/server/pm/AsecInstallHelper;->setMoveCallback(Lcom/android/server/pm/PackageInstalledInfo;Landroid/content/pm/IPackageInstallObserver2;)V

    .line 4157
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/InstallPackageHelper;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v5, v5, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/pm/IPackageManager;->movePackage(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_536

    :cond_4ea
    move-object/from16 v6, v34

    .line 4159
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v2, v6}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/PackageInstalledInfo;Landroid/content/pm/IPackageInstallObserver2;)V
    :try_end_4f1
    .catch Ljava/lang/RuntimeException; {:try_start_4dd .. :try_end_4f1} :catch_4f4
    .catch Landroid/os/RemoteException; {:try_start_4dd .. :try_end_4f1} :catch_4f2

    goto :goto_536

    :catch_4f2
    move-exception v0

    goto :goto_4f9

    :catch_4f4
    move-exception v0

    goto :goto_509

    :catch_4f6
    move-exception v0

    move-object/from16 v6, v34

    :goto_4f9
    const-string v4, "PackageManager"

    const-string v5, "Automatic move failed"

    .line 4165
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4166
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v2, v6}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/PackageInstalledInfo;Landroid/content/pm/IPackageInstallObserver2;)V

    goto :goto_536

    :catch_506
    move-exception v0

    move-object/from16 v6, v34

    :goto_509
    const-string v4, "PackageManager"

    const-string v5, "Automatic move failed"

    .line 4162
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4163
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v2, v6}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/PackageInstalledInfo;Landroid/content/pm/IPackageInstallObserver2;)V

    goto :goto_536

    :cond_516
    move-object/from16 v3, p2

    :cond_518
    move-object/from16 v6, v34

    if-eqz v16, :cond_520

    if-eqz v17, :cond_520

    const/4 v5, 0x1

    goto :goto_521

    :cond_520
    move v5, v14

    :goto_521
    if-eqz v5, :cond_531

    if-eqz v30, :cond_52b

    .line 4172
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v2, v6}, Lcom/android/server/pm/PackageManagerService;->scheduleDeferredPendingKillInstallObserver(Lcom/android/server/pm/PackageInstalledInfo;Landroid/content/pm/IPackageInstallObserver2;)V

    goto :goto_536

    .line 4174
    :cond_52b
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v2, v6}, Lcom/android/server/pm/PackageManagerService;->scheduleDeferredNoKillInstallObserver(Lcom/android/server/pm/PackageInstalledInfo;Landroid/content/pm/IPackageInstallObserver2;)V

    goto :goto_536

    .line 4177
    :cond_531
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v2, v6}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/PackageInstalledInfo;Landroid/content/pm/IPackageInstallObserver2;)V

    .line 4182
    :goto_536
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService;->schedulePruneUnusedStaticSharedLibraries(Z)V

    .line 4185
    iget-object v0, v3, Lcom/android/server/pm/InstallArgs;->mTraceMethod:Ljava/lang/String;

    if-eqz v0, :cond_548

    const-wide/32 v4, 0x40000

    .line 4186
    iget v3, v3, Lcom/android/server/pm/InstallArgs;->mTraceCookie:I

    invoke-static {v4, v5, v0, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_548
    if-eqz v16, :cond_564

    .line 4190
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v3

    .line 4191
    :try_start_54f
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mMumInstallPolicy:Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;

    iget-object v1, v2, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4192
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 4191
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->applyInstallPolicyPackageAsUserLPw(Ljava/lang/String;I)V

    .line 4193
    monitor-exit v3

    goto :goto_564

    :catchall_561
    move-exception v0

    monitor-exit v3
    :try_end_563
    .catchall {:try_start_54f .. :try_end_563} :catchall_561

    throw v0

    :cond_564
    :goto_564
    return-void
.end method

.method public final hasUsesPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 5

    .line 2887
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesPermissions()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    move v0, p1

    .line 2888
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 2889
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedUsesPermission;

    .line 2890
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.knox.permission"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_23
    return p1
.end method

.method public final installApexPackages(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstallRequest;",
            ">;)V"
        }
    .end annotation

    .line 1118
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1121
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9d

    const/4 v0, 0x0

    .line 1125
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/InstallRequest;

    .line 1128
    :try_start_15
    iget-object v2, p1, Lcom/android/server/pm/InstallRequest;->mArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v2, v2, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v2, v2, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    .line 1129
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    const/16 v4, -0x6e

    if-eqz v3, :cond_6b

    .line 1134
    array-length v5, v3

    if-ne v5, v1, :cond_47

    .line 1139
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getScanningPackageParser()Lcom/android/server/pm/parsing/PackageParser2;

    move-result-object v1
    :try_end_2e
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_15 .. :try_end_2e} :catch_86

    .line 1140
    :try_start_2e
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    aget-object v0, v3, v0

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/ApexManager;->installPackage(Ljava/io/File;Lcom/android/server/pm/parsing/PackageParser2;)V
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_3b

    if-eqz v1, :cond_8e

    .line 1141
    :try_start_37
    invoke-virtual {v1}, Lcom/android/server/pm/parsing/PackageParser2;->close()V
    :try_end_3a
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_37 .. :try_end_3a} :catch_86

    goto :goto_8e

    :catchall_3b
    move-exception v0

    if-eqz v1, :cond_46

    .line 1139
    :try_start_3e
    invoke-virtual {v1}, Lcom/android/server/pm/parsing/PackageParser2;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_46

    :catchall_42
    move-exception v1

    :try_start_43
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_46
    :goto_46
    throw v0

    .line 1135
    :cond_47
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected exactly one .apex file under "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1131
    :cond_6b
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1132
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_86
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_43 .. :try_end_86} :catch_86

    :catch_86
    move-exception v0

    .line 1143
    iget-object v1, p1, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    const-string v2, "APEX installation failed"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/PackageInstalledInfo;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    .line 1145
    :cond_8e
    :goto_8e
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    .line 1146
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, p1, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget-object p1, p1, Lcom/android/server/pm/InstallRequest;->mArgs:Lcom/android/server/pm/InstallArgs;

    iget-object p1, p1, Lcom/android/server/pm/InstallArgs;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/PackageInstalledInfo;Landroid/content/pm/IPackageInstallObserver2;)V

    return-void

    .line 1122
    :cond_9d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Only a non-staged install of a single APEX is supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final installApexPackagesTraced(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstallRequest;",
            ">;)V"
        }
    .end annotation

    const-wide/32 v0, 0x40000

    :try_start_3
    const-string/jumbo v2, "installApexPackages"

    .line 1110
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1111
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->installApexPackages(Ljava/util/List;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    .line 1113
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1114
    throw p0
.end method

.method public installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;Landroid/content/IntentSender;)I
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/IntentSender;",
            ")I"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    .line 669
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 670
    iget-object v0, v7, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, v7, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    const-string v1, "com.android.permission.INSTALL_EXISTING_PACKAGES"

    .line 672
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    goto :goto_47

    .line 675
    :cond_21
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Neither user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " nor current process has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    :goto_47
    const/16 v0, 0x7d0

    const/16 v12, -0x6f

    if-ne v11, v0, :cond_70

    .line 681
    invoke-static {}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->isInMaintenanceMode()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 682
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->isRestrictedInstallRequest(I)Z

    move-result v0

    if-eqz v0, :cond_70

    const-string v0, "PackageManager"

    .line 683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to install-existing on user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    .line 689
    :cond_70
    iget-object v0, v7, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "installExistingPackage for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move v2, v11

    move/from16 v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 693
    iget-object v0, v7, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "no_install_apps"

    invoke-virtual {v0, v9, v1}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9c

    return v12

    .line 697
    :cond_9c
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isSpfKnoxSupported()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v12, 0x0

    if-eqz v0, :cond_c9

    .line 698
    iget-object v0, v7, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v11, v9, v12}, Lcom/android/server/pm/PersonaServiceHelper;->isCallerApprovedToInstall(Landroid/content/Context;IIZ)Z

    move-result v0

    if-nez v0, :cond_c9

    const-string v0, "PackageManager"

    .line 699
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "installExistingPackageAsUser the app with uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not installed via approved installer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_c9
    const-string v0, "PackageManager"

    .line 708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verifying app can be installed or not for user - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "application_policy"

    .line 711
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 710
    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    const/16 v13, -0x6e

    if-eqz v0, :cond_12d

    .line 713
    iget-object v2, v7, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2

    .line 714
    :try_start_f3
    iget-object v3, v7, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, v8}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 715
    monitor-exit v2
    :try_end_100
    .catchall {:try_start_f3 .. :try_end_100} :catchall_12a

    if-eqz v3, :cond_12d

    .line 717
    :try_start_102
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-eqz v2, :cond_12d

    .line 719
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    .line 718
    invoke-interface {v0, v8, v2, v3, v9}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationInstallationEnabled(Ljava/lang/String;[Landroid/content/pm/Signature;Ljava/util/List;I)Z

    move-result v0

    if-nez v0, :cond_12d

    const-string v0, "PackageManager"

    const-string v2, "This app installation is not allowed"

    .line 720
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_129
    .catch Landroid/os/RemoteException; {:try_start_102 .. :try_end_129} :catch_12d

    return v13

    :catchall_12a
    move-exception v0

    .line 715
    :try_start_12b
    monitor-exit v2
    :try_end_12c
    .catchall {:try_start_12b .. :try_end_12c} :catchall_12a

    throw v0

    :catch_12d
    :cond_12d
    const-string/jumbo v0, "restriction_policy"

    .line 728
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    const/4 v2, -0x3

    const/4 v14, 0x1

    if-eqz v0, :cond_188

    .line 731
    :try_start_13c
    invoke-interface {v0, v9, v14}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isNewAdminInstallationEnabledAsUser(IZ)Z

    move-result v3

    if-nez v3, :cond_188

    .line 732
    iget-object v3, v7, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v3
    :try_end_147
    .catch Landroid/os/RemoteException; {:try_start_13c .. :try_end_147} :catch_188

    .line 733
    :try_start_147
    iget-object v4, v7, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4, v8}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    if-nez v4, :cond_157

    .line 735
    monitor-exit v3

    return v2

    .line 737
    :cond_157
    iget-object v4, v7, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4, v8}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/android/server/pm/InstallPackageHelper;->isAdminApplication(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v4

    if-eqz v4, :cond_183

    .line 738
    invoke-interface {v0, v9, v8}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->checkPackageSource(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17c

    const-string v0, "PackageManager"

    const-string v4, "This admin app installation is not allowed"

    .line 739
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    monitor-exit v3

    return v13

    :cond_17c
    const-string v0, "PackageManager"

    const-string v4, "This admin app installation is allowed"

    .line 743
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_183
    monitor-exit v3

    goto :goto_188

    :catchall_185
    move-exception v0

    monitor-exit v3
    :try_end_187
    .catchall {:try_start_147 .. :try_end_187} :catchall_185

    :try_start_187
    throw v0
    :try_end_188
    .catch Landroid/os/RemoteException; {:try_start_187 .. :try_end_188} :catch_188

    .line 753
    :catch_188
    :cond_188
    :goto_188
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    and-int/lit16 v0, v10, 0x800

    if-eqz v0, :cond_192

    move v0, v14

    goto :goto_193

    :cond_192
    move v0, v12

    :goto_193
    and-int/lit16 v3, v10, 0x4000

    if-eqz v3, :cond_199

    move v3, v14

    goto :goto_19a

    :cond_199
    move v3, v12

    .line 762
    :goto_19a
    :try_start_19a
    iget-object v4, v7, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v4
    :try_end_19f
    .catchall {:try_start_19a .. :try_end_19f} :catchall_34b

    .line 763
    :try_start_19f
    iget-object v5, v7, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    .line 764
    iget-object v6, v7, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v8}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    if-nez v6, :cond_1b4

    .line 766
    monitor-exit v4
    :try_end_1b0
    .catchall {:try_start_19f .. :try_end_1b0} :catchall_348

    .line 862
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 771
    :cond_1b4
    :try_start_1b4
    invoke-static {v6}, Lcom/samsung/android/server/pm/MetaDataHelper;->getAppMetaBundle(Lcom/android/server/pm/PackageSetting;)Landroid/os/Bundle;

    move-result-object v1

    .line 770
    invoke-static {v1, v9}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->checkIfInstallExistingAllowed(Landroid/os/Bundle;I)I

    move-result v1

    if-eqz v1, :cond_1ed

    .line 773
    invoke-static {v1}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->notAllowedReasonToString(I)Ljava/lang/String;

    move-result-object v0

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Install failed. Not allowed to install due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " of Package "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for User "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    .line 776
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    monitor-exit v4
    :try_end_1e9
    .catchall {:try_start_1b4 .. :try_end_1e9} :catchall_348

    .line 862
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v13

    .line 781
    :cond_1ed
    :try_start_1ed
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isSpfKnoxSupported()Z

    move-result v1

    if-eqz v1, :cond_205

    .line 782
    invoke-static {v6, v9}, Lcom/android/server/pm/PersonaServiceHelper;->isDisallowedAppForKnox(Lcom/android/server/pm/PackageSetting;I)Z

    move-result v1

    if-eqz v1, :cond_205

    const-string v0, "This app installation is not allowed"

    const-string v1, "PackageManager"

    .line 784
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    monitor-exit v4
    :try_end_201
    .catchall {:try_start_1ed .. :try_end_201} :catchall_348

    .line 862
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v13

    .line 790
    :cond_205
    :try_start_205
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-interface {v5, v11, v1}, Lcom/android/server/pm/Computer;->canViewInstantApps(II)Z

    move-result v1

    if-nez v1, :cond_234

    .line 794
    iget-object v1, v7, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    array-length v5, v1

    move v11, v12

    move/from16 v17, v11

    :goto_21b
    if-ge v11, v5, :cond_22d

    aget v13, v1, v11

    .line 795
    invoke-virtual {v6, v13}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v13

    xor-int/lit8 v17, v13, 0x1

    if-eqz v17, :cond_228

    goto :goto_22d

    :cond_228
    add-int/lit8 v11, v11, 0x1

    const/16 v13, -0x6e

    goto :goto_21b

    :cond_22d
    :goto_22d
    if-nez v17, :cond_234

    .line 801
    monitor-exit v4
    :try_end_230
    .catchall {:try_start_205 .. :try_end_230} :catchall_348

    .line 862
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 804
    :cond_234
    :try_start_234
    invoke-virtual {v6, v9}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v1

    if-nez v1, :cond_25e

    .line 805
    invoke-virtual {v6, v14, v9}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 806
    invoke-virtual {v6, v12, v9}, Lcom/android/server/pm/PackageSetting;->setHidden(ZI)V

    move/from16 v1, p4

    .line 807
    invoke-virtual {v6, v1, v9}, Lcom/android/server/pm/PackageSetting;->setInstallReason(II)V

    .line 808
    invoke-virtual {v6, v12, v9}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    .line 809
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTime(JI)Lcom/android/server/pm/PackageSetting;

    .line 810
    iget-object v1, v7, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, v9}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 811
    iget-object v1, v7, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, v6}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    goto :goto_266

    :cond_25e
    if-eqz v3, :cond_268

    .line 813
    invoke-virtual {v6, v9}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v1

    if-eqz v1, :cond_268

    :goto_266
    move v1, v14

    goto :goto_269

    :cond_268
    move v1, v12

    .line 817
    :goto_269
    iget-object v2, v7, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-static {v2, v6, v9, v0, v3}, Lcom/android/server/pm/ScanPackageUtils;->setInstantAppForUser(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageSetting;IZZ)V

    .line 819
    monitor-exit v4
    :try_end_271
    .catchall {:try_start_234 .. :try_end_271} :catchall_348

    if-eqz v1, :cond_2fe

    .line 822
    :try_start_273
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_2b1

    .line 824
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;-><init>()V

    const/high16 v1, 0x400000

    and-int/2addr v1, v10

    if-eqz v1, :cond_28e

    .line 829
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    .line 828
    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->setAllowlistedRestrictedPermissions(Ljava/util/List;)V

    .line 831
    :cond_28e
    iget-object v1, v7, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 833
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->build()Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    move-result-object v0

    const/4 v3, -0x1

    .line 831
    invoke-interface {v1, v2, v3, v0, v9}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onPackageInstalled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V

    .line 835
    iget-object v0, v7, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2a3
    .catchall {:try_start_273 .. :try_end_2a3} :catchall_34b

    .line 837
    :try_start_2a3
    iget-object v0, v7, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataAfterInstallLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 838
    monitor-exit v1

    goto :goto_2b1

    :catchall_2ae
    move-exception v0

    monitor-exit v1
    :try_end_2b0
    .catchall {:try_start_2a3 .. :try_end_2b0} :catchall_2ae

    :try_start_2b0
    throw v0

    .line 840
    :cond_2b1
    :goto_2b1
    iget-object v1, v7, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    const/4 v0, 0x0

    move-object/from16 v3, p1

    move-object v4, v6

    move/from16 v5, p2

    move-object v10, v6

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->sendPackageAddedForUser(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;II)V

    .line 842
    iget-object v0, v7, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1
    :try_end_2c7
    .catchall {:try_start_2b0 .. :try_end_2c7} :catchall_34b

    .line 843
    :try_start_2c7
    iget-object v0, v7, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-array v2, v14, [I

    aput v9, v2, v12

    invoke-virtual {v0, v10, v2}, Lcom/android/server/pm/PackageManagerService;->updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V

    .line 844
    monitor-exit v1
    :try_end_2d1
    .catchall {:try_start_2c7 .. :try_end_2d1} :catchall_2fb

    .line 846
    :try_start_2d1
    new-instance v0, Lcom/android/server/pm/PackageInstalledInfo;

    invoke-direct {v0, v14}, Lcom/android/server/pm/PackageInstalledInfo;-><init>(I)V

    .line 848
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    new-array v1, v14, [I

    aput v9, v1, v12

    .line 849
    iput-object v1, v0, Lcom/android/server/pm/PackageInstalledInfo;->mNewUsers:[I

    .line 851
    new-instance v10, Lcom/android/server/pm/PostInstallData;

    const/4 v11, 0x0

    new-instance v12, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;

    move-object v1, v12

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p6

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/InstallPackageHelper;Ljava/lang/String;ILandroid/content/IntentSender;Lcom/android/server/pm/PackageInstalledInfo;)V

    invoke-direct {v10, v11, v0, v12}, Lcom/android/server/pm/PostInstallData;-><init>(Lcom/android/server/pm/InstallArgs;Lcom/android/server/pm/PackageInstalledInfo;Ljava/lang/Runnable;)V

    .line 859
    invoke-virtual {v7, v9, v0, v10}, Lcom/android/server/pm/InstallPackageHelper;->restoreAndPostInstall(ILcom/android/server/pm/PackageInstalledInfo;Lcom/android/server/pm/PostInstallData;)V
    :try_end_2fa
    .catchall {:try_start_2d1 .. :try_end_2fa} :catchall_34b

    goto :goto_2fe

    :catchall_2fb
    move-exception v0

    .line 844
    :try_start_2fc
    monitor-exit v1
    :try_end_2fd
    .catchall {:try_start_2fc .. :try_end_2fd} :catchall_2fb

    :try_start_2fd
    throw v0
    :try_end_2fe
    .catchall {:try_start_2fd .. :try_end_2fe} :catchall_34b

    .line 862
    :cond_2fe
    :goto_2fe
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 865
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isSpfKnoxSupported()Z

    move-result v0

    if-eqz v0, :cond_344

    .line 866
    iget-object v0, v7, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getPersonaService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    if-eqz v0, :cond_344

    .line 867
    iget-object v0, v7, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getPersonaService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_344

    if-eqz v9, :cond_329

    iget-object v0, v7, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 868
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getPersonaService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v0

    if-ne v9, v0, :cond_344

    :cond_329
    iget-object v0, v7, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 869
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getPersonaService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_344

    .line 870
    iget-object v0, v7, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getPersonaService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationInstallation(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v14, :cond_344

    const/16 v1, -0x6e

    return v1

    .line 880
    :cond_344
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/PmHook;->installSuccesLog(Ljava/lang/String;I)V

    return v14

    :catchall_348
    move-exception v0

    .line 819
    :try_start_349
    monitor-exit v4
    :try_end_34a
    .catchall {:try_start_349 .. :try_end_34a} :catchall_348

    :try_start_34a
    throw v0
    :try_end_34b
    .catchall {:try_start_34a .. :try_end_34b} :catchall_34b

    :catchall_34b
    move-exception v0

    .line 862
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 863
    throw v0
.end method

.method public installLocationPolicy(Landroid/content/pm/PackageInfoLite;I)I
    .registers 7

    .line 3571
    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 3572
    iget v1, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 3574
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2

    .line 3577
    :try_start_9
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz p0, :cond_36

    const/4 v0, 0x2

    and-int/2addr p2, v0

    if-eqz p2, :cond_33

    .line 3582
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result p2

    const/4 v3, 0x1

    if-eqz p2, :cond_22

    .line 3583
    monitor-exit v2

    return v3

    :cond_22
    if-ne v1, v3, :cond_26

    .line 3588
    monitor-exit v2

    return v3

    :cond_26
    if-ne v1, v0, :cond_29

    goto :goto_36

    .line 3594
    :cond_29
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isExternalStorage()Z

    move-result p0

    if-eqz p0, :cond_31

    .line 3595
    monitor-exit v2

    return v0

    .line 3597
    :cond_31
    monitor-exit v2

    return v3

    :cond_33
    const/4 p0, -0x4

    .line 3602
    monitor-exit v2

    return p0

    .line 3605
    :cond_36
    :goto_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_9 .. :try_end_37} :catchall_3a

    .line 3606
    iget p0, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    return p0

    :catchall_3a
    move-exception p0

    .line 3605
    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public final installPackageFromSystemLIF(Ljava/lang/String;[I[IZ)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mInstallLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 4485
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4486
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 4487
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->getDefParseFlags()I

    move-result p1

    or-int/lit8 p1, p1, 0x1

    or-int/lit8 p1, p1, 0x10

    .line 4490
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService;->getSystemPackageScanFlags(Ljava/io/File;)I

    move-result v1

    const/4 v2, 0x0

    .line 4491
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/pm/InstallPackageHelper;->scanSystemPackageTracedLI(Ljava/io/File;IILandroid/os/UserHandle;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    .line 4494
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    .line 4498
    :try_start_26
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 4499
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    move-object v4, p1

    .line 4498
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/SharedLibrariesImpl;->updateSharedLibrariesLPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)V
    :try_end_36
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_26 .. :try_end_36} :catch_37

    goto :goto_53

    :catch_37
    move-exception v0

    .line 4501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAllSharedLibrariesLPw failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4504
    :goto_53
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataAfterInstallLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 4506
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/InstallPackageHelper;->setPackageInstalledForSystemPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[I[IZ)V

    return-void
.end method

.method public installPackagesFromAppRootDir(Ljava/io/File;Ljava/util/List;IILcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mInstallLock",
            "mPm.mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;II",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .line 4693
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 4694
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4695
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No files in app dir "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4703
    :cond_21
    new-instance v0, Lcom/android/server/pm/ParallelPackageParser;

    invoke-direct {v0, p5, p6, p2}, Lcom/android/server/pm/ParallelPackageParser;-><init>(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Ljava/util/List;)V

    .line 4707
    invoke-virtual {v0, p1, p3}, Lcom/android/server/pm/ParallelPackageParser;->submit(Ljava/io/File;I)V

    .line 4710
    invoke-virtual {v0}, Lcom/android/server/pm/ParallelPackageParser;->take()Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    move-result-object p1

    .line 4711
    iget-object p2, p1, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->throwable:Ljava/lang/Throwable;

    const-string p5, ": "

    const/4 p6, 0x1

    const/4 v0, 0x5

    if-nez p2, :cond_61

    .line 4717
    :try_start_35
    iget-object p2, p1, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    const/4 v1, 0x0

    invoke-virtual {p0, p2, p3, p4, v1}, Lcom/android/server/pm/InstallPackageHelper;->addForInitLI(Lcom/android/server/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :try_end_3b
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_35 .. :try_end_3b} :catch_3d

    move p3, p6

    goto :goto_89

    :catch_3d
    move-exception p2

    .line 4719
    iget p3, p2, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 4720
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to scan "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4721
    invoke-static {v0, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    goto :goto_89

    .line 4723
    :cond_61
    instance-of p3, p2, Lcom/android/server/pm/PackageManagerException;

    if-eqz p3, :cond_ae

    .line 4724
    check-cast p2, Lcom/android/server/pm/PackageManagerException;

    .line 4725
    iget p3, p2, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 4726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4727
    invoke-static {v0, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :goto_89
    const/high16 p2, 0x10000

    and-int/2addr p2, p4

    if-nez p2, :cond_ad

    if-eq p3, p6, :cond_ad

    .line 4736
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Deleting invalid package at "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 4738
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    iget-object p1, p1, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePathLI(Ljava/io/File;)V

    :cond_ad
    return-void

    .line 4729
    :cond_ae
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected exception occurred while parsing "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public installPackagesFromDir(Ljava/io/File;Ljava/util/List;IILcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .registers 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mInstallLock",
            "mPm.mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;II",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .line 4801
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 4802
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "PackageManager"

    if-eqz v1, :cond_21

    .line 4803
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No files in app dir "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4811
    :cond_21
    new-instance v1, Lcom/android/server/pm/ParallelPackageParser;

    invoke-direct {v1, p5, p6, p2}, Lcom/android/server/pm/ParallelPackageParser;-><init>(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Ljava/util/List;)V

    .line 4816
    array-length p2, v0

    const/4 p5, 0x0

    move p6, p5

    move v3, p6

    :goto_2a
    const/high16 v4, 0x10000

    const/4 v5, 0x1

    if-ge p6, p2, :cond_a8

    aget-object v6, v0, p6

    .line 4817
    invoke-static {v6}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_3d

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_48

    .line 4818
    :cond_3d
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/pm/PackageInstallerService;->isStageName(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_48

    goto :goto_49

    :cond_48
    move v5, p5

    :goto_49
    if-nez v5, :cond_4c

    goto :goto_a5

    :cond_4c
    const/high16 v5, 0x1000000

    and-int/2addr v5, p4

    if-eqz v5, :cond_77

    .line 4824
    new-instance v5, Lcom/android/server/pm/parsing/PackageCacher;

    iget-object v7, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/server/pm/parsing/PackageCacher;-><init>(Ljava/io/File;)V

    .line 4825
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dropping cache of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4826
    invoke-virtual {v5, v6}, Lcom/android/server/pm/parsing/PackageCacher;->cleanCachedResult(Ljava/io/File;)V

    :cond_77
    and-int/2addr v4, p4

    if-eqz v4, :cond_a0

    .line 4830
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_a0

    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSkippingApks:Lcom/samsung/android/server/pm/install/SkippingApks;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4831
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".apk"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/server/pm/install/SkippingApks;->isSkippingApk(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a0

    goto :goto_a5

    .line 4835
    :cond_a0
    invoke-virtual {v1, v6, p3}, Lcom/android/server/pm/ParallelPackageParser;->submit(Ljava/io/File;I)V

    add-int/lit8 v3, v3, 0x1

    :goto_a5
    add-int/lit8 p6, p6, 0x1

    goto :goto_2a

    :cond_a8
    :goto_a8
    if-lez v3, :cond_197

    .line 4841
    invoke-virtual {v1}, Lcom/android/server/pm/ParallelPackageParser;->take()Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    move-result-object p2

    .line 4842
    iget-object p5, p2, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->throwable:Ljava/lang/Throwable;

    const-string p6, ": "

    const/4 v0, 0x0

    const/4 v6, 0x5

    if-nez p5, :cond_ef

    .line 4849
    iget-object p5, p2, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    invoke-interface {p5}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isStaticSharedLibrary()Z

    move-result p5

    if-eqz p5, :cond_c3

    .line 4850
    iget-object p5, p2, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    invoke-static {p5}, Lcom/android/server/pm/PackageManagerService;->renameStaticSharedLibraryPackage(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V

    .line 4854
    :cond_c3
    :try_start_c3
    iget-object p5, p2, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    invoke-virtual {p0, p5, p3, p4, v0}, Lcom/android/server/pm/InstallPackageHelper;->addForInitLI(Lcom/android/server/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :try_end_c8
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_c3 .. :try_end_c8} :catch_cb

    move-object p5, v0

    move v0, v5

    goto :goto_117

    :catch_cb
    move-exception p5

    .line 4857
    iget v0, p5, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 4858
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to scan "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p2, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 4860
    invoke-static {v6, p5}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    goto :goto_117

    .line 4865
    :cond_ef
    instance-of v0, p5, Lcom/android/server/pm/PackageManagerException;

    if-eqz v0, :cond_17e

    .line 4866
    check-cast p5, Lcom/android/server/pm/PackageManagerException;

    .line 4867
    iget v0, p5, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 4868
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p2, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 4870
    invoke-static {v6, p5}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :goto_117
    const/high16 p6, 0x800000

    and-int/2addr p6, p4

    if-eqz p6, :cond_127

    if-eq v0, v5, :cond_127

    .line 4880
    iget-object p6, p0, Lcom/android/server/pm/InstallPackageHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p6, v7, p5}, Lcom/android/server/pm/ApexManager;->reportErrorWithApkInApex(Ljava/lang/String;Ljava/lang/String;)V

    :cond_127
    and-int p5, p4, v4

    if-nez p5, :cond_17a

    if-eq v0, v5, :cond_17a

    .line 4886
    iget-object p5, p2, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    if-eqz p5, :cond_15d

    iget-object p6, p0, Lcom/android/server/pm/InstallPackageHelper;->mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    .line 4889
    invoke-interface {p5}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p5

    .line 4888
    invoke-virtual {p6, p5}, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->hasDuplicatePackage(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_15d

    .line 4890
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Duplicate package "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", but, It will be installed later"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17a

    .line 4893
    :cond_15d
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Deleting invalid package at "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p6, p2, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v6, p5}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 4895
    iget-object p5, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    iget-object p2, p2, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {p5, p2}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePathLI(Ljava/io/File;)V

    :cond_17a
    :goto_17a
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_a8

    .line 4875
    :cond_17e
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected exception occurred while parsing "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_197
    return-void
.end method

.method public final installPackagesLI(Ljava/util/List;)V
    .registers 29
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mInstallLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstallRequest;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    .line 1180
    new-instance v10, Landroid/util/ArrayMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v10, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1181
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1182
    new-instance v11, Landroid/util/ArrayMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v11, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1183
    new-instance v12, Landroid/util/ArrayMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v12, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1184
    new-instance v13, Landroid/util/ArrayMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v13, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1185
    new-instance v14, Landroid/util/ArrayMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v14, v1}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v7, 0x0

    const/4 v5, 0x1

    const-wide/32 v3, 0x40000

    :try_start_3d
    const-string/jumbo v1, "installPackagesLI"

    .line 1188
    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1189
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_47
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_4b
    .catchall {:try_start_3d .. :try_end_4b} :catchall_52c

    if-eqz v1, :cond_34d

    :try_start_4d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/server/pm/InstallRequest;
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_347

    :try_start_54
    const-string/jumbo v1, "preparePackage"

    .line 1194
    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1195
    iget-object v1, v6, Lcom/android/server/pm/InstallRequest;->mArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v2, v6, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    .line 1196
    invoke-virtual {v9, v1, v2}, Lcom/android/server/pm/InstallPackageHelper;->preparePackageLI(Lcom/android/server/pm/InstallArgs;Lcom/android/server/pm/PackageInstalledInfo;)Lcom/android/server/pm/PrepareResult;

    move-result-object v1
    :try_end_62
    .catch Lcom/android/server/pm/PrepareFailure; {:try_start_54 .. :try_end_62} :catch_2c6
    .catchall {:try_start_54 .. :try_end_62} :catchall_2bf

    .line 1204
    :try_start_62
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1206
    iget-object v2, v6, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    invoke-virtual {v2, v5}, Lcom/android/server/pm/PackageInstalledInfo;->setReturnCode(I)V

    .line 1207
    iget-object v2, v6, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget-object v8, v6, Lcom/android/server/pm/InstallRequest;->mArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v8, v8, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v8, v8, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iput-object v8, v2, Lcom/android/server/pm/PackageInstalledInfo;->mInstallerPackageName:Ljava/lang/String;
    :try_end_74
    .catchall {:try_start_62 .. :try_end_74} :catchall_347

    if-nez v1, :cond_ce

    .line 1316
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7e
    :goto_7e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ScanResult;

    .line 1317
    iget-object v2, v1, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v2, v2, Lcom/android/server/pm/ScanRequest;->mParsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1318
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1317
    invoke-interface {v14, v2, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 1319
    invoke-virtual {v9, v1}, Lcom/android/server/pm/InstallPackageHelper;->cleanUpAppIdCreation(Lcom/android/server/pm/ScanResult;)V

    goto :goto_7e

    .line 1324
    :cond_a4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a8
    :goto_a8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 1325
    iget-object v2, v1, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageInstalledInfo;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    if-eqz v2, :cond_bd

    .line 1326
    invoke-virtual {v2}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 1328
    :cond_bd
    iget-object v1, v1, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget v2, v1, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    if-ne v2, v5, :cond_a8

    .line 1329
    iput v7, v1, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    goto :goto_a8

    .line 1334
    :cond_c6
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isSpfKnoxSupported()Z

    move-result v0

    .line 1348
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 1215
    :cond_ce
    :try_start_ce
    iget-object v2, v1, Lcom/android/server/pm/PrepareResult;->mPackageToScan:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 1216
    invoke-interface {v12, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    iget-object v2, v6, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    invoke-interface {v11, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    iget-object v2, v6, Lcom/android/server/pm/InstallRequest;->mArgs:Lcom/android/server/pm/InstallArgs;

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e1
    .catchall {:try_start_ce .. :try_end_e1} :catchall_347

    .line 1220
    :try_start_e1
    iget-object v2, v1, Lcom/android/server/pm/PrepareResult;->mPackageToScan:Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    :try_end_e3
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_e1 .. :try_end_e3} :catch_25a
    .catchall {:try_start_e1 .. :try_end_e3} :catchall_347

    :try_start_e3
    iget v3, v1, Lcom/android/server/pm/PrepareResult;->mParseFlags:I

    iget v4, v1, Lcom/android/server/pm/PrepareResult;->mScanFlags:I

    .line 1222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    iget-object v1, v6, Lcom/android/server/pm/InstallRequest;->mArgs:Lcom/android/server/pm/InstallArgs;
    :try_end_ed
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_e3 .. :try_end_ed} :catch_252
    .catchall {:try_start_e3 .. :try_end_ed} :catchall_24a

    :try_start_ed
    iget-object v7, v1, Lcom/android/server/pm/InstallArgs;->mUser:Landroid/os/UserHandle;

    iget-object v1, v1, Lcom/android/server/pm/InstallArgs;->mAbiOverride:Ljava/lang/String;
    :try_end_f1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_ed .. :try_end_f1} :catch_245
    .catchall {:try_start_ed .. :try_end_f1} :catchall_23d

    move-object/from16 v23, v1

    move-object/from16 v1, p0

    const-wide/32 v24, 0x40000

    move-object v15, v6

    move-object/from16 v19, v12

    move v12, v5

    move-wide/from16 v5, v20

    move-object/from16 v26, v8

    move-object/from16 v8, v23

    .line 1220
    :try_start_102
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/InstallPackageHelper;->scanPackageTracedLI(Lcom/android/server/pm/parsing/pkg/ParsedPackage;IIJLandroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/pm/ScanResult;

    move-result-object v1

    .line 1224
    iget-object v2, v1, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_195

    .line 1226
    iget-object v0, v15, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    const/4 v2, -0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 1229
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in multi-package install request."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1226
    invoke-virtual {v0, v2, v1}, Lcom/android/server/pm/PackageInstalledInfo;->setError(ILjava/lang/String;)V
    :try_end_13c
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_102 .. :try_end_13c} :catch_23a
    .catchall {:try_start_102 .. :try_end_13c} :catchall_236

    .line 1316
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_144
    :goto_144
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ScanResult;

    .line 1317
    iget-object v2, v1, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v2, v2, Lcom/android/server/pm/ScanRequest;->mParsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1318
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1317
    invoke-interface {v14, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_144

    .line 1319
    invoke-virtual {v9, v1}, Lcom/android/server/pm/InstallPackageHelper;->cleanUpAppIdCreation(Lcom/android/server/pm/ScanResult;)V

    goto :goto_144

    .line 1324
    :cond_16a
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16e
    :goto_16e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 1325
    iget-object v2, v1, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageInstalledInfo;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    if-eqz v2, :cond_183

    .line 1326
    invoke-virtual {v2}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 1328
    :cond_183
    iget-object v1, v1, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget v2, v1, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    const/4 v8, 0x0

    if-ne v2, v12, :cond_16e

    .line 1329
    iput v8, v1, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    goto :goto_16e

    .line 1334
    :cond_18d
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isSpfKnoxSupported()Z

    move-result v0

    .line 1348
    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_195
    const/4 v8, 0x0

    .line 1233
    :try_start_196
    iget-object v2, v1, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v2, v2, Lcom/android/server/pm/ScanRequest;->mOldPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-object v3, v1, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 1234
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 1233
    invoke-virtual {v9, v2, v3}, Lcom/android/server/pm/InstallPackageHelper;->checkNoAppStorageIsConsistent(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v2

    if-nez v2, :cond_206

    .line 1237
    iget-object v0, v15, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    const/4 v1, -0x7

    const-string v2, "Update attempted to change value of android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageInstalledInfo;->setError(ILjava/lang/String;)V
    :try_end_1ae
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_196 .. :try_end_1ae} :catch_234
    .catchall {:try_start_196 .. :try_end_1ae} :catchall_341

    .line 1316
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b6
    :goto_1b6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1dc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ScanResult;

    .line 1317
    iget-object v2, v1, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v2, v2, Lcom/android/server/pm/ScanRequest;->mParsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1318
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1317
    invoke-interface {v14, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1b6

    .line 1319
    invoke-virtual {v9, v1}, Lcom/android/server/pm/InstallPackageHelper;->cleanUpAppIdCreation(Lcom/android/server/pm/ScanResult;)V

    goto :goto_1b6

    .line 1324
    :cond_1dc
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e0
    :goto_1e0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1fe

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 1325
    iget-object v2, v1, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageInstalledInfo;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    if-eqz v2, :cond_1f5

    .line 1326
    invoke-virtual {v2}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 1328
    :cond_1f5
    iget-object v1, v1, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget v2, v1, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    if-ne v2, v12, :cond_1e0

    .line 1329
    iput v8, v1, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    goto :goto_1e0

    .line 1334
    :cond_1fe
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isSpfKnoxSupported()Z

    move-result v0

    .line 1348
    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 1243
    :cond_206
    :try_start_206
    invoke-virtual {v9, v1}, Lcom/android/server/pm/InstallPackageHelper;->optimisticallyRegisterAppId(Lcom/android/server/pm/ScanResult;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v3, v26

    invoke-interface {v14, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    iget-object v2, v1, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v9, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 1245
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/server/pm/PackageManagerService;->getSettingsVersionForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v1

    .line 1244
    invoke-interface {v13, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22c
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_206 .. :try_end_22c} :catch_234
    .catchall {:try_start_206 .. :try_end_22c} :catchall_341

    move v7, v8

    move v5, v12

    move-object/from16 v12, v19

    move-wide/from16 v3, v24

    goto/16 :goto_47

    :catch_234
    move-exception v0

    goto :goto_260

    :catchall_236
    move-exception v0

    const/4 v8, 0x0

    goto/16 :goto_342

    :catch_23a
    move-exception v0

    const/4 v8, 0x0

    goto :goto_260

    :catchall_23d
    move-exception v0

    move v12, v5

    const/4 v8, 0x0

    const-wide/32 v24, 0x40000

    goto/16 :goto_342

    :catch_245
    move-exception v0

    move v12, v5

    move-object v15, v6

    const/4 v8, 0x0

    goto :goto_256

    :catchall_24a
    move-exception v0

    move v12, v5

    move v8, v7

    const-wide/32 v24, 0x40000

    goto/16 :goto_343

    :catch_252
    move-exception v0

    move v12, v5

    move-object v15, v6

    move v8, v7

    :goto_256
    const-wide/32 v24, 0x40000

    goto :goto_260

    :catch_25a
    move-exception v0

    move-wide/from16 v24, v3

    move v12, v5

    move-object v15, v6

    move v8, v7

    .line 1247
    :goto_260
    :try_start_260
    iget-object v1, v15, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    const-string v2, "Scanning Failed."

    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/PackageInstalledInfo;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V
    :try_end_267
    .catchall {:try_start_260 .. :try_end_267} :catchall_341

    .line 1316
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_26f
    :goto_26f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_295

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ScanResult;

    .line 1317
    iget-object v2, v1, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v2, v2, Lcom/android/server/pm/ScanRequest;->mParsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1318
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1317
    invoke-interface {v14, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_26f

    .line 1319
    invoke-virtual {v9, v1}, Lcom/android/server/pm/InstallPackageHelper;->cleanUpAppIdCreation(Lcom/android/server/pm/ScanResult;)V

    goto :goto_26f

    .line 1324
    :cond_295
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_299
    :goto_299
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 1325
    iget-object v2, v1, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageInstalledInfo;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    if-eqz v2, :cond_2ae

    .line 1326
    invoke-virtual {v2}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 1328
    :cond_2ae
    iget-object v1, v1, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget v2, v1, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    if-ne v2, v12, :cond_299

    .line 1329
    iput v8, v1, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    goto :goto_299

    .line 1334
    :cond_2b7
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isSpfKnoxSupported()Z

    move-result v0

    .line 1348
    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_2bf
    move-exception v0

    move-wide/from16 v24, v3

    move v12, v5

    move v8, v7

    goto/16 :goto_33d

    :catch_2c6
    move-exception v0

    move-wide/from16 v24, v3

    move v12, v5

    move-object v15, v6

    move v8, v7

    .line 1198
    :try_start_2cc
    iget-object v1, v15, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 1199
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1198
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageInstalledInfo;->setError(ILjava/lang/String;)V

    .line 1200
    iget-object v1, v15, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget-object v2, v0, Lcom/android/server/pm/PrepareFailure;->mConflictingPackage:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/pm/PackageInstalledInfo;->mOrigPackage:Ljava/lang/String;

    .line 1201
    iget-object v0, v0, Lcom/android/server/pm/PrepareFailure;->mConflictingPermission:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/pm/PackageInstalledInfo;->mOrigPermission:Ljava/lang/String;
    :try_end_2e1
    .catchall {:try_start_2cc .. :try_end_2e1} :catchall_33c

    .line 1204
    :try_start_2e1
    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_2e4
    .catchall {:try_start_2e1 .. :try_end_2e4} :catchall_341

    .line 1316
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2ec
    :goto_2ec
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_312

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ScanResult;

    .line 1317
    iget-object v2, v1, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v2, v2, Lcom/android/server/pm/ScanRequest;->mParsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1318
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1317
    invoke-interface {v14, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2ec

    .line 1319
    invoke-virtual {v9, v1}, Lcom/android/server/pm/InstallPackageHelper;->cleanUpAppIdCreation(Lcom/android/server/pm/ScanResult;)V

    goto :goto_2ec

    .line 1324
    :cond_312
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_316
    :goto_316
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_334

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 1325
    iget-object v2, v1, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageInstalledInfo;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    if-eqz v2, :cond_32b

    .line 1326
    invoke-virtual {v2}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 1328
    :cond_32b
    iget-object v1, v1, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget v2, v1, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    if-ne v2, v12, :cond_316

    .line 1329
    iput v8, v1, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    goto :goto_316

    .line 1334
    :cond_334
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isSpfKnoxSupported()Z

    move-result v0

    .line 1348
    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_33c
    move-exception v0

    .line 1204
    :goto_33d
    :try_start_33d
    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    .line 1205
    throw v0
    :try_end_341
    .catchall {:try_start_33d .. :try_end_341} :catchall_341

    :catchall_341
    move-exception v0

    :goto_342
    move v7, v8

    :goto_343
    move-wide/from16 v2, v24

    goto/16 :goto_530

    :catchall_347
    move-exception v0

    move v12, v5

    move v8, v7

    move-wide v2, v3

    goto/16 :goto_530

    :cond_34d
    move-wide/from16 v24, v3

    move v8, v7

    move-object/from16 v19, v12

    move v12, v5

    .line 1251
    :try_start_353
    new-instance v15, Lcom/android/server/pm/ReconcileRequest;

    iget-object v1, v9, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 1253
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    move-object v1, v15

    move-object v2, v10

    move-object v3, v0

    move-object v4, v11

    move-object/from16 v5, v19

    move-object v7, v13

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/ReconcileRequest;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 1255
    iget-object v0, v9, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1
    :try_end_36c
    .catchall {:try_start_353 .. :try_end_36c} :catchall_526

    :try_start_36c
    const-string/jumbo v0, "reconcilePackages"
    :try_end_36f
    .catch Lcom/android/server/pm/ReconcileFailure; {:try_start_36c .. :try_end_36f} :catch_4a1
    .catchall {:try_start_36c .. :try_end_36f} :catchall_49b

    move-wide/from16 v2, v24

    .line 1258
    :try_start_371
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1259
    iget-object v0, v9, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object v4, v9, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1261
    invoke-virtual {v4}, Lcom/android/server/pm/Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v4

    iget-object v5, v9, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1259
    invoke-static {v15, v0, v4, v5}, Lcom/android/server/pm/ReconcilePackageUtils;->reconcilePackages(Lcom/android/server/pm/ReconcileRequest;Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/KeySetManagerService;Lcom/android/server/pm/Settings;)Ljava/util/Map;

    move-result-object v0
    :try_end_386
    .catch Lcom/android/server/pm/ReconcileFailure; {:try_start_371 .. :try_end_386} :catch_499
    .catchall {:try_start_371 .. :try_end_386} :catchall_497

    .line 1268
    :try_start_386
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_389
    .catchall {:try_start_386 .. :try_end_389} :catchall_493

    :try_start_389
    const-string v4, "commitPackages"

    .line 1271
    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1272
    new-instance v4, Lcom/android/server/pm/CommitRequest;

    iget-object v5, v9, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 1273
    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/android/server/pm/CommitRequest;-><init>(Ljava/util/Map;[I)V

    .line 1274
    invoke-virtual {v9, v4}, Lcom/android/server/pm/InstallPackageHelper;->commitPackagesLocked(Lcom/android/server/pm/CommitRequest;)V
    :try_end_39e
    .catchall {:try_start_389 .. :try_end_39e} :catchall_48d

    .line 1277
    :try_start_39e
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1279
    monitor-exit v1
    :try_end_3a2
    .catchall {:try_start_39e .. :try_end_3a2} :catchall_488

    .line 1282
    :try_start_3a2
    iget-object v0, v4, Lcom/android/server/pm/CommitRequest;->mReconciledPackages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3ac
    :goto_3ac
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_3b0
    .catchall {:try_start_3a2 .. :try_end_3b0} :catchall_483

    if-eqz v1, :cond_3da

    :try_start_3b2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ReconciledPackage;

    .line 1283
    iget-object v5, v1, Lcom/android/server/pm/ReconciledPackage;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1284
    iget-object v6, v1, Lcom/android/server/pm/ReconciledPackage;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    invoke-virtual {v6}, Lcom/android/server/pm/InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 1285
    iget-object v1, v1, Lcom/android/server/pm/ReconciledPackage;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget v1, v1, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    if-ne v1, v12, :cond_3ac

    .line 1286
    invoke-static {v5, v6}, Lcom/android/server/pm/PmHook;->installSuccesLog(Ljava/lang/String;I)V
    :try_end_3d5
    .catchall {:try_start_3b2 .. :try_end_3d5} :catchall_3d6

    goto :goto_3ac

    :catchall_3d6
    move-exception v0

    move v7, v12

    goto/16 :goto_530

    .line 1291
    :cond_3da
    :try_start_3da
    invoke-virtual {v9, v4}, Lcom/android/server/pm/InstallPackageHelper;->executePostCommitSteps(Lcom/android/server/pm/CommitRequest;)V
    :try_end_3dd
    .catchall {:try_start_3da .. :try_end_3dd} :catchall_483

    .line 1294
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3e1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_437

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 1295
    iget-object v4, v1, Lcom/android/server/pm/InstallRequest;->mArgs:Lcom/android/server/pm/InstallArgs;

    .line 1296
    iget v5, v4, Lcom/android/server/pm/InstallArgs;->mDataLoaderType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3f5

    goto :goto_3e1

    .line 1299
    :cond_3f5
    iget-object v5, v4, Lcom/android/server/pm/InstallArgs;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v5}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v5

    const/4 v7, 0x4

    if-eq v5, v7, :cond_3ff

    goto :goto_3e1

    .line 1305
    :cond_3ff
    iget-object v5, v1, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v5

    .line 1306
    iget-object v1, v1, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v1

    .line 1307
    iget-object v7, v4, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v20

    .line 1308
    iget-object v7, v9, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v8, v7, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    add-int/lit8 v10, v8, 0x1

    iput v10, v7, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    .line 1310
    invoke-static {v5, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->buildVerificationRootHashString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v21, 0x1

    .line 1311
    iget v1, v4, Lcom/android/server/pm/InstallArgs;->mDataLoaderType:I

    .line 1313
    invoke-virtual {v4}, Lcom/android/server/pm/InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v24

    iget-object v4, v9, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    move/from16 v19, v8

    move/from16 v23, v1

    move-object/from16 v25, v4

    .line 1311
    invoke-static/range {v19 .. v25}, Lcom/android/server/pm/VerificationUtils;->broadcastPackageVerified(ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)V

    goto :goto_3e1

    .line 1334
    :cond_437
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isSpfKnoxSupported()Z

    move-result v0

    if-eqz v0, :cond_47f

    .line 1336
    iget-object v0, v9, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getPersonaService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    if-eqz v0, :cond_47f

    iget-object v0, v9, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getPersonaService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_47f

    .line 1337
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_459
    :goto_459
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1338
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1339
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstalledInfo;

    .line 1340
    iget v1, v1, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    if-ne v1, v12, :cond_459

    .line 1341
    iget-object v1, v9, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getPersonaService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationInstallation(Ljava/lang/String;)I

    goto :goto_459

    .line 1348
    :cond_47f
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_483
    move-exception v0

    const/4 v6, 0x2

    move v7, v12

    goto/16 :goto_531

    :catchall_488
    move-exception v0

    const/4 v6, 0x2

    move v7, v12

    goto/16 :goto_520

    :catchall_48d
    move-exception v0

    const/4 v6, 0x2

    .line 1277
    :try_start_48f
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1278
    throw v0
    :try_end_493
    .catchall {:try_start_48f .. :try_end_493} :catchall_51e

    :catchall_493
    move-exception v0

    const/4 v6, 0x2

    goto/16 :goto_51f

    :catchall_497
    move-exception v0

    goto :goto_49e

    :catch_499
    move-exception v0

    goto :goto_4a4

    :catchall_49b
    move-exception v0

    move-wide/from16 v2, v24

    :goto_49e
    const/4 v6, 0x2

    goto/16 :goto_51a

    :catch_4a1
    move-exception v0

    move-wide/from16 v2, v24

    :goto_4a4
    const/4 v6, 0x2

    .line 1263
    :try_start_4a5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4a9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4bd

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/InstallRequest;

    .line 1264
    iget-object v5, v5, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    const-string v7, "Reconciliation failed..."

    invoke-virtual {v5, v7, v0}, Lcom/android/server/pm/PackageInstalledInfo;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V
    :try_end_4bc
    .catchall {:try_start_4a5 .. :try_end_4bc} :catchall_519

    goto :goto_4a9

    .line 1268
    :cond_4bd
    :try_start_4bd
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v1
    :try_end_4c1
    .catchall {:try_start_4bd .. :try_end_4c1} :catchall_51e

    .line 1316
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4c9
    :goto_4c9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4ef

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ScanResult;

    .line 1317
    iget-object v4, v1, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v4, v4, Lcom/android/server/pm/ScanRequest;->mParsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1318
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1317
    invoke-interface {v14, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4c9

    .line 1319
    invoke-virtual {v9, v1}, Lcom/android/server/pm/InstallPackageHelper;->cleanUpAppIdCreation(Lcom/android/server/pm/ScanResult;)V

    goto :goto_4c9

    .line 1324
    :cond_4ef
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4f3
    :goto_4f3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_511

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 1325
    iget-object v4, v1, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageInstalledInfo;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    if-eqz v4, :cond_508

    .line 1326
    invoke-virtual {v4}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 1328
    :cond_508
    iget-object v1, v1, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget v4, v1, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    if-ne v4, v12, :cond_4f3

    .line 1329
    iput v8, v1, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    goto :goto_4f3

    .line 1334
    :cond_511
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isSpfKnoxSupported()Z

    move-result v0

    .line 1348
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_519
    move-exception v0

    .line 1268
    :goto_51a
    :try_start_51a
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1269
    throw v0
    :try_end_51e
    .catchall {:try_start_51a .. :try_end_51e} :catchall_51e

    :catchall_51e
    move-exception v0

    :goto_51f
    move v7, v8

    .line 1279
    :goto_520
    :try_start_520
    monitor-exit v1
    :try_end_521
    .catchall {:try_start_520 .. :try_end_521} :catchall_524

    :try_start_521
    throw v0
    :try_end_522
    .catchall {:try_start_521 .. :try_end_522} :catchall_522

    :catchall_522
    move-exception v0

    goto :goto_531

    :catchall_524
    move-exception v0

    goto :goto_520

    :catchall_526
    move-exception v0

    move-wide/from16 v2, v24

    const/4 v6, 0x2

    move v7, v8

    goto :goto_531

    :catchall_52c
    move-exception v0

    move-wide v2, v3

    move v12, v5

    move v8, v7

    :goto_530
    const/4 v6, 0x2

    :goto_531
    if-eqz v7, :cond_58b

    .line 1294
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_537
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5db

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/InstallRequest;

    .line 1295
    iget-object v5, v4, Lcom/android/server/pm/InstallRequest;->mArgs:Lcom/android/server/pm/InstallArgs;

    .line 1296
    iget v8, v5, Lcom/android/server/pm/InstallArgs;->mDataLoaderType:I

    if-eq v8, v6, :cond_54a

    goto :goto_537

    .line 1299
    :cond_54a
    iget-object v8, v5, Lcom/android/server/pm/InstallArgs;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v8}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v8

    const/4 v10, 0x4

    if-eq v8, v10, :cond_554

    goto :goto_537

    .line 1305
    :cond_554
    iget-object v8, v4, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget-object v8, v8, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v8}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v8

    .line 1306
    iget-object v4, v4, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v4

    .line 1307
    iget-object v13, v5, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v13, v13, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    invoke-static {v13}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v15

    .line 1308
    iget-object v13, v9, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v14, v13, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    add-int/lit8 v6, v14, 0x1

    iput v6, v13, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    .line 1310
    invoke-static {v8, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->buildVerificationRootHashString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v16, 0x1

    .line 1311
    iget v4, v5, Lcom/android/server/pm/InstallArgs;->mDataLoaderType:I

    .line 1313
    invoke-virtual {v5}, Lcom/android/server/pm/InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v19

    iget-object v5, v9, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    move/from16 v18, v4

    move-object/from16 v20, v5

    .line 1311
    invoke-static/range {v14 .. v20}, Lcom/android/server/pm/VerificationUtils;->broadcastPackageVerified(ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)V

    const/4 v6, 0x2

    goto :goto_537

    .line 1316
    :cond_58b
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_593
    :goto_593
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5b9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/ScanResult;

    .line 1317
    iget-object v5, v4, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v5, v5, Lcom/android/server/pm/ScanRequest;->mParsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1318
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1317
    invoke-interface {v14, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_593

    .line 1319
    invoke-virtual {v9, v4}, Lcom/android/server/pm/InstallPackageHelper;->cleanUpAppIdCreation(Lcom/android/server/pm/ScanResult;)V

    goto :goto_593

    .line 1324
    :cond_5b9
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5bd
    :goto_5bd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5db

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/InstallRequest;

    .line 1325
    iget-object v5, v4, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageInstalledInfo;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    if-eqz v5, :cond_5d2

    .line 1326
    invoke-virtual {v5}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 1328
    :cond_5d2
    iget-object v4, v4, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget v5, v4, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    if-ne v5, v12, :cond_5bd

    .line 1329
    iput v8, v4, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    goto :goto_5bd

    .line 1334
    :cond_5db
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isSpfKnoxSupported()Z

    move-result v1

    if-eqz v1, :cond_625

    if-eqz v7, :cond_625

    .line 1336
    iget-object v1, v9, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getPersonaService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v1

    if-eqz v1, :cond_625

    iget-object v1, v9, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getPersonaService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_625

    .line 1337
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5ff
    :goto_5ff
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_625

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1338
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1339
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstalledInfo;

    .line 1340
    iget v4, v4, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    if-ne v4, v12, :cond_5ff

    .line 1341
    iget-object v4, v9, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->getPersonaService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationInstallation(Ljava/lang/String;)I

    goto :goto_5ff

    .line 1348
    :cond_625
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1349
    throw v0
.end method

.method public final installPackagesTracedLI(Ljava/util/List;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mInstallLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstallRequest;",
            ">;)V"
        }
    .end annotation

    const-wide/32 v0, 0x40000

    :try_start_3
    const-string/jumbo v2, "installPackages"

    .line 1152
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1153
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->installPackagesLI(Ljava/util/List;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    .line 1155
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1156
    throw p0
.end method

.method public final installStubPackageLI(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mInstallLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 4345
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz v0, :cond_1e

    const-string v0, "PackageManager"

    .line 4346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uncompressing system stub; pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4349
    :cond_1e
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/InstallPackageHelper;->decompressPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 4354
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 4355
    :try_start_31
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/Settings;->disableSystemPackageLPw(Ljava/lang/String;Z)Z

    .line 4356
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_31 .. :try_end_3e} :catchall_6d

    .line 4357
    new-instance v1, Lcom/android/server/pm/RemovePackageHelper;

    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v1, v2}, Lcom/android/server/pm/RemovePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 4358
    invoke-virtual {v1, p1, v4}, Lcom/android/server/pm/RemovePackageHelper;->removePackageLI(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    const/4 v2, 0x0

    .line 4360
    :try_start_49
    invoke-virtual {p0, v0, p2, p3, v2}, Lcom/android/server/pm/InstallPackageHelper;->scanSystemPackageTracedLI(Ljava/io/File;IILandroid/os/UserHandle;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0
    :try_end_4d
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_49 .. :try_end_4d} :catch_4e

    return-object p0

    :catch_4e
    move-exception p0

    const-string p2, "PackageManager"

    .line 4362
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to install compressed system package:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4365
    invoke-virtual {v1, v0}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePathLI(Ljava/io/File;)V

    .line 4366
    throw p0

    :catchall_6d
    move-exception p0

    .line 4356
    :try_start_6e
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw p0

    .line 4351
    :cond_70
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to decompress stub at "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4352
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public installSystemStubPackages(Ljava/util/List;I)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mLock",
            "mPm.mInstallLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 4222
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    const-string v1, "android"

    const/4 v2, 0x0

    if-ltz v0, :cond_6c

    .line 4223
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4225
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/Settings;->isDisabledSystemPackageLPr(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 4226
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_69

    .line 4230
    :cond_1f
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4, v3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez v4, :cond_2f

    .line 4232
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_69

    .line 4236
    :cond_2f
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    if-eqz v3, :cond_44

    .line 4238
    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_44

    .line 4240
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_69

    .line 4247
    :cond_44
    :try_start_44
    invoke-virtual {p0, v4, v2, p2}, Lcom/android/server/pm/InstallPackageHelper;->installStubPackageLI(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4248
    invoke-virtual {v3, v2, v2, v1}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 4250
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_4d
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_44 .. :try_end_4d} :catch_4e

    goto :goto_69

    :catch_4e
    move-exception v1

    .line 4252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse uncompressed system package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_69
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 4259
    :cond_6c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_72
    if-ltz p2, :cond_9e

    .line 4260
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4261
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    const/4 v4, 0x2

    .line 4262
    invoke-virtual {v3, v4, v2, v1}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    const/4 v3, 0x6

    .line 4264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stub disabled; pkg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_72

    :cond_9e
    return-void
.end method

.method public final isAdminApplication(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 6

    .line 5878
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getReceivers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, p0, :cond_35

    .line 5880
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getReceivers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedActivity;

    if-eqz v2, :cond_32

    .line 5881
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getPermission()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 5882
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getPermission()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    const/4 p0, 0x1

    return p0

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_35
    return v0
.end method

.method public final isDexoptLimited()Z
    .registers 2

    const-string/jumbo p0, "sys.dexopt.ctrl"

    const/4 v0, 0x0

    .line 3178
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final isSpegSkipped(Lcom/android/server/pm/ReconciledPackage;Z)Z
    .registers 10

    .line 3185
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mSpeg:Lcom/android/server/SpegService;

    const-string v1, "SPEG"

    const/4 v2, 0x1

    if-nez v0, :cond_d

    const-string p0, "Feature is disabled due to service is not started"

    .line 3187
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3191
    :cond_d
    iget-object v0, p1, Lcom/android/server/pm/ReconciledPackage;->mPrepareResult:Lcom/android/server/pm/PrepareResult;

    iget-boolean v0, v0, Lcom/android/server/pm/PrepareResult;->mReplace:Z

    if-eqz v0, :cond_19

    const-string p0, "Feature is disabled for existing app"

    .line 3194
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3199
    :cond_19
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->FORCE_SPEG:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_1f

    return v3

    :cond_1f
    if-eqz p2, :cond_27

    const-string p0, "Feature is disabled due to dexopt skipped"

    .line 3203
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3208
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/pm/InstallPackageHelper;->isDexoptLimited()Z

    move-result p2

    if-eqz p2, :cond_33

    const-string p0, "Feature is disabled by high temperature"

    .line 3209
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3213
    :cond_33
    iget-object p2, p1, Lcom/android/server/pm/ReconciledPackage;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p2

    .line 3214
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4d

    const-string v4, "com.samsung.android.speg.disabled"

    .line 3215
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string p0, "Feature is disabled in app manifest"

    .line 3217
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3220
    :cond_4d
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3221
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mSpeg:Lcom/android/server/SpegService;

    iget-object v4, v4, Lcom/android/server/SpegService;->mPrevInstalledPkg:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    const-string p1, "Feature is disabled for reinstalled apps"

    .line 3224
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3227
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mSpeg:Lcom/android/server/SpegService;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/SpegService;->mPrevInstalledPkg:Ljava/lang/String;

    return v2

    .line 3230
    :cond_66
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mSpeg:Lcom/android/server/SpegService;

    invoke-virtual {v4, v0}, Lcom/android/server/SpegService;->isPackageBlockListedForSPEG(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_83

    .line 3232
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Feature is disabled for package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3235
    :cond_83
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mSpeg:Lcom/android/server/SpegService;

    invoke-virtual {v4, p2}, Lcom/android/server/SpegService;->hasPrivilegedPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v4

    if-eqz v4, :cond_91

    const-string p0, "Feature is disabled for privileged apps"

    .line 3237
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3240
    :cond_91
    invoke-virtual {p0, p2}, Lcom/android/server/pm/InstallPackageHelper;->hasUsesPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v4

    if-eqz v4, :cond_9d

    const-string p0, "Feature is disabled for apps with specific uses-permission"

    .line 3242
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3245
    :cond_9d
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    .line 3246
    invoke-static {v4, v5}, Lcom/android/server/pm/InstallPackageHelper;->apkHasNumOfDexFiles(Ljava/lang/String;I)Z

    move-result v5

    const-string v6, "Feature is disabled for "

    if-eqz v5, :cond_cb

    .line 3249
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as it has more than "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dex files"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3253
    :cond_cb
    iget-object p1, p1, Lcom/android/server/pm/ReconciledPackage;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget-object p1, p1, Lcom/android/server/pm/PackageInstalledInfo;->mInstallerPackageName:Ljava/lang/String;

    const-string v5, "com.sec.android.easyMover"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_dd

    const-string p0, "Feature is disabled for smart switch installer"

    .line 3256
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3259
    :cond_dd
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mSpeg:Lcom/android/server/SpegService;

    invoke-virtual {p1}, Lcom/android/server/SpegService;->isSmartSwitchBlockSpeg()Z

    move-result p1

    if-eqz p1, :cond_eb

    const-string p0, "Feature is disabled until SmartSwitch is finished"

    .line 3260
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3263
    :cond_eb
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mSpeg:Lcom/android/server/SpegService;

    invoke-virtual {p1}, Lcom/android/server/SpegService;->isSetupWizardFinished()Z

    move-result p1

    if-nez p1, :cond_f9

    const-string p0, "Feature is disabled until setup wizard is finished"

    .line 3264
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3267
    :cond_f9
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isKidsHome()Z

    move-result p1

    if-eqz p1, :cond_119

    .line 3268
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " due to KidsHome"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3271
    :cond_119
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSharedUserId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_127

    const-string p0, "PackageManager"

    const-string p1, "Feature is disabled for shared package"

    .line 3272
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3276
    :cond_127
    :try_start_127
    invoke-static {v4}, Landroid/content/pm/dex/DexMetadataHelper;->buildDexMetadataPathForApk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3277
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_13c

    const-string p0, "Feature is disabled when base.dm already exists"

    .line 3279
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13b
    .catch Ljava/lang/IllegalStateException; {:try_start_127 .. :try_end_13b} :catch_149

    return v2

    .line 3288
    :cond_13c
    invoke-virtual {p0}, Lcom/android/server/pm/InstallPackageHelper;->checkSpegContinualLaunchesLimitViolation()Z

    move-result p0

    if-eqz p0, :cond_148

    const-string p0, "Feature is disabled because of continual launches limit"

    .line 3291
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_148
    return v3

    :catch_149
    move-exception p0

    .line 3283
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Feature is disabled because of: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final maybeClearProfilesForUpgradesLI(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 7

    if-eqz p1, :cond_1d

    .line 5440
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1d

    .line 5443
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v0

    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getLongVersionCode()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_18

    return-void

    .line 5447
    :cond_18
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/AppDataHelper;->clearAppProfilesLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public final notifyPackageChangeObserversOnUpdate(Lcom/android/server/pm/ReconciledPackage;)V
    .registers 6

    .line 3555
    iget-object v0, p1, Lcom/android/server/pm/ReconciledPackage;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 3556
    iget-object p1, p1, Lcom/android/server/pm/ReconciledPackage;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    .line 3557
    iget-object p1, p1, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 3559
    new-instance v1, Landroid/content/pm/PackageChangeEvent;

    invoke-direct {v1}, Landroid/content/pm/PackageChangeEvent;-><init>()V

    .line 3560
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PackageChangeEvent;->packageName:Ljava/lang/String;

    .line 3561
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/content/pm/PackageChangeEvent;->version:J

    .line 3562
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getLastUpdateTime()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/content/pm/PackageChangeEvent;->lastUpdateTimeMillis:J

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2c

    .line 3563
    iget-boolean v3, p1, Lcom/android/server/pm/PackageRemovedInfo;->mIsUpdate:Z

    if-nez v3, :cond_2a

    goto :goto_2c

    :cond_2a
    move v3, v2

    goto :goto_2d

    :cond_2c
    :goto_2c
    move v3, v0

    :goto_2d
    iput-boolean v3, v1, Landroid/content/pm/PackageChangeEvent;->newInstalled:Z

    if-eqz p1, :cond_36

    .line 3564
    iget-boolean p1, p1, Lcom/android/server/pm/PackageRemovedInfo;->mDataRemoved:Z

    if-eqz p1, :cond_36

    goto :goto_37

    :cond_36
    move v0, v2

    :goto_37
    iput-boolean v0, v1, Landroid/content/pm/PackageChangeEvent;->dataRemoved:Z

    .line 3565
    iput-boolean v2, v1, Landroid/content/pm/PackageChangeEvent;->isDeleted:Z

    .line 3567
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService;->notifyPackageChangeObservers(Landroid/content/pm/PackageChangeEvent;)V

    return-void
.end method

.method public final optimisticallyRegisterAppId(Lcom/android/server/pm/ScanResult;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 5057
    iget-boolean v0, p1, Lcom/android/server/pm/ScanResult;->mExistingSettingCopied:Z

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/android/server/pm/ScanResult;->needsNewAppId()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    .line 5058
    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 5061
    :try_start_12
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, p1, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p1}, Lcom/android/server/pm/ScanResult;->needsNewAppId()Z

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/Settings;->registerAppIdLPw(Lcom/android/server/pm/PackageSetting;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_22
    move-exception p0

    .line 5062
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public final performBackupManagerRestore(IILcom/android/server/pm/PackageInstalledInfo;)Z
    .registers 9

    .line 981
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getIBackupManager()Landroid/app/backup/IBackupManager;

    move-result-object p0

    const-string v0, "PackageManager"

    const/4 v1, 0x0

    if-eqz p0, :cond_4b

    const/4 v2, -0x1

    if-ne p1, v2, :cond_f

    move p1, v1

    :cond_f
    const-wide/32 v2, 0x40000

    const-string/jumbo v4, "restore"

    .line 991
    invoke-static {v2, v3, v4, p2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 993
    :try_start_18
    invoke-interface {p0, p1}, Landroid/app/backup/IBackupManager;->isUserReadyForBackup(I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 994
    iget-object p3, p3, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 995
    invoke-interface {p3}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 994
    invoke-interface {p0, p1, p3, p2}, Landroid/app/backup/IBackupManager;->restoreAtInstallForUser(ILjava/lang/String;I)V

    goto :goto_49

    .line 997
    :cond_28
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "User "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not ready. Restore at install didn\'t take place."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_41} :catch_49
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_41} :catch_42

    return v1

    :catch_42
    move-exception p0

    const-string p1, "Exception trying to enqueue restore"

    .line 1004
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catch_49
    :goto_49
    const/4 p0, 0x1

    return p0

    :cond_4b
    const-string p0, "Backup Manager not found!"

    .line 1008
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final performRollbackManagerRestore(IILcom/android/server/pm/PackageInstalledInfo;Lcom/android/server/pm/PostInstallData;)Z
    .registers 14

    .line 1020
    iget-object v0, p3, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1021
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    .line 1027
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 1028
    :try_start_13
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 1030
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    .line 1031
    invoke-virtual {v3, p1}, Lcom/android/server/pm/PackageSetting;->getCeDataInode(I)J

    move-result-wide v5

    goto :goto_2b

    :cond_26
    const/4 p1, -0x1

    const-wide/16 v4, -0x1

    move-wide v5, v4

    move v4, p1

    :goto_2b
    const/4 p1, 0x1

    .line 1036
    invoke-virtual {v3, v0, p1}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v0

    .line 1037
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_13 .. :try_end_31} :catchall_63

    const/4 v1, 0x0

    if-eqz p4, :cond_45

    .line 1039
    iget-object p4, p4, Lcom/android/server/pm/PostInstallData;->args:Lcom/android/server/pm/InstallArgs;

    if-eqz p4, :cond_45

    iget p4, p4, Lcom/android/server/pm/InstallArgs;->mInstallFlags:I

    const/high16 v7, 0x40000

    and-int/2addr v7, p4

    if-nez v7, :cond_43

    and-int/lit16 p4, p4, 0x80

    if-eqz p4, :cond_45

    :cond_43
    move p4, p1

    goto :goto_46

    :cond_45
    move p4, v1

    :goto_46
    if-eqz p4, :cond_62

    .line 1044
    iget-object p3, p3, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-static {p3, v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v7

    .line 1045
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class p3, Lcom/android/server/rollback/RollbackManagerInternal;

    .line 1046
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/server/rollback/RollbackManagerInternal;

    .line 1048
    invoke-static {v0}, Landroid/os/UserHandle;->toUserHandles([I)Ljava/util/List;

    move-result-object v3

    move v8, p2

    .line 1047
    invoke-interface/range {v1 .. v8}, Lcom/android/server/rollback/RollbackManagerInternal;->snapshotAndRestoreUserData(Ljava/lang/String;Ljava/util/List;IJLjava/lang/String;I)V

    return p1

    :cond_62
    return v1

    :catchall_63
    move-exception p0

    .line 1037
    :try_start_64
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw p0
.end method

.method public final prepareInitialScanRequest(Lcom/android/server/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/pm/ScanRequest;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    .line 5107
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2

    .line 5108
    :try_start_8
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->getPlatformPackage()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 5109
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 5110
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRealPackageOrNull(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v5

    .line 5109
    invoke-virtual {v4, v5}, Lcom/android/server/pm/Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5111
    invoke-static {v1, v4}, Lcom/android/server/pm/ScanPackageUtils;->getRealPackageName(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_23

    .line 5113
    invoke-static {v1, v4}, Lcom/android/server/pm/ScanPackageUtils;->ensurePackageRenamed(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    .line 5115
    :cond_23
    invoke-virtual {p0, v1, v4}, Lcom/android/server/pm/InstallPackageHelper;->getOriginalPackageLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    .line 5116
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    .line 5117
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mTransferredPackages:Landroid/util/ArraySet;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    const-string v5, "PackageManager"

    .line 5118
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " was transferred to another, but its .apk remains"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5121
    :cond_60
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 5122
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 5121
    invoke-virtual {v5, v6}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    const/4 v5, 0x0

    if-eqz v4, :cond_78

    .line 5125
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v9

    if-nez v9, :cond_76

    goto :goto_78

    :cond_76
    move v9, v5

    goto :goto_7c

    .line 5128
    :cond_78
    :goto_78
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isLeavingSharedUid()Z

    move-result v9

    :goto_7c
    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v9, :cond_93

    .line 5131
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSharedUserId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_93

    .line 5132
    iget-object v9, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 5133
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSharedUserId()Ljava/lang/String;

    move-result-object v12

    .line 5132
    invoke-virtual {v9, v12, v5, v5, v10}, Lcom/android/server/pm/Settings;->getSharedUserLPw(Ljava/lang/String;IIZ)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v9

    goto :goto_94

    :cond_93
    move-object v9, v11

    :goto_94
    if-eqz v4, :cond_a0

    .line 5146
    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v0

    move-object v12, v0

    goto :goto_a1

    :cond_a0
    move-object v12, v11

    .line 5148
    :goto_a1
    monitor-exit v2
    :try_end_a2
    .catchall {:try_start_8 .. :try_end_a2} :catchall_d2

    if-eqz v3, :cond_b4

    .line 5151
    invoke-interface {v3}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    move v13, v10

    goto :goto_b5

    :cond_b4
    move v13, v5

    .line 5153
    :goto_b5
    new-instance v14, Lcom/android/server/pm/ScanRequest;

    if-nez v4, :cond_bb

    move-object v3, v11

    goto :goto_c0

    .line 5154
    :cond_bb
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    move-object v3, v0

    :goto_c0
    move-object v0, v14

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v5, v9

    move/from16 v9, p2

    move/from16 v10, p3

    move v11, v13

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-direct/range {v0 .. v13}, Lcom/android/server/pm/ScanRequest;-><init>(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;IIZLandroid/os/UserHandle;Ljava/lang/String;)V

    return-object v14

    :catchall_d2
    move-exception v0

    .line 5148
    :try_start_d3
    monitor-exit v2
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d2

    throw v0
.end method

.method public final preparePackageLI(Lcom/android/server/pm/InstallArgs;Lcom/android/server/pm/PackageInstalledInfo;)Lcom/android/server/pm/PrepareResult;
    .registers 45
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mInstallLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PrepareFailure;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1380
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    iget v5, v2, Lcom/android/server/pm/InstallArgs;->mInstallFlags:I

    .line 1381
    new-instance v6, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    and-int/lit8 v7, v5, 0x8

    if-nez v7, :cond_1e

    .line 1382
    iget-object v7, v2, Lcom/android/server/pm/InstallArgs;->mVolumeUuid:Ljava/lang/String;

    if-eqz v7, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v7, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v7, 0x1

    :goto_1f
    and-int/lit16 v10, v5, 0x800

    if-eqz v10, :cond_25

    const/4 v10, 0x1

    goto :goto_26

    :cond_25
    const/4 v10, 0x0

    :goto_26
    and-int/lit16 v11, v5, 0x4000

    if-eqz v11, :cond_2c

    const/4 v11, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v11, 0x0

    :goto_2d
    const/high16 v12, 0x10000

    and-int v13, v5, v12

    if-eqz v13, :cond_35

    const/4 v13, 0x1

    goto :goto_36

    :cond_35
    const/4 v13, 0x0

    .line 1388
    :goto_36
    iget v14, v2, Lcom/android/server/pm/InstallArgs;->mInstallReason:I

    const/4 v15, 0x5

    if-ne v14, v15, :cond_3d

    const/4 v14, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v14, 0x0

    .line 1390
    :goto_3e
    iget-object v15, v2, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz v15, :cond_45

    const/16 v15, 0x206

    goto :goto_46

    :cond_45
    const/4 v15, 0x6

    :goto_46
    and-int/lit16 v12, v5, 0x1000

    if-eqz v12, :cond_4c

    or-int/lit16 v15, v15, 0x400

    :cond_4c
    if-eqz v10, :cond_50

    or-int/lit16 v15, v15, 0x2000

    :cond_50
    if-eqz v11, :cond_54

    or-int/lit16 v15, v15, 0x4000

    :cond_54
    if-eqz v13, :cond_5a

    const v11, 0x8000

    or-int/2addr v15, v11

    :cond_5a
    const/16 v11, -0x74

    if-eqz v10, :cond_7d

    if-nez v7, :cond_61

    goto :goto_7d

    :cond_61
    const-string v1, "PackageManager"

    .line 1411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incompatible ephemeral install; external="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    invoke-direct {v1, v11}, Lcom/android/server/pm/PrepareFailure;-><init>(I)V

    throw v1

    .line 1416
    :cond_7d
    :goto_7d
    iget-object v12, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1417
    invoke-virtual {v12}, Lcom/android/server/pm/PackageManagerService;->getDefParseFlags()I

    move-result v12

    const/high16 v13, -0x80000000

    or-int/2addr v12, v13

    or-int/lit8 v12, v12, 0x40

    if-eqz v7, :cond_8d

    const/16 v16, 0x8

    goto :goto_8f

    :cond_8d
    const/16 v16, 0x0

    :goto_8f
    or-int v12, v12, v16

    const-string/jumbo v13, "parsePackage"

    const-wide/32 v8, 0x40000

    .line 1421
    invoke-static {v8, v9, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1423
    :try_start_9a
    iget-object v13, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPreparingPackageParser()Lcom/android/server/pm/parsing/PackageParser2;

    move-result-object v13
    :try_end_a2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_9a .. :try_end_a2} :catch_e35
    .catchall {:try_start_9a .. :try_end_a2} :catchall_e32

    const/4 v11, 0x0

    .line 1424
    :try_start_a3
    invoke-virtual {v13, v6, v12, v11}, Lcom/android/server/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v6

    .line 1425
    invoke-static {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->validatePackageDexMetadata(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    :try_end_aa
    .catchall {:try_start_a3 .. :try_end_aa} :catchall_e24

    .line 1426
    :try_start_aa
    invoke-virtual {v13}, Lcom/android/server/pm/parsing/PackageParser2;->close()V
    :try_end_ad
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_aa .. :try_end_ad} :catch_e35
    .catchall {:try_start_aa .. :try_end_ad} :catchall_e32

    .line 1429
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1434
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    new-instance v11, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda3;

    invoke-direct {v11, v1}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/InstallPackageHelper;)V

    .line 1433
    invoke-static {v8, v9, v11}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->checkIfInstallAllowed(Landroid/os/Bundle;ILjava/util/function/Function;)I

    move-result v8

    const/16 v9, -0x6e

    if-nez v8, :cond_df2

    if-eqz v10, :cond_12c

    .line 1447
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v8

    const/16 v11, 0x1a

    if-lt v8, v11, :cond_103

    .line 1453
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSharedUserId()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_da

    goto :goto_12c

    :cond_da
    const-string v1, "PackageManager"

    .line 1454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instant app package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " may not declare sharedUserId."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    const-string v2, "Instant app package may not declare a sharedUserId"

    const/16 v3, -0x74

    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_103
    const-string v1, "PackageManager"

    .line 1448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instant app package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not target at least O"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    const-string v2, "Instant app package must target at least O"

    const/16 v3, -0x74

    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1461
    :cond_12c
    :goto_12c
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isStaticSharedLibrary()Z

    move-result v8

    const/16 v11, -0x13

    if-eqz v8, :cond_149

    .line 1463
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->renameStaticSharedLibraryPackage(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V

    if-nez v7, :cond_13a

    goto :goto_149

    :cond_13a
    const-string v1, "PackageManager"

    const-string v2, "Static shared libs can only be installed on internal storage."

    .line 1467
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    const-string v2, "Packages declaring static-shared libs cannot be updated"

    invoke-direct {v1, v11, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1473
    :cond_149
    :goto_149
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/android/server/pm/PackageInstalledInfo;->mName:Ljava/lang/String;

    .line 1475
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v13, :cond_166

    const-string v13, "com.samsung.speg"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_15c

    goto :goto_166

    .line 1479
    :cond_15c
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    const/16 v2, -0x6a

    const-string v3, "Forbidden package name"

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1484
    :cond_166
    :goto_166
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isSpfKnoxSupported()Z

    move-result v13

    if-eqz v13, :cond_18a

    .line 1485
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object v13

    iget-object v11, v2, Lcom/android/server/pm/InstallArgs;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    invoke-static {v13, v11, v8}, Lcom/android/server/pm/PersonaServiceHelper;->isDisallowedAppForKnox(Landroid/os/Bundle;ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_17d

    goto :goto_18a

    :cond_17d
    const-string v1, "This app installation is not allowed"

    const-string v2, "PackageManager"

    .line 1487
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    new-instance v2, Lcom/android/server/pm/PrepareFailure;

    invoke-direct {v2, v9, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v2

    .line 1492
    :cond_18a
    :goto_18a
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isTestOnly()Z

    move-result v11

    if-eqz v11, :cond_1a0

    and-int/lit8 v11, v5, 0x4

    if-eqz v11, :cond_195

    goto :goto_1a0

    .line 1494
    :cond_195
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    const/16 v2, -0xf

    const-string/jumbo v3, "installPackageLI"

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1499
    :cond_1a0
    :goto_1a0
    iget-object v11, v2, Lcom/android/server/pm/InstallArgs;->mSigningDetails:Landroid/content/pm/SigningDetails;

    sget-object v13, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq v11, v13, :cond_1aa

    .line 1500
    invoke-interface {v6, v11}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    goto :goto_1c2

    .line 1502
    :cond_1aa
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v11

    const/4 v13, 0x0

    .line 1503
    invoke-static {v11, v6, v13}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v11

    .line 1505
    invoke-interface {v11}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v13

    if-nez v13, :cond_de6

    .line 1509
    invoke-interface {v11}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/SigningDetails;

    invoke-interface {v6, v11}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    :goto_1c2
    const/16 v33, 0x5

    const/16 v34, 0x5

    const/16 v35, 0x1

    .line 1515
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v36

    const-string v37, "PackageManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CollectCertificates "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1517
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " succeeded"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    const-string v39, ""

    .line 1519
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v40

    .line 1514
    invoke-static/range {v33 .. v40}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v11, "PackageManager"

    const-string/jumbo v13, "verifying app can be installed or not"

    .line 1522
    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "application_policy"

    .line 1525
    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    .line 1524
    invoke-static {v11}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v11

    .line 1527
    :try_start_207
    iget-object v13, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v13, v13, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v13, v8}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    if-eqz v11, :cond_253

    .line 1529
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v13

    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v16
    :try_end_225
    .catch Landroid/os/RemoteException; {:try_start_207 .. :try_end_225} :catch_253

    move/from16 v28, v12

    :try_start_227
    invoke-virtual/range {v16 .. v16}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    .line 1528
    invoke-interface {v11, v8, v13, v9, v12}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationInstallationEnabled(Ljava/lang/String;[Landroid/content/pm/Signature;Ljava/util/List;I)Z

    move-result v9

    if-eqz v9, :cond_232

    goto :goto_255

    :cond_232
    const-string v9, "PackageManager"

    const-string v11, "This app installation is not allowed"

    .line 1530
    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v9, v11, v12}, Lcom/android/server/pm/PmHook;->auditLogInstallFail(Ljava/lang/String;IZ)V

    .line 1532
    new-instance v9, Lcom/android/server/pm/PrepareFailure;

    const-string v11, "This app installation is not allowed"

    const/16 v12, -0x6e

    invoke-direct {v9, v12, v11}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v9
    :try_end_253
    .catch Landroid/os/RemoteException; {:try_start_227 .. :try_end_253} :catch_255

    :catch_253
    :cond_253
    move/from16 v28, v12

    :catch_255
    :goto_255
    const/4 v9, 0x2

    if-eqz v10, :cond_28c

    .line 1539
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v11

    if-lt v11, v9, :cond_263

    goto :goto_28c

    :cond_263
    const-string v1, "PackageManager"

    .line 1541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instant app package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not signed with at least APK Signature Scheme v2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    const-string v2, "Instant app package must be signed with APK Signature Scheme v2 or greater"

    const/16 v3, -0x74

    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_28c
    :goto_28c
    and-int/lit16 v11, v5, 0x80

    if-eqz v11, :cond_293

    const/16 v41, 0x1

    goto :goto_295

    :cond_293
    const/16 v41, 0x0

    :goto_295
    const/4 v11, -0x1

    .line 1551
    :try_start_296
    invoke-static {}, Landroid/content/pm/ASKSManager;->getASKSManager()Landroid/content/pm/IASKSManager;

    move-result-object v12

    if-eqz v12, :cond_2cf

    .line 1552
    invoke-static {}, Landroid/content/pm/ASKSManager;->getASKSManager()Landroid/content/pm/IASKSManager;

    move-result-object v33

    .line 1553
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v35

    .line 1554
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getLongVersionCode()J

    move-result-wide v36

    .line 1555
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v38

    iget-object v12, v2, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v13, v12, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iget-object v12, v12, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    move-object/from16 v34, v8

    move-object/from16 v39, v13

    move-object/from16 v40, v12

    .line 1552
    invoke-interface/range {v33 .. v41}, Landroid/content/pm/IASKSManager;->verifyASKStokenForPackage(Ljava/lang/String;Ljava/lang/String;J[Landroid/content/pm/Signature;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v12

    if-ne v12, v11, :cond_2c3

    goto :goto_2f3

    .line 1560
    :cond_2c3
    iput v12, v3, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    .line 1561
    new-instance v13, Lcom/android/server/pm/PrepareFailure;

    invoke-static {v12}, Landroid/content/pm/ASKSManager;->getASKSerrorDetail(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v13, v12, v9}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v13

    :cond_2cf
    const-string v9, "PackageManager"

    const-string v12, "ASKSManager.getASKSManager is null !"

    .line 1564
    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d6
    .catch Landroid/os/RemoteException; {:try_start_296 .. :try_end_2d6} :catch_2d7

    goto :goto_2f3

    :catch_2d7
    move-exception v0

    move-object v9, v0

    const-string v12, "PackageManager"

    .line 1567
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RemoteException: "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f3
    :try_start_2f3
    const-string v9, "com.sec.android.easyMover"

    .line 1580
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_341

    const-string v9, "com.android.vending"

    iget-object v11, v2, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v11, v11, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    .line 1581
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_313

    const-string v9, "com.sec.android.app.samsungapps"

    iget-object v11, v2, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v11, v11, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_341

    .line 1583
    :cond_313
    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "content://com.sec.android.easyMover.statusProvider/isOOBERunning"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "TRUE"

    .line 1584
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_334

    const-string v9, "PackageManager"

    const-string v11, "This SmartSwitch installation is not allowed due to app is running in OOBE"

    .line 1585
    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    goto :goto_342

    :cond_334
    const-string v9, "PackageManager"

    const-string v11, "This SmartSwitch installation is allowed"

    .line 1588
    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33b
    .catch Ljava/lang/Exception; {:try_start_2f3 .. :try_end_33b} :catch_33c

    goto :goto_341

    :catch_33c
    move-exception v0

    move-object v9, v0

    .line 1592
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    :cond_341
    :goto_341
    const/4 v9, 0x0

    :goto_342
    if-nez v9, :cond_dcf

    .line 1602
    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v9

    and-int/lit8 v11, v5, 0x2

    if-eqz v11, :cond_43e

    .line 1605
    :try_start_34d
    iget-object v11, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v11, v8}, Lcom/android/server/pm/Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1606
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getOriginalPackages()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_371

    iget-object v13, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 1607
    invoke-virtual {v13, v11}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_371

    .line 1612
    invoke-interface {v6, v11}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setPackageName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 1613
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    goto :goto_37b

    .line 1619
    :cond_371
    iget-object v11, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v11, v8}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_37d

    :goto_37b
    const/4 v11, 0x1

    goto :goto_37e

    :cond_37d
    const/4 v11, 0x0

    :goto_37e
    if-eqz v11, :cond_435

    .line 1628
    iget-object v13, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v13, v8}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1629
    invoke-interface {v13}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v12

    move/from16 v16, v11

    .line 1630
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v11

    move/from16 v33, v10

    const/16 v10, 0x16

    if-le v12, v10, :cond_3cf

    if-le v11, v10, :cond_39d

    goto :goto_3cf

    .line 1633
    :cond_39d
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    const/16 v2, -0x1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1635
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " new target SDK "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t support runtime permissions but the old target SDK "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " does."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1643
    :cond_3cf
    :goto_3cf
    sget-boolean v10, Landroid/os/Build;->IS_USER:Z

    if-nez v10, :cond_3eb

    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 1644
    invoke-virtual {v10, v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v10}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3eb

    const/4 v10, 0x1

    goto :goto_3ec

    :cond_3eb
    const/4 v10, 0x0

    :goto_3ec
    if-eqz v8, :cond_405

    const-string v11, "com.salab.issuetracker"

    .line 1650
    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_405

    iget-object v11, v1, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 1651
    invoke-virtual {v11, v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManagerInternal;->isPlatformSigned(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_405

    const/4 v10, 0x1

    .line 1657
    :cond_405
    invoke-interface {v13}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isPersistent()Z

    move-result v4

    if-eqz v4, :cond_439

    const/high16 v4, 0x200000

    and-int v11, v5, v4

    if-nez v11, :cond_43b

    if-eqz v10, :cond_414

    goto :goto_43b

    .line 1660
    :cond_414
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1661
    invoke-interface {v13}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is a persistent app. Persistent apps are not updateable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_435
    move/from16 v33, v10

    move/from16 v16, v11

    :cond_439
    const/high16 v4, 0x200000

    :cond_43b
    :goto_43b
    move/from16 v11, v16

    goto :goto_443

    :cond_43e
    move/from16 v33, v10

    const/high16 v4, 0x200000

    const/4 v11, 0x0

    .line 1667
    :goto_443
    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v10, v8}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    if-nez v10, :cond_479

    .line 1671
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isSdkLibrary()Z

    move-result v12

    if-eqz v12, :cond_479

    .line 1672
    iget-object v12, v1, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 1674
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSdkLibName()Ljava/lang/String;

    move-result-object v13

    .line 1673
    invoke-virtual {v12, v13}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfos(Ljava/lang/String;)Lcom/android/server/utils/WatchedLongSparseArray;

    move-result-object v12

    if-eqz v12, :cond_479

    .line 1675
    invoke-virtual {v12}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v13

    if-lez v13, :cond_479

    const/4 v13, 0x0

    .line 1677
    invoke-virtual {v12, v13}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/SharedLibraryInfo;

    .line 1678
    iget-object v13, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v12}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v12

    goto :goto_47a

    :cond_479
    move-object v12, v10

    .line 1686
    :goto_47a
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isStaticSharedLibrary()Z

    move-result v13

    if-eqz v13, :cond_494

    .line 1687
    iget-object v13, v1, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 1688
    invoke-virtual {v13, v6}, Lcom/android/server/pm/SharedLibrariesImpl;->getLatestStaticSharedLibraVersionLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v13

    if-eqz v13, :cond_494

    .line 1690
    iget-object v12, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v13}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v12

    :cond_494
    if-eqz v12, :cond_51c

    .line 1703
    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4}, Lcom/android/server/pm/Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v4

    .line 1704
    iget-object v13, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v13, v12}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v13

    .line 1706
    invoke-virtual {v4, v12, v13, v15}, Lcom/android/server/pm/KeySetManagerService;->shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/SharedUserApi;I)Z

    move-result v16

    if-eqz v16, :cond_4d4

    .line 1708
    invoke-virtual {v4, v12, v6}, Lcom/android/server/pm/KeySetManagerService;->checkUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v4

    if-eqz v4, :cond_4b3

    goto :goto_51c

    .line 1709
    :cond_4b3
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1710
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " upgrade keys do not match the previously installed version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x7

    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_4d4
    .catchall {:try_start_34d .. :try_end_4d4} :catchall_dcb

    :cond_4d4
    move/from16 v35, v5

    .line 1715
    :try_start_4d6
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1717
    invoke-virtual {v5, v6}, Lcom/android/server/pm/PackageManagerService;->getSettingsVersionForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v5

    .line 1716
    invoke-static {v5}, Lcom/android/server/pm/ReconcilePackageUtils;->isCompatSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z

    move-result v20

    .line 1718
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1720
    invoke-virtual {v5, v6}, Lcom/android/server/pm/PackageManagerService;->getSettingsVersionForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v5

    .line 1719
    invoke-static {v5}, Lcom/android/server/pm/ReconcilePackageUtils;->isRecoverSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z

    move-result v21

    const/16 v18, 0x0

    .line 1725
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v19

    move-object/from16 v16, v12

    move-object/from16 v17, v13

    move/from16 v22, v14

    .line 1723
    invoke-static/range {v16 .. v22}, Lcom/android/server/pm/PackageManagerServiceUtils;->verifySignatures(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;ZZZ)Z

    move-result v5

    if-eqz v5, :cond_51e

    .line 1729
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v5
    :try_end_501
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4d6 .. :try_end_501} :catch_50e
    .catchall {:try_start_4d6 .. :try_end_501} :catchall_dcb

    .line 1730
    :try_start_501
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/android/server/pm/KeySetManagerService;->removeAppKeySetDataLPw(Ljava/lang/String;)V

    .line 1731
    monitor-exit v5

    goto :goto_51e

    :catchall_50a
    move-exception v0

    move-object v1, v0

    monitor-exit v5
    :try_end_50d
    .catchall {:try_start_501 .. :try_end_50d} :catchall_50a

    :try_start_50d
    throw v1
    :try_end_50e
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_50d .. :try_end_50e} :catch_50e
    .catchall {:try_start_50d .. :try_end_50e} :catchall_dcb

    :catch_50e
    move-exception v0

    move-object v1, v0

    .line 1734
    :try_start_510
    new-instance v2, Lcom/android/server/pm/PrepareFailure;

    iget v3, v1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_51c
    :goto_51c
    move/from16 v35, v5

    :cond_51e
    :goto_51e
    if-eqz v10, :cond_540

    .line 1742
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    if-eqz v4, :cond_52f

    .line 1743
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v4

    goto :goto_530

    :cond_52f
    const/4 v4, 0x0

    .line 1745
    :goto_530
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v5

    const/4 v12, 0x1

    invoke-virtual {v10, v5, v12}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/pm/PackageInstalledInfo;->mOrigUsers:[I

    goto :goto_541

    :cond_540
    const/4 v4, 0x0

    .line 1748
    :goto_541
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getPermissionGroups()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v5

    const/4 v10, 0x0

    :goto_54a
    if-ge v10, v5, :cond_5d8

    .line 1751
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getPermissionGroups()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    .line 1752
    iget-object v12, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    move/from16 v18, v14

    invoke-interface {v13}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v14

    move/from16 v19, v7

    const/4 v7, 0x0

    invoke-virtual {v12, v14, v7}, Lcom/android/server/pm/PackageManagerService;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v12

    if-eqz v12, :cond_5d0

    .line 1755
    invoke-static {v6}, Lcom/android/server/pm/InstallPackageHelper;->cannotInstallWithBadPermissionGroups(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)Z

    move-result v7

    if-eqz v7, :cond_5d0

    .line 1756
    iget-object v7, v12, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    if-nez v11, :cond_57b

    .line 1758
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5d0

    .line 1759
    :cond_57b
    invoke-virtual {v1, v7, v6, v15}, Lcom/android/server/pm/InstallPackageHelper;->doesSignatureMatchForPermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/ParsedPackage;I)Z

    move-result v12

    if-eqz v12, :cond_582

    goto :goto_5d0

    :cond_582
    const/4 v12, 0x3

    new-array v1, v12, [Ljava/lang/Object;

    const-string v2, "146211400"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, -0x1

    .line 1761
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1762
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const v2, 0x534e4554

    .line 1761
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1764
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    const/16 v2, -0x7e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1766
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " attempting to redeclare permission group "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1768
    invoke-interface {v13}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " already owned by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_5d0
    :goto_5d0
    add-int/lit8 v10, v10, 0x1

    move/from16 v14, v18

    move/from16 v7, v19

    goto/16 :goto_54a

    :cond_5d8
    move/from16 v19, v7

    move/from16 v18, v14

    .line 1775
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPermissions()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v7

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    :goto_5e6
    if-ltz v7, :cond_813

    .line 1777
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPermissions()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/pkg/component/ParsedPermission;

    .line 1778
    iget-object v12, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v10}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v12

    .line 1781
    invoke-interface {v10}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v13

    and-int/lit16 v13, v13, 0x1000

    if-eqz v13, :cond_63f

    if-nez v4, :cond_63f

    const-string v13, "PackageManager"

    .line 1783
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v4

    const-string v4, "Non-System package "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " attempting to delcare ephemeral permission "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1785
    invoke-interface {v10}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; Removing ephemeral."

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1783
    invoke-static {v13, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    invoke-interface {v10}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v4

    and-int/lit16 v4, v4, -0x1001

    .line 1786
    invoke-static {v10, v4}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setProtectionLevel(Lcom/android/server/pm/pkg/component/ParsedPermission;I)V

    goto :goto_641

    :cond_63f
    move/from16 v20, v4

    :goto_641
    if-eqz v12, :cond_70b

    .line 1792
    invoke-virtual {v12}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1794
    invoke-virtual {v1, v4, v6, v15}, Lcom/android/server/pm/InstallPackageHelper;->doesSignatureMatchForPermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/ParsedPackage;I)Z

    move-result v13

    if-nez v13, :cond_6be

    const-string v12, "android"

    .line 1799
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_685

    const-string v4, "PackageManager"

    .line 1809
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " attempting to redeclare system permission "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1811
    invoke-interface {v10}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "; ignoring new declaration"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1809
    invoke-static {v4, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    invoke-interface {v6, v7}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->removePermission(I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    goto/16 :goto_70b

    .line 1800
    :cond_685
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    const/16 v2, -0x70

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1802
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " attempting to redeclare permission "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1804
    invoke-interface {v10}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " already owned by "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 1806
    invoke-interface {v10}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/android/server/pm/PrepareFailure;->conflictsWithExistingPermission(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PrepareFailure;

    move-result-object v1

    throw v1

    :cond_6be
    const-string v4, "android"

    .line 1814
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_70b

    .line 1819
    invoke-interface {v10}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v4

    and-int/lit8 v4, v4, 0xf

    const/4 v13, 0x1

    if-ne v4, v13, :cond_70b

    .line 1821
    invoke-virtual {v12}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v4

    if-nez v4, :cond_70b

    const-string v4, "PackageManager"

    .line 1822
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " trying to change a non-runtime permission "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1824
    invoke-interface {v10}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " to runtime; keeping old protection level"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1822
    invoke-static {v4, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    invoke-virtual {v12}, Lcom/android/server/pm/permission/Permission;->getProtectionLevel()I

    move-result v4

    .line 1826
    invoke-static {v10, v4}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setProtectionLevel(Lcom/android/server/pm/pkg/component/ParsedPermission;I)V

    .line 1833
    :cond_70b
    :goto_70b
    invoke-interface {v10}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_808

    .line 1834
    invoke-static {v6}, Lcom/android/server/pm/InstallPackageHelper;->cannotInstallWithBadPermissionGroups(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)Z

    move-result v4

    if-eqz v4, :cond_808

    const/4 v4, 0x0

    :goto_718
    if-ge v4, v5, :cond_737

    .line 1837
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getPermissionGroups()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    invoke-interface {v12}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1838
    invoke-interface {v10}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_734

    const/4 v4, 0x1

    goto :goto_738

    :cond_734
    add-int/lit8 v4, v4, 0x1

    goto :goto_718

    :cond_737
    const/4 v4, 0x0

    :goto_738
    if-nez v4, :cond_808

    .line 1845
    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1846
    invoke-interface {v10}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Lcom/android/server/pm/PackageManagerService;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v4

    const/16 v12, -0x7f

    if-eqz v4, :cond_7b8

    .line 1859
    iget-object v4, v4, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    const-string v13, "android"

    .line 1861
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_808

    .line 1862
    invoke-virtual {v1, v4, v6, v15}, Lcom/android/server/pm/InstallPackageHelper;->doesSignatureMatchForPermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/ParsedPackage;I)Z

    move-result v13

    if-eqz v13, :cond_75b

    goto/16 :goto_808

    :cond_75b
    const/4 v13, 0x3

    new-array v1, v13, [Ljava/lang/Object;

    const-string v2, "146211400"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, -0x1

    .line 1864
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1865
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const v2, 0x534e4554

    .line 1864
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1867
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1869
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " attempting to declare permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1871
    invoke-interface {v10}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in group "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1872
    invoke-interface {v10}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " owned by package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with incompatible certificate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v12, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_7b8
    const/4 v4, 0x3

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "146211400"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, -0x1

    .line 1849
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1850
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x2

    aput-object v2, v1, v13

    const v14, 0x534e4554

    .line 1849
    invoke-static {v14, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1852
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1854
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " attempting to declare permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1856
    invoke-interface {v10}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in non-existing group "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1857
    invoke-interface {v10}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v12, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_808
    :goto_808
    const/4 v4, 0x3

    const/4 v13, 0x2

    const v14, 0x534e4554

    add-int/lit8 v7, v7, -0x1

    move/from16 v4, v20

    goto/16 :goto_5e6

    :cond_813
    move/from16 v20, v4

    .line 1880
    monitor-exit v9
    :try_end_816
    .catchall {:try_start_510 .. :try_end_816} :catchall_dcb

    const/4 v4, 0x0

    if-eqz v11, :cond_83f

    const-string v5, "application_policy"

    .line 1885
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 1884
    invoke-static {v5}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v5

    if-eqz v5, :cond_83f

    const/4 v7, 0x1

    .line 1887
    :try_start_826
    invoke-interface {v5, v8, v7}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isPackageUpdateAllowed(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_83f

    const-string v5, "PackageManager"

    const-string v7, "This app replacing is not allowed by MDM policy"

    .line 1888
    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0x6e

    .line 1889
    iput v5, v3, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I
    :try_end_837
    .catch Ljava/lang/Exception; {:try_start_826 .. :try_end_837} :catch_838

    return-object v4

    :catch_838
    const-string v5, "PackageManager"

    const-string v7, "MDM hidden api called from non system uid"

    .line 1893
    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83f
    const-string/jumbo v5, "restriction_policy"

    .line 1899
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v5

    if-eqz v5, :cond_885

    .line 1903
    :try_start_84c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    const/4 v9, 0x1

    invoke-interface {v5, v7, v9}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isNewAdminInstallationEnabledAsUser(IZ)Z

    move-result v7

    if-nez v7, :cond_885

    .line 1904
    invoke-virtual {v1, v6}, Lcom/android/server/pm/InstallPackageHelper;->isAdminApplication(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v7

    if-eqz v7, :cond_885

    .line 1905
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    iget-object v9, v2, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v9, v9, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-interface {v5, v7, v9}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->checkPackageSource(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_874

    goto :goto_885

    :cond_874
    const-string v5, "PackageManager"

    const-string v7, "This admin app installation is not allowed"

    .line 1907
    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    new-instance v5, Lcom/android/server/pm/PrepareFailure;

    const-string v7, "Install fail, This admin app installation is not allowed"

    const/16 v9, -0x6e

    invoke-direct {v5, v9, v7}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_885
    .catch Landroid/os/RemoteException; {:try_start_84c .. :try_end_885} :catch_885

    :catch_885
    :cond_885
    :goto_885
    if-eqz v20, :cond_8ad

    if-nez v19, :cond_896

    if-nez v33, :cond_88c

    goto :goto_8ad

    .line 1931
    :cond_88c
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    const-string v2, "Cannot update a system app with an instant app"

    const/16 v3, -0x74

    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1923
    :cond_896
    iget-object v1, v1, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v1, v6, v2}, Lcom/android/server/pm/PmHook;->installFailLog(Landroid/content/Context;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    .line 1927
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    const-string v2, "Cannot install updates to system apps on sdcard"

    const/16 v3, -0x13

    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1936
    :cond_8ad
    :goto_8ad
    iget-object v5, v2, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz v5, :cond_8f0

    const/4 v5, 0x1

    or-int/lit8 v7, v15, 0x1

    or-int/lit16 v5, v7, 0x100

    .line 1941
    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v7

    .line 1942
    :try_start_8bb
    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v9, v8}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v9

    if-nez v9, :cond_8db

    .line 1944
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Missing settings for moved package "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v12, -0x6e

    invoke-virtual {v3, v12, v10}, Lcom/android/server/pm/PackageInstalledInfo;->setError(ILjava/lang/String;)V

    .line 1950
    :cond_8db
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v10

    .line 1951
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v9}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 1952
    monitor-exit v7

    goto :goto_94c

    :catchall_8ec
    move-exception v0

    move-object v1, v0

    monitor-exit v7
    :try_end_8ef
    .catchall {:try_start_8bb .. :try_end_8ef} :catchall_8ec

    throw v1

    :cond_8f0
    const/4 v5, 0x1

    or-int/lit8 v7, v15, 0x1

    .line 1961
    :try_start_8f3
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v5
    :try_end_8f8
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_8f3 .. :try_end_8f8} :catch_da5

    .line 1962
    :try_start_8f8
    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v9, v8}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v9

    .line 1963
    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v10, v8}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1964
    monitor-exit v5
    :try_end_90b
    .catchall {:try_start_8f8 .. :try_end_90b} :catchall_da1

    if-eqz v9, :cond_919

    .line 1966
    :try_start_90d
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v5

    if-eqz v5, :cond_919

    const/4 v5, 0x1

    goto :goto_91a

    :cond_919
    const/4 v5, 0x0

    .line 1967
    :goto_91a
    iget-object v9, v2, Lcom/android/server/pm/InstallArgs;->mAbiOverride:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/server/pm/PackageManagerServiceUtils;->deriveAbiOverride(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v10, :cond_92a

    .line 1968
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v10

    if-eqz v10, :cond_92a

    const/4 v10, 0x1

    goto :goto_92b

    :cond_92a
    const/4 v10, 0x0

    .line 1970
    :goto_92b
    iget-object v12, v1, Lcom/android/server/pm/InstallPackageHelper;->mPackageAbiHelper:Lcom/android/server/pm/PackageAbiHelper;

    if-nez v5, :cond_934

    if-eqz v10, :cond_932

    goto :goto_934

    :cond_932
    const/4 v5, 0x0

    goto :goto_935

    :cond_934
    :goto_934
    const/4 v5, 0x1

    .line 1972
    :goto_935
    invoke-static {}, Lcom/android/server/pm/ScanPackageUtils;->getAppLib32InstallDir()Ljava/io/File;

    move-result-object v10

    .line 1970
    invoke-interface {v12, v6, v5, v9, v10}, Lcom/android/server/pm/PackageAbiHelper;->derivePackageAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Ljava/io/File;)Landroid/util/Pair;

    move-result-object v5

    .line 1973
    iget-object v9, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-virtual {v9, v6}, Lcom/android/server/pm/PackageAbiHelper$Abis;->applyTo(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V

    .line 1974
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V
    :try_end_94b
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_90d .. :try_end_94b} :catch_da5

    move v5, v7

    .line 1982
    :goto_94c
    iget v7, v3, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    invoke-virtual {v2, v7, v6}, Lcom/android/server/pm/InstallArgs;->doRename(ILcom/android/server/pm/parsing/pkg/ParsedPackage;)Z

    move-result v7

    if-eqz v7, :cond_d8b

    .line 1992
    :try_start_954
    invoke-virtual {v1, v6}, Lcom/android/server/pm/InstallPackageHelper;->setUpFsVerityIfPossible(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    :try_end_957
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_954 .. :try_end_957} :catch_d70
    .catch Ljava/io/IOException; {:try_start_954 .. :try_end_957} :catch_d70
    .catch Ljava/security/DigestException; {:try_start_954 .. :try_end_957} :catch_d70
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_954 .. :try_end_957} :catch_d70

    const-string/jumbo v7, "installPackageLI"

    move/from16 v9, v35

    .line 2000
    invoke-virtual {v1, v8, v9, v7}, Lcom/android/server/pm/InstallPackageHelper;->freezePackageForInstall(Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v7

    .line 2013
    :try_start_960
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-static {v6, v8}, Lcom/android/server/pm/PmHook;->beginInstallLog(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    if-eqz v11, :cond_cc8

    .line 2017
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2018
    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v8
    :try_end_976
    .catchall {:try_start_960 .. :try_end_976} :catchall_d64

    .line 2019
    :try_start_976
    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v10, v4}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2020
    monitor-exit v8
    :try_end_981
    .catchall {:try_start_976 .. :try_end_981} :catchall_cc1

    .line 2021
    :try_start_981
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isStaticSharedLibrary()Z

    move-result v8
    :try_end_985
    .catchall {:try_start_981 .. :try_end_985} :catchall_d64

    if-eqz v8, :cond_99c

    if-eqz v10, :cond_99c

    and-int/lit8 v8, v9, 0x20

    if-eqz v8, :cond_98e

    goto :goto_99c

    .line 2027
    :cond_98e
    :try_start_98e
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    const/4 v2, -0x5

    const-string v4, "Packages declaring static-shared libs cannot be updated"

    invoke-direct {v1, v2, v4}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_997
    .catchall {:try_start_98e .. :try_end_997} :catchall_997

    :catchall_997
    move-exception v0

    move-object v1, v0

    const/4 v8, 0x1

    goto/16 :goto_d68

    :cond_99c
    :goto_99c
    and-int/lit16 v8, v5, 0x2000

    if-eqz v8, :cond_9a2

    const/4 v8, 0x1

    goto :goto_9a3

    :cond_9a2
    const/4 v8, 0x0

    .line 2039
    :goto_9a3
    :try_start_9a3
    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v9
    :try_end_9a8
    .catchall {:try_start_9a3 .. :try_end_9a8} :catchall_d64

    .line 2045
    :try_start_9a8
    iget-object v12, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v12, v4}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v12

    .line 2046
    iget-object v13, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v13, v12}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    .line 2047
    iget-object v14, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v14, v12}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v14

    .line 2050
    iget-object v15, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v15}, Lcom/android/server/pm/Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v15

    .line 2051
    invoke-virtual {v15, v12, v14, v5}, Lcom/android/server/pm/KeySetManagerService;->shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/SharedUserApi;I)Z

    move-result v14
    :try_end_9cc
    .catchall {:try_start_9a8 .. :try_end_9cc} :catchall_cba

    if-eqz v14, :cond_9f4

    .line 2052
    :try_start_9ce
    invoke-virtual {v15, v12, v6}, Lcom/android/server/pm/KeySetManagerService;->checkUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v14

    if-eqz v14, :cond_9d7

    move/from16 v16, v11

    goto :goto_a2e

    .line 2053
    :cond_9d7
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New package not signed by keys specified by upgrade-keysets: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x7

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_9ef
    .catchall {:try_start_9ce .. :try_end_9ef} :catchall_9ef

    :catchall_9ef
    move-exception v0

    move-object v1, v0

    const/4 v14, 0x1

    goto/16 :goto_cbd

    .line 2058
    :cond_9f4
    :try_start_9f4
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v14

    .line 2059
    invoke-interface {v10}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v15
    :try_end_9fc
    .catchall {:try_start_9f4 .. :try_end_9fc} :catchall_cba

    move/from16 v16, v11

    const/4 v11, 0x1

    .line 2061
    :try_start_9ff
    invoke-virtual {v14, v15, v11}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v17
    :try_end_a03
    .catchall {:try_start_9ff .. :try_end_a03} :catchall_cb7

    if-nez v17, :cond_a2e

    const/16 v11, 0x8

    .line 2063
    :try_start_a07
    invoke-virtual {v15, v14, v11}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v11

    if-nez v11, :cond_a2e

    if-eqz v18, :cond_a16

    .line 2070
    invoke-virtual {v15, v14}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v11

    if-eqz v11, :cond_a16

    goto :goto_a2e

    .line 2072
    :cond_a16
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New package has a different signature: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x7

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_a2e
    .catchall {:try_start_a07 .. :try_end_a2e} :catchall_9ef

    .line 2079
    :cond_a2e
    :goto_a2e
    :try_start_a2e
    invoke-interface {v10}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getRestrictUpdateHash()[B

    move-result-object v11
    :try_end_a32
    .catchall {:try_start_a2e .. :try_end_a32} :catchall_cba

    if-eqz v11, :cond_abd

    :try_start_a34
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v11
    :try_end_a38
    .catchall {:try_start_a34 .. :try_end_a38} :catchall_9ef

    if-eqz v11, :cond_abd

    :try_start_a3a
    const-string v11, "SHA-512"

    .line 2082
    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v11

    .line 2083
    new-instance v14, Ljava/io/File;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v14}, Lcom/android/server/pm/InstallPackageHelper;->updateDigest(Ljava/security/MessageDigest;Ljava/io/File;)V

    .line 2084
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a75

    .line 2085
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v14

    array-length v15, v14

    move-object/from16 v17, v13

    const/4 v13, 0x0

    :goto_a5e
    if-ge v13, v15, :cond_a77

    move/from16 v18, v15

    aget-object v15, v14, v13

    move-object/from16 v19, v14

    .line 2086
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v14}, Lcom/android/server/pm/InstallPackageHelper;->updateDigest(Ljava/security/MessageDigest;Ljava/io/File;)V

    add-int/lit8 v13, v13, 0x1

    move/from16 v15, v18

    move-object/from16 v14, v19

    goto :goto_a5e

    :cond_a75
    move-object/from16 v17, v13

    .line 2089
    :cond_a77
    invoke-virtual {v11}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v11
    :try_end_a7b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a3a .. :try_end_a7b} :catch_aa5
    .catch Ljava/io/IOException; {:try_start_a3a .. :try_end_a7b} :catch_aa5
    .catchall {:try_start_a3a .. :try_end_a7b} :catchall_9ef

    .line 2094
    :try_start_a7b
    invoke-interface {v10}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getRestrictUpdateHash()[B

    move-result-object v13

    invoke-static {v13, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_a8d

    .line 2099
    invoke-interface {v10}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getRestrictUpdateHash()[B

    move-result-object v11

    invoke-interface {v6, v11}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setRestrictUpdateHash([B)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    goto :goto_abf

    .line 2095
    :cond_a8d
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New package fails restrict-update check: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x2

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1

    .line 2091
    :catch_aa5
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not compute hash: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x2

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_abd
    .catchall {:try_start_a7b .. :try_end_abd} :catchall_9ef

    :cond_abd
    move-object/from16 v17, v13

    .line 2103
    :goto_abf
    :try_start_abf
    invoke-interface {v10}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSharedUserId()Ljava/lang/String;

    move-result-object v11
    :try_end_ac3
    .catchall {:try_start_abf .. :try_end_ac3} :catchall_cba

    if-eqz v11, :cond_aca

    .line 2104
    :try_start_ac5
    invoke-interface {v10}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSharedUserId()Ljava/lang/String;

    move-result-object v11
    :try_end_ac9
    .catchall {:try_start_ac5 .. :try_end_ac9} :catchall_9ef

    goto :goto_acc

    :cond_aca
    :try_start_aca
    const-string v11, "<nothing>"

    .line 2105
    :goto_acc
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSharedUserId()Ljava/lang/String;

    move-result-object v13
    :try_end_ad0
    .catchall {:try_start_aca .. :try_end_ad0} :catchall_cba

    if-eqz v13, :cond_ad7

    .line 2106
    :try_start_ad2
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSharedUserId()Ljava/lang/String;

    move-result-object v13
    :try_end_ad6
    .catchall {:try_start_ad2 .. :try_end_ad6} :catchall_9ef

    goto :goto_ad9

    :cond_ad7
    :try_start_ad7
    const-string v13, "<nothing>"

    .line 2107
    :goto_ad9
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c89

    .line 2115
    invoke-interface {v10}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isLeavingSharedUid()Z

    move-result v11
    :try_end_ae3
    .catchall {:try_start_ad7 .. :try_end_ae3} :catchall_cba

    if-eqz v11, :cond_b11

    :try_start_ae5
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isLeavingSharedUid()Z

    move-result v11

    if-eqz v11, :cond_aec

    goto :goto_b11

    .line 2116
    :cond_aec
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    const/16 v2, -0x18

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2117
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " attempting to rejoin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_b11
    .catchall {:try_start_ae5 .. :try_end_b11} :catchall_9ef

    .line 2122
    :cond_b11
    :goto_b11
    :try_start_b11
    iget-object v11, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v11}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v11
    :try_end_b19
    .catchall {:try_start_b11 .. :try_end_b19} :catchall_cba

    const/4 v13, 0x1

    .line 2123
    :try_start_b1a
    invoke-virtual {v12, v11, v13}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v14
    :try_end_b1e
    .catchall {:try_start_b1a .. :try_end_b1e} :catchall_c86

    const/4 v13, 0x0

    .line 2124
    :try_start_b1f
    invoke-virtual {v12, v11, v13}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v15
    :try_end_b23
    .catchall {:try_start_b1f .. :try_end_b23} :catchall_cba

    if-eqz v8, :cond_b9f

    .line 2129
    :try_start_b25
    iget-object v8, v2, Lcom/android/server/pm/InstallArgs;->mUser:Landroid/os/UserHandle;

    if-eqz v8, :cond_b6a

    .line 2130
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    const/4 v13, -0x1

    if-ne v8, v13, :cond_b31

    goto :goto_b6a

    .line 2141
    :cond_b31
    iget-object v8, v2, Lcom/android/server/pm/InstallArgs;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v12, v8}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v8

    if-eqz v8, :cond_b3e

    goto :goto_b9f

    :cond_b3e
    const-string v1, "PackageManager"

    .line 2143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t replace full app with instant app: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for user: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/pm/InstallArgs;->mUser:Landroid/os/UserHandle;

    .line 2144
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2143
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    const/16 v2, -0x74

    invoke-direct {v1, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(I)V

    throw v1

    .line 2131
    :cond_b6a
    :goto_b6a
    array-length v2, v11

    const/4 v8, 0x0

    :goto_b6c
    if-ge v8, v2, :cond_b9f

    aget v13, v11, v8

    .line 2132
    invoke-virtual {v12, v13}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v18

    if-eqz v18, :cond_b79

    add-int/lit8 v8, v8, 0x1

    goto :goto_b6c

    :cond_b79
    const-string v1, "PackageManager"

    .line 2134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t replace full app with instant app: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for user: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    const/16 v2, -0x74

    invoke-direct {v1, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(I)V

    throw v1
    :try_end_b9f
    .catchall {:try_start_b25 .. :try_end_b9f} :catchall_9ef

    .line 2149
    :cond_b9f
    :goto_b9f
    :try_start_b9f
    monitor-exit v9
    :try_end_ba0
    .catchall {:try_start_b9f .. :try_end_ba0} :catchall_cba

    .line 2152
    :try_start_ba0
    new-instance v2, Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v1, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v2, v1}, Lcom/android/server/pm/PackageRemovedInfo;-><init>(Lcom/android/server/pm/PackageSender;)V

    iput-object v2, v3, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 2153
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v1

    iput v1, v2, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 2154
    iget-object v1, v3, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    invoke-interface {v10}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 2155
    iget-object v1, v3, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    .line 2156
    iget-object v1, v3, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 2157
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_bcb

    const/4 v2, 0x1

    goto :goto_bcc

    :cond_bcb
    const/4 v2, 0x0

    :goto_bcc
    iput-boolean v2, v1, Lcom/android/server/pm/PackageRemovedInfo;->mIsStaticSharedLib:Z

    .line 2158
    iget-object v1, v3, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;
    :try_end_bd0
    .catchall {:try_start_ba0 .. :try_end_bd0} :catchall_d64

    const/4 v2, 0x1

    :try_start_bd1
    iput-boolean v2, v1, Lcom/android/server/pm/PackageRemovedInfo;->mIsUpdate:Z
    :try_end_bd3
    .catchall {:try_start_bd1 .. :try_end_bd3} :catchall_c82

    .line 2159
    :try_start_bd3
    iput-object v14, v1, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    .line 2160
    new-instance v2, Landroid/util/SparseArray;

    array-length v4, v14

    invoke-direct {v2, v4}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, v1, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseArray;

    const/4 v11, 0x0

    .line 2161
    :goto_bde
    array-length v1, v14
    :try_end_bdf
    .catchall {:try_start_bd3 .. :try_end_bdf} :catchall_d64

    if-ge v11, v1, :cond_bf5

    .line 2162
    :try_start_be1
    aget v1, v14, v11

    .line 2163
    iget-object v2, v3, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseArray;

    invoke-virtual {v12, v1}, Lcom/android/server/pm/PackageSetting;->getInstallReason(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_bf2
    .catchall {:try_start_be1 .. :try_end_bf2} :catchall_997

    add-int/lit8 v11, v11, 0x1

    goto :goto_bde

    .line 2165
    :cond_bf5
    :try_start_bf5
    iget-object v1, v3, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    new-instance v2, Landroid/util/SparseArray;

    array-length v4, v15

    invoke-direct {v2, v4}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, v1, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseArray;

    const/4 v11, 0x0

    .line 2166
    :goto_c00
    array-length v1, v15
    :try_end_c01
    .catchall {:try_start_bf5 .. :try_end_c01} :catchall_d64

    if-ge v11, v1, :cond_c17

    .line 2167
    :try_start_c03
    aget v1, v15, v11

    .line 2168
    iget-object v2, v3, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseArray;

    invoke-virtual {v12, v1}, Lcom/android/server/pm/PackageSetting;->getUninstallReason(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_c14
    .catchall {:try_start_c03 .. :try_end_c14} :catchall_997

    add-int/lit8 v11, v11, 0x1

    goto :goto_c00

    .line 2170
    :cond_c17
    :try_start_c17
    iget-object v1, v3, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    invoke-interface {v10}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isExternalStorage()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/pm/PackageRemovedInfo;->mIsExternal:Z

    .line 2172
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_c72

    .line 2175
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isPrivileged()Z

    move-result v2

    .line 2176
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isOem()Z

    move-result v4

    .line 2177
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isVendor()Z

    move-result v8

    .line 2178
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isProduct()Z

    move-result v9

    .line 2179
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isOdm()Z

    move-result v11

    .line 2180
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystemExt()Z

    move-result v13
    :try_end_c3d
    .catchall {:try_start_c17 .. :try_end_c3d} :catchall_d64

    const/high16 v14, 0x10000

    or-int/2addr v5, v14

    if-eqz v2, :cond_c45

    const/high16 v2, 0x20000

    goto :goto_c46

    :cond_c45
    const/4 v2, 0x0

    :goto_c46
    or-int/2addr v2, v5

    if-eqz v4, :cond_c4c

    const/high16 v4, 0x40000

    goto :goto_c4d

    :cond_c4c
    const/4 v4, 0x0

    :goto_c4d
    or-int/2addr v2, v4

    if-eqz v8, :cond_c53

    const/high16 v4, 0x80000

    goto :goto_c54

    :cond_c53
    const/4 v4, 0x0

    :goto_c54
    or-int/2addr v2, v4

    if-eqz v9, :cond_c5a

    const/high16 v4, 0x100000

    goto :goto_c5b

    :cond_c5a
    const/4 v4, 0x0

    :goto_c5b
    or-int/2addr v2, v4

    if-eqz v11, :cond_c61

    const/high16 v11, 0x400000

    goto :goto_c62

    :cond_c61
    const/4 v11, 0x0

    :goto_c62
    or-int/2addr v2, v11

    if-eqz v13, :cond_c68

    const/high16 v11, 0x200000

    goto :goto_c69

    :cond_c68
    const/4 v11, 0x0

    :goto_c69
    or-int v5, v2, v11

    const/4 v14, 0x1

    .line 2195
    :try_start_c6c
    invoke-virtual {v3, v14}, Lcom/android/server/pm/PackageInstalledInfo;->setReturnCode(I)V
    :try_end_c6f
    .catchall {:try_start_c6c .. :try_end_c6f} :catchall_d62

    move/from16 v8, v16

    goto :goto_c74

    :cond_c72
    const/4 v14, 0x1

    move v8, v14

    :goto_c74
    move/from16 v30, v1

    move/from16 v25, v5

    move/from16 v29, v8

    move-object/from16 v27, v10

    move-object/from16 v31, v12

    move-object/from16 v32, v17

    goto/16 :goto_cf3

    :catchall_c82
    move-exception v0

    move v14, v2

    goto/16 :goto_d66

    :catchall_c86
    move-exception v0

    move v14, v13

    goto :goto_cbc

    :cond_c89
    const/4 v14, 0x1

    .line 2108
    :try_start_c8a
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    const/16 v2, -0x18

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2109
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " shared user changed from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1

    :catchall_cb7
    move-exception v0

    move v14, v11

    goto :goto_cbc

    :catchall_cba
    move-exception v0

    const/4 v14, 0x1

    :goto_cbc
    move-object v1, v0

    .line 2149
    :goto_cbd
    monitor-exit v9
    :try_end_cbe
    .catchall {:try_start_c8a .. :try_end_cbe} :catchall_cbf

    :try_start_cbe
    throw v1
    :try_end_cbf
    .catchall {:try_start_cbe .. :try_end_cbf} :catchall_d62

    :catchall_cbf
    move-exception v0

    goto :goto_cbc

    :catchall_cc1
    move-exception v0

    const/4 v14, 0x1

    :goto_cc3
    move-object v1, v0

    .line 2020
    :try_start_cc4
    monitor-exit v8
    :try_end_cc5
    .catchall {:try_start_cc4 .. :try_end_cc5} :catchall_cc6

    :try_start_cc5
    throw v1

    :catchall_cc6
    move-exception v0

    goto :goto_cc3

    :cond_cc8
    const/4 v14, 0x1

    .line 2212
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 2217
    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v9
    :try_end_cd2
    .catchall {:try_start_cc5 .. :try_end_cd2} :catchall_d62

    .line 2218
    :try_start_cd2
    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v10, v8}, Lcom/android/server/pm/Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_d31

    .line 2233
    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v10, v8}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d07

    .line 2243
    monitor-exit v9
    :try_end_ce7
    .catchall {:try_start_cd2 .. :try_end_ce7} :catchall_d5e

    move-object/from16 v27, v4

    move-object/from16 v31, v27

    move-object/from16 v32, v31

    move/from16 v25, v5

    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 2248
    :goto_cf3
    :try_start_cf3
    new-instance v1, Lcom/android/server/pm/PrepareResult;

    move-object/from16 v23, v1

    move/from16 v24, v29

    move/from16 v26, v28

    move-object/from16 v28, v6

    invoke-direct/range {v23 .. v32}, Lcom/android/server/pm/PrepareResult;-><init>(ZIILcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/ParsedPackage;ZZLcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V
    :try_end_d00
    .catchall {:try_start_cf3 .. :try_end_d00} :catchall_d03

    .line 2252
    iput-object v7, v3, Lcom/android/server/pm/PackageInstalledInfo;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    return-object v1

    :catchall_d03
    move-exception v0

    move-object v1, v0

    const/4 v8, 0x0

    goto :goto_d68

    .line 2236
    :cond_d07
    :try_start_d07
    iget-object v1, v1, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v1, v6, v2}, Lcom/android/server/pm/PmHook;->installFailLog(Landroid/content/Context;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    .line 2239
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to re-install "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " without first uninstalling."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1

    .line 2226
    :cond_d31
    iget-object v1, v1, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v1, v6, v2}, Lcom/android/server/pm/PmHook;->installFailLog(Landroid/content/Context;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    .line 2228
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to re-install "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " without first uninstalling package running as "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1

    :catchall_d5e
    move-exception v0

    move-object v1, v0

    .line 2243
    monitor-exit v9
    :try_end_d61
    .catchall {:try_start_d07 .. :try_end_d61} :catchall_d5e

    :try_start_d61
    throw v1
    :try_end_d62
    .catchall {:try_start_d61 .. :try_end_d62} :catchall_d62

    :catchall_d62
    move-exception v0

    goto :goto_d66

    :catchall_d64
    move-exception v0

    const/4 v14, 0x1

    :goto_d66
    move-object v1, v0

    move v8, v14

    .line 2252
    :goto_d68
    iput-object v7, v3, Lcom/android/server/pm/PackageInstalledInfo;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    if-eqz v8, :cond_d6f

    .line 2254
    invoke-virtual {v7}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 2256
    :cond_d6f
    throw v1

    :catch_d70
    move-exception v0

    move-object v1, v0

    .line 1995
    new-instance v2, Lcom/android/server/pm/PrepareFailure;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set up verity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, -0x6e

    invoke-direct {v2, v3, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v2

    .line 1985
    :cond_d8b
    iget-object v1, v1, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v1, v6, v2}, Lcom/android/server/pm/PmHook;->installFailLog(Landroid/content/Context;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    .line 1988
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    const/4 v2, -0x4

    const-string v3, "Failed rename"

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1

    :catchall_da1
    move-exception v0

    move-object v1, v0

    .line 1964
    :try_start_da3
    monitor-exit v5
    :try_end_da4
    .catchall {:try_start_da3 .. :try_end_da4} :catchall_da1

    :try_start_da4
    throw v1
    :try_end_da5
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_da4 .. :try_end_da5} :catch_da5

    :catch_da5
    move-exception v0

    move-object v1, v0

    const-string v2, "PackageManager"

    const-string v3, "Error deriving application ABI"

    .line 1976
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1977
    new-instance v2, Lcom/android/server/pm/PrepareFailure;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error deriving application ABI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1978
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, -0x6e

    invoke-direct {v2, v3, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v2

    :catchall_dcb
    move-exception v0

    move-object v1, v0

    .line 1880
    :try_start_dcd
    monitor-exit v9
    :try_end_dce
    .catchall {:try_start_dcd .. :try_end_dce} :catchall_dcb

    throw v1

    .line 1595
    :cond_dcf
    iget-object v1, v1, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v1, v6, v2}, Lcom/android/server/pm/PmHook;->installFailLog(Landroid/content/Context;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    .line 1596
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    const-string v2, "This SmartSwitch installation is not allowed due to app is running in OOBE"

    const/16 v3, -0x6e

    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1506
    :cond_de6
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    const-string v2, "Failed collect during installPackageLI"

    .line 1507
    invoke-interface {v11}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PrepareFailure;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1437
    :cond_df2
    invoke-static {v8}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->notAllowedReasonToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Install failed. Not allowed to install due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for User "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1439
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    .line 1440
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    new-instance v2, Lcom/android/server/pm/PrepareFailure;

    const/16 v3, -0x6e

    invoke-direct {v2, v3, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v2

    :catchall_e24
    move-exception v0

    move-object v1, v0

    if-eqz v13, :cond_e31

    .line 1423
    :try_start_e28
    invoke-virtual {v13}, Lcom/android/server/pm/parsing/PackageParser2;->close()V
    :try_end_e2b
    .catchall {:try_start_e28 .. :try_end_e2b} :catchall_e2c

    goto :goto_e31

    :catchall_e2c
    move-exception v0

    move-object v2, v0

    :try_start_e2e
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e31
    :goto_e31
    throw v1
    :try_end_e32
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_e2e .. :try_end_e32} :catch_e35
    .catchall {:try_start_e2e .. :try_end_e32} :catchall_e32

    :catchall_e32
    move-exception v0

    move-object v1, v0

    goto :goto_e3f

    :catch_e35
    move-exception v0

    move-object v1, v0

    .line 1427
    :try_start_e37
    new-instance v2, Lcom/android/server/pm/PrepareFailure;

    const-string v3, "Failed parse during installPackageLI"

    invoke-direct {v2, v3, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_e3f
    .catchall {:try_start_e37 .. :try_end_e3f} :catchall_e32

    .line 1429
    :goto_e3f
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1430
    throw v1
.end method

.method public prepareSystemPackageCleanUp(Lcom/android/server/utils/WatchedArrayMap;Ljava/util/List;Landroid/util/ArrayMap;[I)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;[I)V"
        }
    .end annotation

    .line 4568
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4569
    new-instance v0, Lcom/samsung/android/server/pm/install/PmConfigParser;

    invoke-direct {v0}, Lcom/samsung/android/server/pm/install/PmConfigParser;-><init>()V

    const-string v1, "/system/etc/system_to_data_app_list.xml"

    .line 4570
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/pm/install/PmConfigParser;->parsePackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 4576
    :goto_15
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_1b
    if-ltz v1, :cond_114

    .line 4577
    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 4578
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4583
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v4

    if-nez v4, :cond_30

    goto/16 :goto_110

    .line 4590
    :cond_30
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4, v3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4591
    iget-object v6, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 4592
    invoke-virtual {v6, v3}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    const/4 v7, 0x5

    if-eqz v4, :cond_91

    if-eqz v6, :cond_110

    .line 4602
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expecting better updated system app for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; removing system app.  Last known codePath="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4606
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", versionCode="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4607
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "; scanned versionCode="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4609
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getLongVersionCode()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4602
    invoke-static {v7, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 4610
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/pm/RemovePackageHelper;->removePackageLI(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    .line 4611
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPath()Ljava/io/File;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_110

    :cond_91
    if-nez v6, :cond_ea

    if-eqz v0, :cond_c7

    .line 4619
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c7

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c7

    const/4 v3, -0x2

    .line 4620
    invoke-virtual {v5, v3}, Lcom/android/server/pm/SettingBase;->setFlags(I)Lcom/android/server/pm/SettingBase;

    .line 4621
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Don\'t remove this system package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4622
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; It will be re-installed in data partition."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4621
    invoke-static {v7, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    goto :goto_110

    .line 4624
    :cond_c7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "System package "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " no longer exists; its data will be wiped"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 4626
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/RemovePackageHelper;->removePackageDataLIF(Lcom/android/server/pm/PackageSetting;[ILcom/android/server/pm/PackageRemovedInfo;IZ)V

    goto :goto_110

    .line 4634
    :cond_ea
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPath()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_10d

    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPath()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_10d

    .line 4635
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    if-nez v4, :cond_101

    goto :goto_10d

    .line 4641
    :cond_101
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPath()Ljava/io/File;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_110

    .line 4636
    :cond_10d
    :goto_10d
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_110
    :goto_110
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1b

    :cond_114
    return-void
.end method

.method public processInstallRequests(ZLjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstallRequest;",
            ">;)V"
        }
    .end annotation

    .line 1055
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1056
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1057
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/InstallRequest;

    .line 1058
    iget-object v3, v2, Lcom/android/server/pm/InstallRequest;->mArgs:Lcom/android/server/pm/InstallArgs;

    iget v3, v3, Lcom/android/server/pm/InstallArgs;->mInstallFlags:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_27

    .line 1059
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1061
    :cond_27
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1066
    :cond_2b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_40

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_38

    goto :goto_40

    .line 1068
    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Attempted to do a multi package install of both APEXes and APKs"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1071
    :cond_40
    :goto_40
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6c

    if-eqz p1, :cond_59

    .line 1075
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v0}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstallPackageHelper;Ljava/util/List;)V

    const-string/jumbo p0, "installApexPackages"

    invoke-direct {p1, p2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1077
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_6b

    :cond_59
    const/4 p1, 0x0

    .line 1082
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/InstallRequest;

    .line 1083
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p1, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget-object p1, p1, Lcom/android/server/pm/InstallRequest;->mArgs:Lcom/android/server/pm/InstallArgs;

    iget-object p1, p1, Lcom/android/server/pm/InstallArgs;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/PackageInstalledInfo;Landroid/content/pm/IPackageInstallObserver2;)V

    :goto_6b
    return-void

    :cond_6c
    if-eqz p1, :cond_b0

    .line 1089
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_72
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_88

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/InstallRequest;

    .line 1090
    iget-object v0, p2, Lcom/android/server/pm/InstallRequest;->mArgs:Lcom/android/server/pm/InstallArgs;

    iget-object p2, p2, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget p2, p2, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    invoke-virtual {v0, p2}, Lcom/android/server/pm/InstallArgs;->doPreInstall(I)I

    goto :goto_72

    .line 1092
    :cond_88
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1093
    :try_start_8d
    invoke-virtual {p0, v1}, Lcom/android/server/pm/InstallPackageHelper;->installPackagesTracedLI(Ljava/util/List;)V

    .line 1094
    monitor-exit p1
    :try_end_91
    .catchall {:try_start_8d .. :try_end_91} :catchall_ad

    .line 1095
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_95
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/InstallRequest;

    .line 1096
    iget-object v0, p2, Lcom/android/server/pm/InstallRequest;->mArgs:Lcom/android/server/pm/InstallArgs;

    iget-object p2, p2, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget v2, p2, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    iget p2, p2, Lcom/android/server/pm/PackageInstalledInfo;->mUid:I

    invoke-virtual {v0, v2, p2}, Lcom/android/server/pm/InstallArgs;->doPostInstall(II)I

    goto :goto_95

    :catchall_ad
    move-exception p0

    .line 1094
    :try_start_ae
    monitor-exit p1
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    throw p0

    .line 1100
    :cond_b0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/InstallRequest;

    .line 1101
    iget-object v0, p2, Lcom/android/server/pm/InstallRequest;->mArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget-object v1, p2, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    new-instance v2, Lcom/android/server/pm/PostInstallData;

    iget-object p2, p2, Lcom/android/server/pm/InstallRequest;->mArgs:Lcom/android/server/pm/InstallArgs;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v1, v3}, Lcom/android/server/pm/PostInstallData;-><init>(Lcom/android/server/pm/InstallArgs;Lcom/android/server/pm/PackageInstalledInfo;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/InstallPackageHelper;->restoreAndPostInstall(ILcom/android/server/pm/PackageInstalledInfo;Lcom/android/server/pm/PostInstallData;)V

    goto :goto_b4

    :cond_d6
    return-void
.end method

.method public restoreAndPostInstall(ILcom/android/server/pm/PackageInstalledInfo;Lcom/android/server/pm/PostInstallData;)V
    .registers 11

    .line 908
    iget-object v0, p2, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    if-nez v0, :cond_15

    .line 910
    iget-object v3, p2, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v3, :cond_15

    move v3, v2

    goto :goto_16

    :cond_15
    move v3, v1

    .line 915
    :goto_16
    iget-object v4, p2, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v4, :cond_2d

    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 916
    iget-object v4, p2, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/om/SemSamsungThemeUtils;->hasSamsungOverlayPermission(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_2d

    move v3, v1

    .line 924
    :cond_2d
    iget-object v4, p2, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v4, :cond_38

    invoke-static {v4}, Lcom/android/server/om/SemSamsungThemeUtils;->isZippedLocaleOverlay(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v4

    if-eqz v4, :cond_38

    move v3, v1

    .line 934
    :cond_38
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v5, v4, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    if-gez v5, :cond_40

    iput v2, v4, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 935
    :cond_40
    iget v5, v4, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v4, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    if-eqz p3, :cond_4d

    .line 937
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v4, v5, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 944
    :cond_4d
    iget v4, p2, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    if-ne v4, v2, :cond_5e

    if-eqz v3, :cond_5e

    .line 949
    iget-object v3, p2, Lcom/android/server/pm/PackageInstalledInfo;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    if-eqz v3, :cond_5a

    .line 950
    invoke-virtual {v3}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 952
    :cond_5a
    invoke-virtual {p0, p1, v5, p2}, Lcom/android/server/pm/InstallPackageHelper;->performBackupManagerRestore(IILcom/android/server/pm/PackageInstalledInfo;)Z

    move-result v3

    .line 960
    :cond_5e
    iget v4, p2, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    if-ne v4, v2, :cond_6a

    if-nez v3, :cond_6a

    if-eqz v0, :cond_6a

    .line 961
    invoke-virtual {p0, p1, v5, p2, p3}, Lcom/android/server/pm/InstallPackageHelper;->performRollbackManagerRestore(IILcom/android/server/pm/PackageInstalledInfo;Lcom/android/server/pm/PostInstallData;)Z

    move-result v3

    :cond_6a
    if-nez v3, :cond_86

    const-wide/32 p1, 0x40000

    const-string/jumbo p3, "postInstall"

    .line 969
    invoke-static {p1, p2, p3, v5}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 971
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x9

    invoke-virtual {p1, p2, v5, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 972
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_86
    return-void
.end method

.method public restoreDisabledSystemPackageLIF(Lcom/android/server/pm/DeletePackageAction;[IZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/SystemDeleteException;
        }
    .end annotation

    .line 4420
    iget-object v0, p1, Lcom/android/server/pm/DeletePackageAction;->mDeletingPs:Lcom/android/server/pm/PackageSetting;

    .line 4421
    iget-object v1, p1, Lcom/android/server/pm/DeletePackageAction;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 4422
    iget-object v2, p1, Lcom/android/server/pm/DeletePackageAction;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    .line 4424
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v3

    .line 4430
    :try_start_b
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/Settings;->enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 4432
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->removeNativeBinariesLI(Lcom/android/server/pm/PackageSetting;)V

    .line 4433
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_93

    .line 4437
    :try_start_1e
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_23
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1e .. :try_end_23} :catch_4e
    .catchall {:try_start_1e .. :try_end_23} :catchall_4c

    if-nez v1, :cond_27

    const/4 v1, 0x0

    goto :goto_29

    .line 4438
    :cond_27
    :try_start_27
    iget-object v1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    .line 4439
    :goto_29
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p2, v1, p3}, Lcom/android/server/pm/InstallPackageHelper;->installPackageFromSystemLIF(Ljava/lang/String;[I[IZ)V

    .line 4441
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_49

    .line 4448
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isStub()Z

    move-result p3

    if-eqz p3, :cond_48

    .line 4452
    iget-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter p3

    .line 4453
    :try_start_40
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/InstallPackageHelper;->disableStubPackage(Lcom/android/server/pm/DeletePackageAction;Lcom/android/server/pm/PackageSetting;[I)V

    .line 4454
    monitor-exit p3

    goto :goto_48

    :catchall_45
    move-exception p0

    monitor-exit p3
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_45

    throw p0

    :cond_48
    :goto_48
    return-void

    :catchall_49
    move-exception p3

    .line 4441
    :try_start_4a
    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    :try_start_4b
    throw p3
    :try_end_4c
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4b .. :try_end_4c} :catch_4e
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception p3

    goto :goto_7b

    :catch_4e
    move-exception p3

    :try_start_4f
    const-string v1, "PackageManager"

    .line 4443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to restore system package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4444
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4443
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4446
    new-instance v1, Lcom/android/server/pm/SystemDeleteException;

    invoke-direct {v1, p3}, Lcom/android/server/pm/SystemDeleteException;-><init>(Lcom/android/server/pm/PackageManagerException;)V

    throw v1
    :try_end_7b
    .catchall {:try_start_4f .. :try_end_7b} :catchall_4c

    .line 4448
    :goto_7b
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isStub()Z

    move-result v1

    if-eqz v1, :cond_92

    .line 4452
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 4453
    :try_start_8a
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/InstallPackageHelper;->disableStubPackage(Lcom/android/server/pm/DeletePackageAction;Lcom/android/server/pm/PackageSetting;[I)V

    .line 4454
    monitor-exit v1

    goto :goto_92

    :catchall_8f
    move-exception p0

    monitor-exit v1
    :try_end_91
    .catchall {:try_start_8a .. :try_end_91} :catchall_8f

    throw p0

    .line 4456
    :cond_92
    :goto_92
    throw p3

    :catchall_93
    move-exception p0

    .line 4433
    :try_start_94
    monitor-exit v3
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw p0
.end method

.method public final scanPackageNewLI(Lcom/android/server/pm/parsing/pkg/ParsedPackage;IIJLandroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/pm/ScanResult;
    .registers 26
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mInstallLock",
            "mPm.mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    .line 5168
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/InstallPackageHelper;->prepareInitialScanRequest(Lcom/android/server/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/pm/ScanRequest;

    move-result-object v8

    .line 5170
    iget-object v9, v8, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 5171
    iget-object v10, v8, Lcom/android/server/pm/ScanRequest;->mDisabledPkgSetting:Lcom/android/server/pm/PackageSetting;

    if-eqz v9, :cond_24

    .line 5175
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v1

    :goto_22
    move v11, v1

    goto :goto_2a

    :cond_24
    if-eqz v10, :cond_28

    const/4 v1, 0x1

    goto :goto_22

    :cond_28
    const/4 v1, 0x0

    goto :goto_22

    :goto_2a
    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object v3, v9

    move-object v4, v10

    move-object/from16 v5, p6

    move-object/from16 v6, p1

    .line 5180
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/InstallPackageHelper;->adjustScanFlags(ILcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/os/UserHandle;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)I

    move-result v1

    .line 5182
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 5183
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->getPlatformPackage()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 5182
    invoke-static {v7, v1, v2, v11}, Lcom/android/server/pm/ScanPackageUtils;->applyPolicy(Lcom/android/server/pm/parsing/pkg/ParsedPackage;ILcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    .line 5185
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v15

    move/from16 v11, p2

    .line 5186
    :try_start_48
    invoke-virtual {v0, v7, v11, v1}, Lcom/android/server/pm/InstallPackageHelper;->assertPackageIsValid(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V

    .line 5187
    new-instance v14, Lcom/android/server/pm/ScanRequest;

    iget-object v3, v8, Lcom/android/server/pm/ScanRequest;->mOldSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    iget-object v4, v8, Lcom/android/server/pm/ScanRequest;->mOldPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-object v6, v8, Lcom/android/server/pm/ScanRequest;->mSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    iget-object v12, v8, Lcom/android/server/pm/ScanRequest;->mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v13, v8, Lcom/android/server/pm/ScanRequest;->mRealPkgName:Ljava/lang/String;

    iget-boolean v8, v8, Lcom/android/server/pm/ScanRequest;->mIsPlatformPackage:Z

    move-object v1, v14

    move-object/from16 v2, p1

    move-object v5, v9

    move-object v7, v10

    move/from16 v16, v8

    move-object v8, v12

    move-object v9, v13

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, v16

    move-object/from16 v13, p6

    move-object/from16 v17, v14

    move-object/from16 v14, p7

    invoke-direct/range {v1 .. v14}, Lcom/android/server/pm/ScanRequest;-><init>(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;IIZLandroid/os/UserHandle;Ljava/lang/String;)V

    .line 5194
    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService;->mFactoryTest:Z

    move-wide/from16 v2, p4

    move-object/from16 v4, v17

    invoke-static {v4, v1, v0, v2, v3}, Lcom/android/server/pm/ScanPackageUtils;->scanPackageOnlyLI(Lcom/android/server/pm/ScanRequest;Lcom/android/server/pm/PackageManagerServiceInjector;ZJ)Lcom/android/server/pm/ScanResult;

    move-result-object v0

    monitor-exit v15

    return-object v0

    :catchall_81
    move-exception v0

    .line 5196
    monitor-exit v15
    :try_end_83
    .catchall {:try_start_48 .. :try_end_83} :catchall_81

    throw v0
.end method

.method public final scanPackageTracedLI(Lcom/android/server/pm/parsing/pkg/ParsedPackage;IIJLandroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/pm/ScanResult;
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mInstallLock",
            "mPm.mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    const-wide/32 v0, 0x40000

    const-string/jumbo v2, "scanPackage"

    .line 5085
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5087
    :try_start_9
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/pm/InstallPackageHelper;->scanPackageNewLI(Lcom/android/server/pm/parsing/pkg/ParsedPackage;IIJLandroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/pm/ScanResult;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_11

    .line 5090
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5091
    throw p0
.end method

.method public final scanSystemPackageLI(Lcom/android/server/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;)Landroid/util/Pair;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/ParsedPackage;",
            "II",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/ScanResult;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v14, p3

    and-int/lit8 v1, p2, 0x10

    const/16 v16, 0x0

    const/4 v13, 0x1

    if-eqz v1, :cond_10

    move/from16 v17, v13

    goto :goto_12

    :cond_10
    move/from16 v17, v16

    :goto_12
    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    .line 5205
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/InstallPackageHelper;->prepareInitialScanRequest(Lcom/android/server/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/pm/ScanRequest;

    move-result-object v1

    .line 5207
    iget-object v2, v1, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 5208
    iget-object v3, v1, Lcom/android/server/pm/ScanRequest;->mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;

    if-nez v3, :cond_29

    move-object v12, v2

    goto :goto_2a

    :cond_29
    move-object v12, v3

    :goto_2a
    if-eqz v12, :cond_2f

    move/from16 v18, v13

    goto :goto_31

    :cond_2f
    move/from16 v18, v16

    :goto_31
    if-eqz v18, :cond_38

    .line 5213
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_3c

    :cond_38
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5216
    :goto_3c
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v11

    .line 5217
    :try_start_41
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v19

    if-eqz v17, :cond_77

    if-nez v18, :cond_77

    .line 5218
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 5219
    invoke-virtual {v3, v2}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    if-eqz v3, :cond_77

    const-string v3, "PackageManager"

    .line 5223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inconsistent package setting of updated system app for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". To recover it, enable the system app and install it as non-updated system app."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5226
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/Settings;->removeDisabledSystemPackageLPw(Ljava/lang/String;)V

    .line 5228
    :cond_77
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 5229
    invoke-virtual {v3, v2}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    if-eqz v5, :cond_84

    move/from16 v20, v13

    goto :goto_86

    :cond_84
    move/from16 v20, v16

    :goto_86
    if-eqz v17, :cond_e0

    if-eqz v20, :cond_e0

    .line 5238
    new-instance v10, Lcom/android/server/pm/ScanRequest;

    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 5239
    invoke-virtual {v2, v5}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v6, v1, Lcom/android/server/pm/ScanRequest;->mSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-boolean v2, v1, Lcom/android/server/pm/ScanRequest;->mIsPlatformPackage:Z
    :try_end_9c
    .catchall {:try_start_41 .. :try_end_9c} :catchall_386

    const/16 v21, 0x0

    move-object v1, v10

    move/from16 v22, v2

    move-object/from16 v2, p1

    move-object/from16 v23, v10

    move/from16 v10, p2

    move-object/from16 v24, v11

    move/from16 v11, p3

    move-object/from16 v25, v12

    move/from16 v12, v22

    move-object/from16 v13, p4

    move-object/from16 v14, v21

    :try_start_b3
    invoke-direct/range {v1 .. v14}, Lcom/android/server/pm/ScanRequest;-><init>(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;IIZLandroid/os/UserHandle;Ljava/lang/String;)V

    .line 5245
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 5246
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getPlatformPackage()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    move/from16 v7, p3

    const/4 v8, 0x1

    .line 5245
    invoke-static {v15, v7, v1, v8}, Lcom/android/server/pm/ScanPackageUtils;->applyPolicy(Lcom/android/server/pm/parsing/pkg/ParsedPackage;ILcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    .line 5247
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-boolean v1, v1, Lcom/android/server/pm/PackageManagerService;->mFactoryTest:Z

    const-wide/16 v3, -0x1

    move-object/from16 v5, v23

    .line 5248
    invoke-static {v5, v2, v1, v3, v4}, Lcom/android/server/pm/ScanPackageUtils;->scanPackageOnlyLI(Lcom/android/server/pm/ScanRequest;Lcom/android/server/pm/PackageManagerServiceInjector;ZJ)Lcom/android/server/pm/ScanResult;

    move-result-object v1

    .line 5250
    iget-boolean v2, v1, Lcom/android/server/pm/ScanResult;->mExistingSettingCopied:Z

    if-eqz v2, :cond_e6

    iget-object v2, v1, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v2, v2, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    if-eqz v2, :cond_e6

    .line 5252
    iget-object v1, v1, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageSetting;->updateFrom(Lcom/android/server/pm/PackageSetting;)V

    goto :goto_e6

    :cond_e0
    move-object/from16 v24, v11

    move-object/from16 v25, v12

    move v8, v13

    move v7, v14

    .line 5255
    :cond_e6
    :goto_e6
    monitor-exit v24
    :try_end_e7
    .catchall {:try_start_b3 .. :try_end_e7} :catchall_38b

    if-eqz v18, :cond_f9

    .line 5258
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f9

    move v13, v8

    goto :goto_fb

    :cond_f9
    move/from16 v13, v16

    :goto_fb
    if-eqz v18, :cond_10b

    .line 5260
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getLongVersionCode()J

    move-result-wide v1

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_10b

    move v9, v8

    goto :goto_10d

    :cond_10b
    move/from16 v9, v16

    :goto_10d
    if-eqz v17, :cond_117

    if-eqz v20, :cond_117

    if-eqz v13, :cond_117

    if-eqz v9, :cond_117

    move v13, v8

    goto :goto_119

    :cond_117
    move/from16 v13, v16

    :goto_119
    const/4 v10, 0x5

    if-eqz v13, :cond_1a6

    .line 5268
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 5270
    :try_start_121
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5271
    monitor-exit v1
    :try_end_12d
    .catchall {:try_start_121 .. :try_end_12d} :catchall_1a3

    .line 5273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System package updated; name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5275
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5276
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5277
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getLongVersionCode()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5278
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5279
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5273
    invoke-static {v10, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 5284
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 5285
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v2

    .line 5286
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v4

    .line 5285
    invoke-static {v3, v4}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 5284
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->createInstallArgsForExisting(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/pm/InstallArgs;

    move-result-object v1

    .line 5293
    invoke-virtual {v1}, Lcom/android/server/pm/InstallArgs;->cleanUpResourcesLI()V

    .line 5294
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2

    .line 5295
    :try_start_193
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 5296
    monitor-exit v2

    goto :goto_1a6

    :catchall_1a0
    move-exception v0

    monitor-exit v2
    :try_end_1a2
    .catchall {:try_start_193 .. :try_end_1a2} :catchall_1a0

    throw v0

    :catchall_1a3
    move-exception v0

    .line 5271
    :try_start_1a4
    monitor-exit v1
    :try_end_1a5
    .catchall {:try_start_1a4 .. :try_end_1a5} :catchall_1a3

    throw v0

    :cond_1a6
    :goto_1a6
    if-eqz v17, :cond_1f8

    if-eqz v20, :cond_1f8

    if-nez v13, :cond_1f8

    .line 5308
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->hideAsFinal()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 5309
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5310
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ignored: updated version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v18, :cond_1de

    .line 5311
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1e1

    :cond_1de
    const-string/jumbo v2, "unknown"

    :goto_1e1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " better than this "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5312
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getLongVersionCode()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1f8
    if-eqz v17, :cond_1fd

    move/from16 v4, v19

    goto :goto_202

    .line 5321
    :cond_1fd
    invoke-static/range {v25 .. v25}, Lcom/android/server/pm/PackageManagerServiceUtils;->isApkVerificationForced(Lcom/android/server/pm/PackageSetting;)Z

    move-result v1

    move v4, v1

    :goto_202
    if-nez v17, :cond_210

    if-eqz v4, :cond_20d

    .line 5330
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/InstallPackageHelper;->canSkipForcedPackageVerification(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v1

    if-eqz v1, :cond_20d

    goto :goto_210

    :cond_20d
    move/from16 v5, v16

    goto :goto_211

    :cond_210
    :goto_210
    move v5, v8

    .line 5331
    :goto_211
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 5332
    invoke-virtual {v1, v15}, Lcom/android/server/pm/PackageManagerService;->getSettingsVersionForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v3

    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 5333
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->isPreNMR1Upgrade()Z

    move-result v6

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    .line 5331
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/ScanPackageUtils;->collectCertificatesLI(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/Settings$VersionInfo;ZZZ)V

    move-object/from16 v2, v25

    .line 5336
    invoke-virtual {v0, v2, v15}, Lcom/android/server/pm/InstallPackageHelper;->maybeClearProfilesForUpgradesLI(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    if-eqz v17, :cond_36b

    if-nez v20, :cond_36b

    if-eqz v18, :cond_36b

    .line 5346
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v1

    if-nez v1, :cond_36b

    .line 5348
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    .line 5349
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    invoke-virtual {v1, v3, v8}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v1

    if-nez v1, :cond_2af

    .line 5351
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    .line 5352
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    const/16 v4, 0x8

    .line 5351
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v1

    if-nez v1, :cond_2af

    .line 5354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System package signature mismatch; name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5356
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5354
    invoke-static {v10, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 5357
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 5358
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "scanPackageInternalLI"

    .line 5357
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v1

    .line 5360
    :try_start_278
    new-instance v2, Lcom/android/server/pm/DeletePackageHelper;

    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/pm/DeletePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 5361
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 5362
    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v2

    .line 5361
    invoke-virtual/range {v17 .. v24}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageLIF(Ljava/lang/String;Landroid/os/UserHandle;Z[IILcom/android/server/pm/PackageRemovedInfo;Z)Z
    :try_end_29a
    .catchall {:try_start_278 .. :try_end_29a} :catchall_2a1

    if-eqz v1, :cond_36b

    .line 5363
    invoke-virtual {v1}, Lcom/android/server/pm/PackageFreezer;->close()V

    goto/16 :goto_36b

    :catchall_2a1
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_2ae

    .line 5357
    :try_start_2a5
    invoke-virtual {v1}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_2a8
    .catchall {:try_start_2a5 .. :try_end_2a8} :catchall_2a9

    goto :goto_2ae

    :catchall_2a9
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2ae
    :goto_2ae
    throw v2

    :cond_2af
    if-eqz v9, :cond_320

    .line 5368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System package enabled; name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5370
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5371
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " --> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5372
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getLongVersionCode()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5373
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5374
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5368
    invoke-static {v10, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 5379
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 5380
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v3

    .line 5381
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v5

    .line 5380
    invoke-static {v4, v5}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 5382
    invoke-static {v2}, Lcom/android/server/pm/AsecInstallHelper;->packageFlagsToInstallFlags(Lcom/android/server/pm/PackageSetting;)I

    move-result v2

    .line 5379
    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/pm/PackageManagerService;->createInstallArgsForExisting(Ljava/lang/String;[Ljava/lang/String;I)Lcom/android/server/pm/InstallArgs;

    move-result-object v1

    .line 5390
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5391
    :try_start_318
    invoke-virtual {v1}, Lcom/android/server/pm/InstallArgs;->cleanUpResourcesLI()V

    .line 5392
    monitor-exit v3

    goto :goto_36b

    :catchall_31d
    move-exception v0

    monitor-exit v3
    :try_end_31f
    .catchall {:try_start_318 .. :try_end_31f} :catchall_31d

    throw v0

    :cond_320
    const/4 v1, 0x4

    .line 5398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System package disabled; name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5400
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; old: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5401
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5402
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "; new: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5403
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " @ "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5404
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5398
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    move/from16 v16, v8

    :cond_36b
    :goto_36b
    or-int/lit8 v4, v7, 0x2

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v7, p4

    .line 5408
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/InstallPackageHelper;->scanPackageNewLI(Lcom/android/server/pm/parsing/pkg/ParsedPackage;IIJLandroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/pm/ScanResult;

    move-result-object v0

    .line 5410
    new-instance v1, Landroid/util/Pair;

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :catchall_386
    move-exception v0

    move-object/from16 v24, v11

    .line 5255
    :goto_389
    :try_start_389
    monitor-exit v24
    :try_end_38a
    .catchall {:try_start_389 .. :try_end_38a} :catchall_38b

    throw v0

    :catchall_38b
    move-exception v0

    goto :goto_389
.end method

.method public final scanSystemPackageLI(Ljava/io/File;IILandroid/os/UserHandle;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mInstallLock",
            "mPm.mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    const-wide/32 v0, 0x40000

    const-string/jumbo v2, "parsePackage"

    .line 4969
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4971
    :try_start_9
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getScanningPackageParser()Lcom/android/server/pm/parsing/PackageParser2;

    move-result-object v2
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_36

    const/4 v3, 0x0

    .line 4972
    :try_start_12
    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object p1
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_2a

    .line 4973
    :try_start_16
    invoke-virtual {v2}, Lcom/android/server/pm/parsing/PackageParser2;->close()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_36

    .line 4974
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4978
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isStaticSharedLibrary()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 4979
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->renameStaticSharedLibraryPackage(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V

    .line 4982
    :cond_25
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/InstallPackageHelper;->addForInitLI(Lcom/android/server/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    return-object p0

    :catchall_2a
    move-exception p0

    if-eqz v2, :cond_35

    .line 4971
    :try_start_2d
    invoke-virtual {v2}, Lcom/android/server/pm/parsing/PackageParser2;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_35

    :catchall_31
    move-exception p1

    :try_start_32
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_35
    :goto_35
    throw p0
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception p0

    .line 4974
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4975
    throw p0
.end method

.method public scanSystemPackageTracedLI(Ljava/io/File;IILandroid/os/UserHandle;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mInstallLock",
            "mPm.mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 4952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scanPackage ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4954
    :try_start_21
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/InstallPackageHelper;->scanSystemPackageLI(Ljava/io/File;IILandroid/os/UserHandle;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_29

    .line 4956
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_29
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4957
    throw p0
.end method

.method public sendPendingBroadcasts()V
    .registers 18

    move-object/from16 v0, p0

    .line 3772
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 3773
    :try_start_7
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    .line 3774
    invoke-virtual {v2}, Lcom/android/server/pm/PendingPackageBroadcasts;->copiedMap()Landroid/util/SparseArray;

    move-result-object v2

    .line 3775
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_16
    if-ge v5, v3, :cond_26

    .line 3777
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_26
    if-nez v6, :cond_2a

    .line 3781
    monitor-exit v1

    return-void

    .line 3783
    :cond_2a
    new-array v5, v6, [Ljava/lang/String;

    .line 3784
    new-array v7, v6, [Ljava/util/ArrayList;

    .line 3785
    new-array v6, v6, [I

    move v8, v4

    move v9, v8

    :goto_32
    if-ge v8, v3, :cond_75

    .line 3789
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 3791
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArrayMap;

    .line 3792
    invoke-static {v11}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Map;)I

    move-result v12

    move v13, v4

    :goto_43
    if-ge v13, v12, :cond_72

    .line 3794
    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    aput-object v14, v5, v9

    .line 3795
    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    aput-object v14, v7, v9

    .line 3796
    iget-object v14, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    aget-object v15, v5, v9

    invoke-virtual {v14, v15}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v14

    if-eqz v14, :cond_6a

    .line 3798
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v14

    invoke-static {v10, v14}, Landroid/os/UserHandle;->getUid(II)I

    move-result v14

    goto :goto_6b

    :cond_6a
    const/4 v14, -0x1

    .line 3799
    :goto_6b
    aput v14, v6, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_43

    :cond_72
    add-int/lit8 v8, v8, 0x1

    goto :goto_32

    .line 3804
    :cond_75
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    invoke-virtual {v2}, Lcom/android/server/pm/PendingPackageBroadcasts;->clear()V

    .line 3805
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_7 .. :try_end_7d} :catchall_98

    .line 3806
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    :goto_83
    if-ge v4, v9, :cond_97

    .line 3809
    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    aget-object v12, v5, v4

    const/4 v13, 0x1

    aget-object v14, v7, v4

    aget v15, v6, v4

    const/16 v16, 0x0

    move-object v11, v1

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/pm/PackageManagerService;->sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_83

    :cond_97
    return-void

    :catchall_98
    move-exception v0

    .line 3805
    :try_start_99
    monitor-exit v1
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw v0
.end method

.method public final setPackageInstalledForSystemPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[I[IZ)V
    .registers 16

    .line 4513
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 4514
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_17

    move v4, v2

    goto :goto_18

    :cond_17
    move v4, v3

    :goto_18
    if-eqz v4, :cond_47

    .line 4522
    array-length v5, p2

    move v6, v3

    move v7, v6

    :goto_1d
    if-ge v6, v5, :cond_37

    aget v8, p2, v6

    .line 4523
    invoke-static {p3, v8}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v9

    .line 4527
    invoke-virtual {v1, v8}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v10

    if-eq v9, v10, :cond_2c

    move v7, v2

    .line 4530
    :cond_2c
    invoke-virtual {v1, v9, v8}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    if-eqz v9, :cond_34

    .line 4532
    invoke-virtual {v1, v3, v8}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    :cond_34
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 4537
    :cond_37
    iget-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p3}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr()V

    if-eqz v7, :cond_47

    .line 4539
    iget-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p3, v1}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 4545
    :cond_47
    iget-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    sget-object v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->DEFAULT:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    const/4 v2, -0x1

    invoke-interface {p3, p1, v2, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onPackageInstalled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V

    .line 4548
    array-length p1, p2

    move p3, v3

    :goto_53
    if-ge p3, p1, :cond_63

    aget v1, p2, p3

    if-eqz v4, :cond_60

    .line 4550
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/pm/Settings;->writePermissionStateForUserLPr(IZ)V

    :cond_60
    add-int/lit8 p3, p3, 0x1

    goto :goto_53

    :cond_63
    if-eqz p4, :cond_6a

    .line 4556
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP()V

    .line 4558
    :cond_6a
    monitor-exit v0

    return-void

    :catchall_6c
    move-exception p0

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_5 .. :try_end_6e} :catchall_6c

    throw p0
.end method

.method public final setUpFsVerityIfPossible(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;,
            Lcom/android/server/pm/PrepareFailure;,
            Ljava/io/IOException;,
            Ljava/security/DigestException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 2324
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->isApkVerityEnabled()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 2328
    :cond_7
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    invoke-static {}, Landroid/os/incremental/IncrementalManager;->getVersion()I

    move-result p0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_19

    return-void

    .line 2334
    :cond_19
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    .line 2337
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v0

    .line 2338
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2337
    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2341
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v0

    .line 2340
    invoke-static {v0}, Landroid/content/pm/dex/DexMetadataHelper;->buildDexMetadataPathForApk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2342
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 2343
    invoke-static {v0}, Lcom/android/internal/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2346
    :cond_47
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4d
    if-ge v2, v1, :cond_71

    aget-object v3, v0, v2

    .line 2347
    invoke-static {v3}, Lcom/android/internal/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2349
    invoke-static {v3}, Landroid/content/pm/dex/DexMetadataHelper;->buildDexMetadataPathForApk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2350
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 2352
    invoke-static {v3}, Lcom/android/internal/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2351
    invoke-virtual {p0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 2356
    :cond_71
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    .line 2357
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7c
    :goto_7c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 2358
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2359
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2362
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-static {v0}, Lcom/android/internal/security/VerityUtils;->hasFsverity(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 2364
    :try_start_a5
    invoke-static {v0, p1}, Lcom/android/internal/security/VerityUtils;->setUpFsverity(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_a9

    goto :goto_7c

    :catch_a9
    move-exception p0

    .line 2366
    new-instance p1, Lcom/android/server/pm/PrepareFailure;

    const/16 v0, -0x76

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to enable fs-verity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_c3
    return-void
.end method

.method public final spegClearPackage(ILjava/lang/String;)V
    .registers 9

    const-string v0, ", error: "

    const-string v1, "SPEG"

    const/4 v2, 0x0

    .line 2846
    :try_start_5
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v4, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2847
    invoke-virtual {v3, p2, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->removeRecentTasksByPackageName(Ljava/lang/String;I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_13

    goto :goto_2e

    :catch_13
    move-exception v3

    .line 2849
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t remove recent task for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    :goto_2e
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p2, v2}, Lcom/android/server/pm/PackageManagerService;->clearPackageAfterSpeg(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_4a

    .line 2854
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t clear app data for "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    :cond_4a
    const-class p0, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/uri/UriGrantsManagerInternal;

    const/4 v3, 0x1

    .line 2860
    :try_start_53
    invoke-interface {p0, p2, p1, v3, v2}, Lcom/android/server/uri/UriGrantsManagerInternal;->removeUriPermissionsForPackage(Ljava/lang/String;IZZ)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_72

    :catch_57
    move-exception p0

    .line 2863
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t restore default permissions for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2867
    :goto_72
    const-class p0, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/JobSchedulerInternal;

    const/16 v2, 0xe

    const/16 v3, 0x8

    :try_start_7e
    const-string v4, "clear data"

    .line 2869
    invoke-interface {p0, p1, v2, v3, v4}, Lcom/android/server/job/JobSchedulerInternal;->cancelJobsForUid(IIILjava/lang/String;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_83} :catch_84

    goto :goto_9f

    :catch_84
    move-exception p0

    .line 2872
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t clear scheduled jobs for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    :goto_9f
    const-class p0, Lcom/android/server/AlarmManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/AlarmManagerInternal;

    .line 2877
    :try_start_a7
    invoke-interface {p0, p1}, Lcom/android/server/AlarmManagerInternal;->removeAlarmsForUid(I)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_aa} :catch_ab

    goto :goto_c6

    :catch_ab
    move-exception p0

    .line 2879
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t clear pending alarms for "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c6
    return-void
.end method

.method public final spegLaunchApp(Lcom/android/server/pm/ReconciledPackage;)Z
    .registers 32

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "SPEG"

    const-string v3, "Started, SPEG v2.1"

    .line 2952
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v3, 0x0

    if-nez v4, :cond_1a

    const-string v0, "PackageManager"

    const-string v1, "Activity manager doesn\'t exist"

    .line 2956
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1a
    const-string/jumbo v0, "network_management"

    .line 2961
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2960
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v15

    if-nez v15, :cond_2f

    const-string v0, "SPEG"

    const-string v1, "Network manager is not found"

    .line 2963
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 2966
    :cond_2f
    iget-object v0, v2, Lcom/android/server/pm/ReconciledPackage;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 2967
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 2971
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v14}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_6e2

    const-string v5, "android.intent.category.LAUNCHER"

    .line 2973
    invoke-virtual {v7, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6e2

    .line 2974
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5b

    goto/16 :goto_6e2

    .line 2979
    :cond_5b
    invoke-virtual {v7}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    const/high16 v5, 0x40000000    # 2.0f

    .line 2981
    invoke-virtual {v7, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v5, 0x10000000

    .line 2983
    invoke-virtual {v7, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v5, 0x40000

    .line 2985
    invoke-virtual {v7, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2988
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v5

    .line 2989
    :try_start_73
    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v6, v6, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v6, v14}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    if-nez v6, :cond_99

    const-string v0, "SPEG"

    .line 2991
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package manager doesn\'t know the package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    monitor-exit v5

    return v3

    .line 2994
    :cond_99
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v6

    .line 2995
    monitor-exit v5
    :try_end_9e
    .catchall {:try_start_73 .. :try_end_9e} :catchall_6df

    const/16 v5, 0x2710

    if-lt v6, v5, :cond_6c7

    const/16 v5, 0x4e1f

    if-le v6, v5, :cond_a8

    goto/16 :goto_6c7

    .line 3003
    :cond_a8
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v5

    const-string v6, "android.permission.WAKE_LOCK"

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f8

    const-string v5, "SPEG"

    .line 3005
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Revoking WAKE_LOCK from package "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    :try_start_ca
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const-string v6, "android.permission.WAKE_LOCK"

    invoke-interface {v5, v14, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->revokeInstallPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_d3} :catch_d4

    goto :goto_f8

    :catch_d4
    move-exception v0

    const-string v1, "SPEG"

    .line 3009
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot revoke WAKE_LOCK from pkg "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3010
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3009
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 3015
    :cond_f8
    :goto_f8
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v13

    .line 3016
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v5

    .line 3017
    invoke-virtual {v5, v14, v13}, Landroid/hardware/display/DisplayManagerGlobal;->createSpegVirtualDisplay(Ljava/lang/String;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object v12

    if-nez v12, :cond_10e

    const-string v0, "SPEG"

    const-string v1, "VirtualDisplay is not created"

    .line 3019
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 3024
    :cond_10e
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v5

    .line 3026
    invoke-virtual {v12}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v11

    .line 3027
    invoke-virtual {v5, v11}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 3028
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v14}, Landroid/os/Environment;->getDataProfilesDePackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    .line 3030
    invoke-static {v10}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3033
    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/ReconciledPackage;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v3, v3, Lcom/android/server/pm/InstallArgs;->mUser:Landroid/os/UserHandle;

    .line 3034
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v10, v3}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    move-result-object v3

    const/4 v10, 0x0

    .line 3033
    invoke-virtual {v6, v0, v3, v10}, Lcom/android/server/pm/dex/ArtManagerService;->prepareAppProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[IZ)V

    .line 3037
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    .line 3036
    invoke-static {v3}, Landroid/content/pm/dex/DexMetadataHelper;->buildDexMetadataPathForApk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3039
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/base.speg"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3044
    invoke-static {}, Landroid/os/Binder;->allowBlockingForCurrentThread()V

    .line 3048
    :try_start_175
    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mSpeg:Lcom/android/server/SpegService;

    invoke-virtual {v6, v14}, Lcom/android/server/SpegService;->setSpegState(Ljava/lang/String;)V

    .line 3051
    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mSpeg:Lcom/android/server/SpegService;
    :try_end_17c
    .catch Ljava/lang/Exception; {:try_start_175 .. :try_end_17c} :catch_4bc
    .catchall {:try_start_175 .. :try_end_17c} :catchall_4af

    move-object/from16 v19, v9

    const/4 v9, 0x1

    :try_start_17f
    invoke-virtual {v6, v10, v9, v13}, Lcom/android/server/SpegService;->createOrDeleteMarkerFiles(Ljava/lang/String;ZI)Z

    move-result v6
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_17f .. :try_end_183} :catch_4a4
    .catchall {:try_start_17f .. :try_end_183} :catchall_499

    if-eqz v6, :cond_485

    .line 3059
    :try_start_185
    invoke-interface {v15, v13, v9}, Landroid/os/INetworkManagementService;->spegRestrictNetworkConnection(IZ)V
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_185 .. :try_end_188} :catch_456
    .catchall {:try_start_185 .. :try_end_188} :catchall_499

    .line 3066
    :try_start_188
    invoke-virtual {v12}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v6
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_188 .. :try_end_18c} :catch_4a4
    .catchall {:try_start_188 .. :try_end_18c} :catchall_499

    move-object/from16 v20, v10

    .line 3069
    :goto_18e
    :try_start_18e
    invoke-virtual {v6}, Landroid/view/Display;->getState()I

    move-result v10
    :try_end_192
    .catch Ljava/lang/Exception; {:try_start_18e .. :try_end_192} :catch_44b
    .catchall {:try_start_18e .. :try_end_192} :catchall_440

    move/from16 v21, v11

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1cf

    const/16 v10, 0x18

    if-gt v9, v10, :cond_1b4

    int-to-long v10, v9

    .line 3078
    :try_start_19c
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v9, v9, 0x1

    move/from16 v11, v21

    goto :goto_18e

    :catchall_1a4
    move-exception v0

    move-object v3, v0

    move-object v8, v12

    move v6, v13

    move-object v10, v15

    move-object/from16 v5, v19

    move-object/from16 v9, v20

    move/from16 v7, v21

    const/4 v11, 0x1

    const/4 v12, 0x0

    :goto_1b1
    move-object v15, v14

    goto/16 :goto_5dd

    .line 3071
    :cond_1b4
    new-instance v0, Lcom/android/server/pm/Installer$InstallerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to wait state on for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3072
    invoke-virtual {v6}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1cf
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_1cf} :catch_434
    .catchall {:try_start_19c .. :try_end_1cf} :catchall_1a4

    :cond_1cf
    :try_start_1cf
    const-string v10, "SPEG"

    .line 3080
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " state is on at iteration "

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3082
    iget-object v6, v2, Lcom/android/server/pm/ReconciledPackage;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget-object v6, v6, Lcom/android/server/pm/PackageInstalledInfo;->mFreezer:Lcom/android/server/pm/PackageFreezer;
    :try_end_1f0
    .catch Ljava/lang/Exception; {:try_start_1cf .. :try_end_1f0} :catch_434
    .catchall {:try_start_1cf .. :try_end_1f0} :catchall_428

    if-eqz v6, :cond_209

    .line 3083
    :try_start_1f2
    invoke-virtual {v6}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 3084
    iget-object v6, v2, Lcom/android/server/pm/ReconciledPackage;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;
    :try_end_1f7
    .catch Ljava/lang/Exception; {:try_start_1f2 .. :try_end_1f7} :catch_434
    .catchall {:try_start_1f2 .. :try_end_1f7} :catchall_1a4

    const/4 v10, 0x0

    :try_start_1f8
    iput-object v10, v6, Lcom/android/server/pm/PackageInstalledInfo;->mFreezer:Lcom/android/server/pm/PackageFreezer;
    :try_end_1fa
    .catch Ljava/lang/Exception; {:try_start_1f8 .. :try_end_1fa} :catch_41b
    .catchall {:try_start_1f8 .. :try_end_1fa} :catchall_1fb

    goto :goto_220

    :catchall_1fb
    move-exception v0

    move-object v3, v0

    move-object v8, v12

    move v6, v13

    move-object/from16 v5, v19

    move-object/from16 v9, v20

    move/from16 v7, v21

    const/4 v11, 0x1

    move-object v12, v10

    move-object v10, v15

    goto :goto_1b1

    :cond_209
    const/4 v10, 0x0

    :try_start_20a
    const-string v6, "SPEG"

    .line 3086
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The package was not frozen, uid "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_220
    const/4 v6, 0x0

    const-string v9, "com.samsung.speg"

    const/4 v11, 0x0

    const/16 v17, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 3091
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v25
    :try_end_230
    .catch Ljava/lang/Exception; {:try_start_20a .. :try_end_230} :catch_41b
    .catchall {:try_start_20a .. :try_end_230} :catchall_40e

    move-object v5, v6

    move-object v6, v9

    move-object/from16 v26, v19

    move-object v9, v11

    move-object/from16 v11, v20

    move-object/from16 v10, v17

    move-object/from16 v28, v11

    move/from16 v27, v21

    move/from16 v11, v22

    move-object/from16 v17, v12

    move/from16 v12, v23

    move/from16 v29, v13

    move-object/from16 v13, v24

    move-object/from16 v18, v15

    move-object v15, v14

    move-object/from16 v14, v25

    .line 3089
    :try_start_24c
    invoke-interface/range {v4 .. v14}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v4

    .line 3092
    invoke-static {v4}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v5

    if-eqz v5, :cond_3bf

    const-wide/16 v4, 0x7d0

    .line 3098
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 3102
    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mSpeg:Lcom/android/server/SpegService;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getProcessName()Ljava/lang/String;

    move-result-object v5
    :try_end_261
    .catch Ljava/lang/Exception; {:try_start_24c .. :try_end_261} :catch_3fd
    .catchall {:try_start_24c .. :try_end_261} :catchall_3ec

    move/from16 v6, v29

    :try_start_263
    invoke-virtual {v4, v5, v6}, Lcom/android/server/SpegService;->getPidOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_392

    const-string v5, "SPEG"

    .line 3107
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Send signal to dump profiles in app, pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0xa

    .line 3109
    invoke-static {v4, v5}, Landroid/os/Process;->sendSignal(II)V

    .line 3112
    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mSpeg:Lcom/android/server/SpegService;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v0
    :try_end_28b
    .catch Ljava/lang/Exception; {:try_start_263 .. :try_end_28b} :catch_3b3
    .catchall {:try_start_263 .. :try_end_28b} :catchall_3a7

    move-object/from16 v5, v26

    :try_start_28d
    invoke-virtual {v4, v0, v3, v5, v6}, Lcom/android/server/SpegService;->packPrimaryProfToBaseDm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3
    :try_end_291
    .catch Ljava/lang/Exception; {:try_start_28d .. :try_end_291} :catch_38c
    .catchall {:try_start_28d .. :try_end_291} :catchall_386

    .line 3119
    iget-object v0, v2, Lcom/android/server/pm/ReconciledPackage;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget-object v2, v0, Lcom/android/server/pm/PackageInstalledInfo;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    if-nez v2, :cond_2a2

    .line 3120
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v4, "SPEG"

    const/4 v7, 0x0

    .line 3121
    invoke-virtual {v2, v15, v7, v4}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/pm/PackageInstalledInfo;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    .line 3123
    :cond_2a2
    invoke-virtual/range {v17 .. v17}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 3124
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    move/from16 v7, v27

    .line 3125
    invoke-virtual {v0, v7}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_2cf

    const-string v0, "SPEG"

    .line 3126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t release "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v17

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2cf
    if-eqz v16, :cond_314

    const-string v0, "SPEG"

    .line 3130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Granting WAKE_LOCK to pkg "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    :try_start_2e7
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const-string v2, "android.permission.WAKE_LOCK"

    invoke-interface {v0, v15, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->grantInstallPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f0
    .catch Ljava/lang/Exception; {:try_start_2e7 .. :try_end_2f0} :catch_2f1

    goto :goto_314

    :catch_2f1
    move-exception v0

    const-string v2, "SPEG"

    .line 3134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot grant WAKE_LOCK for pkg "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3135
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3134
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    :cond_314
    :goto_314
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mSpeg:Lcom/android/server/SpegService;

    move-object/from16 v9, v28

    const/4 v2, 0x0

    invoke-virtual {v0, v9, v2, v6}, Lcom/android/server/SpegService;->createOrDeleteMarkerFiles(Ljava/lang/String;ZI)Z

    move-result v0

    if-nez v0, :cond_335

    const-string v0, "SPEG"

    .line 3139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SPEG can\'t delete "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_335
    const-string v0, ".prof"

    .line 3142
    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v5, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 3148
    invoke-virtual {v1, v6, v15}, Lcom/android/server/pm/InstallPackageHelper;->spegClearPackage(ILjava/lang/String;)V

    move-object/from16 v10, v18

    .line 3151
    :try_start_344
    invoke-interface {v10, v6, v2}, Landroid/os/INetworkManagementService;->spegRestrictNetworkConnection(IZ)V
    :try_end_347
    .catch Ljava/lang/Exception; {:try_start_344 .. :try_end_347} :catch_348

    goto :goto_360

    :catch_348
    move-exception v0

    move-object v2, v0

    const-string v0, "SPEG"

    .line 3153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to restore network connection for uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3157
    :goto_360
    :try_start_360
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/InstallPackageHelper;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v11, 0x1

    invoke-interface {v0, v15, v11, v2}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_369
    .catch Ljava/lang/IllegalArgumentException; {:try_start_360 .. :try_end_369} :catch_373
    .catch Landroid/os/RemoteException; {:try_start_360 .. :try_end_369} :catch_36a

    goto :goto_37b

    :catch_36a
    move-exception v0

    const-string v2, "SPEG"

    const-string v4, "Failed to set stopped state"

    .line 3161
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37b

    :catch_373
    move-exception v0

    const-string v2, "SPEG"

    const-string v4, "Failed to set stopped state"

    .line 3159
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3165
    :goto_37b
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mSpeg:Lcom/android/server/SpegService;

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Lcom/android/server/SpegService;->setSpegState(Ljava/lang/String;)V

    .line 3167
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    goto/16 :goto_5d2

    :catchall_386
    move-exception v0

    move-object/from16 v8, v17

    move-object/from16 v10, v18

    goto :goto_3ae

    :catch_38c
    move-exception v0

    move-object/from16 v8, v17

    move-object/from16 v10, v18

    goto :goto_3ba

    :cond_392
    move-object/from16 v8, v17

    move-object/from16 v10, v18

    move-object/from16 v5, v26

    move/from16 v7, v27

    move-object/from16 v9, v28

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 3105
    :try_start_39e
    new-instance v0, Lcom/android/server/pm/Installer$InstallerException;

    const-string/jumbo v3, "getPidOf failed"

    invoke-direct {v0, v3}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3a7
    move-exception v0

    move-object/from16 v8, v17

    move-object/from16 v10, v18

    move-object/from16 v5, v26

    :goto_3ae
    move/from16 v7, v27

    move-object/from16 v9, v28

    goto :goto_3f9

    :catch_3b3
    move-exception v0

    move-object/from16 v8, v17

    move-object/from16 v10, v18

    move-object/from16 v5, v26

    :goto_3ba
    move/from16 v7, v27

    move-object/from16 v9, v28

    goto :goto_40a

    :cond_3bf
    move-object/from16 v8, v17

    move-object/from16 v10, v18

    move-object/from16 v5, v26

    move/from16 v7, v27

    move-object/from16 v9, v28

    move/from16 v6, v29

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 3093
    new-instance v0, Lcom/android/server/pm/Installer$InstallerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to start "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", res="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3ec
    move-exception v0

    move-object/from16 v8, v17

    move-object/from16 v10, v18

    move-object/from16 v5, v26

    move/from16 v7, v27

    move-object/from16 v9, v28

    move/from16 v6, v29

    :goto_3f9
    const/4 v11, 0x1

    const/4 v12, 0x0

    goto/16 :goto_4b9

    :catch_3fd
    move-exception v0

    move-object/from16 v8, v17

    move-object/from16 v10, v18

    move-object/from16 v5, v26

    move/from16 v7, v27

    move-object/from16 v9, v28

    move/from16 v6, v29

    :goto_40a
    const/4 v11, 0x1

    const/4 v12, 0x0

    goto/16 :goto_4c6

    :catchall_40e
    move-exception v0

    move-object v8, v12

    move v6, v13

    move-object/from16 v5, v19

    move-object/from16 v9, v20

    move/from16 v7, v21

    const/4 v11, 0x1

    move-object v12, v10

    goto/16 :goto_4a2

    :catch_41b
    move-exception v0

    move-object v8, v12

    move v6, v13

    move-object/from16 v5, v19

    move-object/from16 v9, v20

    move/from16 v7, v21

    const/4 v11, 0x1

    move-object v12, v10

    goto/16 :goto_4ad

    :catchall_428
    move-exception v0

    move-object v8, v12

    move v6, v13

    move-object v10, v15

    move-object/from16 v5, v19

    move-object/from16 v9, v20

    move/from16 v7, v21

    goto/16 :goto_4b6

    :catch_434
    move-exception v0

    move-object v8, v12

    move v6, v13

    move-object v10, v15

    move-object/from16 v5, v19

    move-object/from16 v9, v20

    move/from16 v7, v21

    goto/16 :goto_4c3

    :catchall_440
    move-exception v0

    move v7, v11

    move-object v8, v12

    move v6, v13

    move-object v10, v15

    move-object/from16 v5, v19

    move-object/from16 v9, v20

    goto/16 :goto_4b6

    :catch_44b
    move-exception v0

    move v7, v11

    move-object v8, v12

    move v6, v13

    move-object v10, v15

    move-object/from16 v5, v19

    move-object/from16 v9, v20

    goto/16 :goto_4c3

    :catch_456
    move-exception v0

    move v7, v11

    move-object v8, v12

    move v6, v13

    move-object/from16 v5, v19

    const/4 v12, 0x0

    move v11, v9

    move-object v9, v10

    move-object v10, v15

    move-object v15, v14

    move-object v3, v0

    .line 3061
    new-instance v0, Lcom/android/server/pm/Installer$InstallerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to disable network connection for uid "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3063
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_485
    move v7, v11

    move-object v8, v12

    move v6, v13

    move-object/from16 v5, v19

    const/4 v12, 0x0

    move v11, v9

    move-object v9, v10

    move-object v10, v15

    move-object v15, v14

    .line 3053
    new-instance v0, Lcom/android/server/pm/Installer$InstallerException;

    const-string v3, "createSpegMarkerFile failed"

    invoke-direct {v0, v3}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_497
    .catch Ljava/lang/Exception; {:try_start_39e .. :try_end_497} :catch_497
    .catchall {:try_start_39e .. :try_end_497} :catchall_5da

    :catch_497
    move-exception v0

    goto :goto_4c6

    :catchall_499
    move-exception v0

    move v7, v11

    move-object v8, v12

    move v6, v13

    move-object/from16 v5, v19

    const/4 v12, 0x0

    move v11, v9

    move-object v9, v10

    :goto_4a2
    move-object v10, v15

    goto :goto_4b8

    :catch_4a4
    move-exception v0

    move v7, v11

    move-object v8, v12

    move v6, v13

    move-object/from16 v5, v19

    const/4 v12, 0x0

    move v11, v9

    move-object v9, v10

    :goto_4ad
    move-object v10, v15

    goto :goto_4c5

    :catchall_4af
    move-exception v0

    move-object v5, v9

    move-object v9, v10

    move v7, v11

    move-object v8, v12

    move v6, v13

    move-object v10, v15

    :goto_4b6
    const/4 v11, 0x1

    const/4 v12, 0x0

    :goto_4b8
    move-object v15, v14

    :goto_4b9
    move-object v3, v0

    goto/16 :goto_5dd

    :catch_4bc
    move-exception v0

    move-object v5, v9

    move-object v9, v10

    move v7, v11

    move-object v8, v12

    move v6, v13

    move-object v10, v15

    :goto_4c3
    const/4 v11, 0x1

    const/4 v12, 0x0

    :goto_4c5
    move-object v15, v14

    :goto_4c6
    :try_start_4c6
    const-string v3, "SPEG"

    .line 3115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cancel SPEG for "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e8
    .catchall {:try_start_4c6 .. :try_end_4e8} :catchall_5da

    .line 3119
    iget-object v0, v2, Lcom/android/server/pm/ReconciledPackage;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget-object v2, v0, Lcom/android/server/pm/PackageInstalledInfo;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    if-nez v2, :cond_4f9

    .line 3120
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v3, "SPEG"

    const/4 v4, 0x0

    .line 3121
    invoke-virtual {v2, v15, v4, v3}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/pm/PackageInstalledInfo;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    .line 3123
    :cond_4f9
    invoke-virtual {v8}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 3124
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 3125
    invoke-virtual {v0, v7}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_522

    const-string v0, "SPEG"

    .line 3126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t release "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_522
    if-eqz v16, :cond_567

    const-string v0, "SPEG"

    .line 3130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Granting WAKE_LOCK to pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    :try_start_53a
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const-string v2, "android.permission.WAKE_LOCK"

    invoke-interface {v0, v15, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->grantInstallPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_543
    .catch Ljava/lang/Exception; {:try_start_53a .. :try_end_543} :catch_544

    goto :goto_567

    :catch_544
    move-exception v0

    const-string v2, "SPEG"

    .line 3134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot grant WAKE_LOCK for pkg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3135
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3134
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    :cond_567
    :goto_567
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mSpeg:Lcom/android/server/SpegService;

    const/4 v2, 0x0

    invoke-virtual {v0, v9, v2, v6}, Lcom/android/server/SpegService;->createOrDeleteMarkerFiles(Ljava/lang/String;ZI)Z

    move-result v0

    if-nez v0, :cond_586

    const-string v0, "SPEG"

    .line 3139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SPEG can\'t delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_586
    const-string v0, ".prof"

    .line 3142
    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v5, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 3148
    invoke-virtual {v1, v6, v15}, Lcom/android/server/pm/InstallPackageHelper;->spegClearPackage(ILjava/lang/String;)V

    .line 3151
    :try_start_593
    invoke-interface {v10, v6, v2}, Landroid/os/INetworkManagementService;->spegRestrictNetworkConnection(IZ)V
    :try_end_596
    .catch Ljava/lang/Exception; {:try_start_593 .. :try_end_596} :catch_597

    goto :goto_5af

    :catch_597
    move-exception v0

    move-object v2, v0

    const-string v0, "SPEG"

    .line 3153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to restore network connection for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3157
    :goto_5af
    :try_start_5af
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/InstallPackageHelper;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v15, v11, v2}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_5b7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5af .. :try_end_5b7} :catch_5c1
    .catch Landroid/os/RemoteException; {:try_start_5af .. :try_end_5b7} :catch_5b8

    goto :goto_5c9

    :catch_5b8
    move-exception v0

    const-string v2, "SPEG"

    const-string v3, "Failed to set stopped state"

    .line 3161
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5c9

    :catch_5c1
    move-exception v0

    const-string v2, "SPEG"

    const-string v3, "Failed to set stopped state"

    .line 3159
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3165
    :goto_5c9
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mSpeg:Lcom/android/server/SpegService;

    invoke-virtual {v0, v12}, Lcom/android/server/SpegService;->setSpegState(Ljava/lang/String;)V

    .line 3167
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    const/4 v3, 0x0

    :goto_5d2
    const-string v0, "SPEG"

    const-string v1, "Finished"

    .line 3169
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catchall_5da
    move-exception v0

    goto/16 :goto_4b9

    .line 3119
    :goto_5dd
    iget-object v0, v2, Lcom/android/server/pm/ReconciledPackage;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iget-object v2, v0, Lcom/android/server/pm/PackageInstalledInfo;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    if-nez v2, :cond_5ee

    .line 3120
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v4, "SPEG"

    const/4 v13, 0x0

    .line 3121
    invoke-virtual {v2, v15, v13, v4}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/pm/PackageInstalledInfo;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    .line 3123
    :cond_5ee
    invoke-virtual {v8}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 3124
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 3125
    invoke-virtual {v0, v7}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_617

    const-string v0, "SPEG"

    .line 3126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t release "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_617
    if-eqz v16, :cond_65c

    const-string v0, "SPEG"

    .line 3130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Granting WAKE_LOCK to pkg "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    :try_start_62f
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const-string v2, "android.permission.WAKE_LOCK"

    invoke-interface {v0, v15, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->grantInstallPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_638
    .catch Ljava/lang/Exception; {:try_start_62f .. :try_end_638} :catch_639

    goto :goto_65c

    :catch_639
    move-exception v0

    const-string v2, "SPEG"

    .line 3134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot grant WAKE_LOCK for pkg "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3135
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3134
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    :cond_65c
    :goto_65c
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mSpeg:Lcom/android/server/SpegService;

    const/4 v2, 0x0

    invoke-virtual {v0, v9, v2, v6}, Lcom/android/server/SpegService;->createOrDeleteMarkerFiles(Ljava/lang/String;ZI)Z

    move-result v0

    if-nez v0, :cond_67b

    const-string v0, "SPEG"

    .line 3139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SPEG can\'t delete "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67b
    const-string v0, ".prof"

    .line 3142
    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v5, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 3148
    invoke-virtual {v1, v6, v15}, Lcom/android/server/pm/InstallPackageHelper;->spegClearPackage(ILjava/lang/String;)V

    .line 3151
    :try_start_688
    invoke-interface {v10, v6, v2}, Landroid/os/INetworkManagementService;->spegRestrictNetworkConnection(IZ)V
    :try_end_68b
    .catch Ljava/lang/Exception; {:try_start_688 .. :try_end_68b} :catch_68c

    goto :goto_6a4

    :catch_68c
    move-exception v0

    move-object v2, v0

    const-string v0, "SPEG"

    .line 3153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to restore network connection for uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3157
    :goto_6a4
    :try_start_6a4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/InstallPackageHelper;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v15, v11, v2}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_6ac
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6a4 .. :try_end_6ac} :catch_6b6
    .catch Landroid/os/RemoteException; {:try_start_6a4 .. :try_end_6ac} :catch_6ad

    goto :goto_6be

    :catch_6ad
    move-exception v0

    const-string v2, "SPEG"

    const-string v4, "Failed to set stopped state"

    .line 3161
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6be

    :catch_6b6
    move-exception v0

    const-string v2, "SPEG"

    const-string v4, "Failed to set stopped state"

    .line 3159
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3165
    :goto_6be
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mSpeg:Lcom/android/server/SpegService;

    invoke-virtual {v0, v12}, Lcom/android/server/SpegService;->setSpegState(Ljava/lang/String;)V

    .line 3167
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    .line 3168
    throw v3

    :cond_6c7
    :goto_6c7
    const-string v0, "SPEG"

    .line 2998
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip feature because of non-regular application id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6dd
    const/4 v1, 0x0

    return v1

    :catchall_6df
    move-exception v0

    .line 2995
    :try_start_6e0
    monitor-exit v5
    :try_end_6e1
    .catchall {:try_start_6e0 .. :try_end_6e1} :catchall_6df

    throw v0

    :cond_6e2
    :goto_6e2
    move-object v15, v14

    const-string v0, "SPEG"

    .line 2975
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t have launchable intent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6dd
.end method

.method public updateDuplicatePreloadApps(IIJLcom/android/server/pm/parsing/PackageParser2;Landroid/util/ArrayMap;)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 4667
    iget-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    invoke-virtual {p3, p6}, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->addSystemPackagesTo(Landroid/util/ArrayMap;)V

    .line 4669
    invoke-static {}, Lcom/android/server/pm/ParallelPackageParser;->makeExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    .line 4670
    iget-object p4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    new-instance p6, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda2;

    move-object v0, p6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/InstallPackageHelper;IILcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {p4, p6}, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->installDuplicatePackages(Ljava/util/function/BiConsumer;)V

    .line 4682
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->clearPackages()V

    .line 4683
    invoke-interface {p3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public final updateSettingsInternalLI(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/ReconciledPackage;[ILcom/android/server/pm/PackageInstalledInfo;)V
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    move-object/from16 v4, p4

    const-string/jumbo v5, "updateSettings"

    const-wide/32 v6, 0x40000

    .line 2533
    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2535
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2536
    iget-object v8, v4, Lcom/android/server/pm/PackageInstalledInfo;->mOrigUsers:[I

    .line 2537
    iget-object v9, v3, Lcom/android/server/pm/ReconciledPackage;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 2538
    iget v10, v9, Lcom/android/server/pm/InstallArgs;->mInstallReason:I

    .line 2539
    iget-object v11, v9, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 2540
    iget-object v11, v11, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    const-string v12, "application_policy"

    .line 2545
    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    .line 2544
    invoke-static {v12}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v12

    .line 2547
    iget-object v13, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v13

    .line 2551
    :try_start_30
    iget-object v14, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v14, v5}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v14

    .line 2552
    iget-object v15, v9, Lcom/android/server/pm/InstallArgs;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    if-eqz v14, :cond_2bb

    .line 2554
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 2559
    iget-object v7, v4, Lcom/android/server/pm/PackageInstalledInfo;->mOrigUsers:[I

    if-eqz v7, :cond_64

    .line 2560
    array-length v6, v7

    const/4 v2, 0x0

    :goto_4c
    if-ge v2, v6, :cond_64

    move/from16 v16, v6

    aget v6, v7, v2

    move-object/from16 v17, v7

    const/4 v7, -0x1

    if-eq v15, v7, :cond_59

    if-ne v15, v6, :cond_5d

    :cond_59
    const/4 v7, 0x0

    .line 2562
    invoke-virtual {v14, v7, v6, v11}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    :cond_5d
    add-int/lit8 v2, v2, 0x1

    move/from16 v6, v16

    move-object/from16 v7, v17

    goto :goto_4c

    :cond_64
    if-eqz v0, :cond_7c

    if-eqz v8, :cond_7c

    .line 2570
    array-length v2, v0

    const/4 v6, 0x0

    :goto_6a
    if-ge v6, v2, :cond_7c

    aget v7, v0, v6

    move/from16 v16, v2

    .line 2571
    invoke-static {v8, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    .line 2576
    invoke-virtual {v14, v2, v7}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v16

    goto :goto_6a

    :cond_7c
    if-eqz v0, :cond_8a

    .line 2583
    array-length v2, v0

    const/4 v6, 0x0

    :goto_80
    if-ge v6, v2, :cond_8a

    aget v7, v0, v6

    .line 2584
    invoke-virtual {v14, v7}, Lcom/android/server/pm/PackageSetting;->resetOverrideComponentLabelIcon(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_80

    .line 2590
    :cond_8a
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f9

    .line 2591
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/SharedLibraryInfo;

    .line 2592
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v7

    move-object/from16 v16, v2

    array-length v2, v7

    const/4 v3, 0x0

    :goto_bc
    if-ge v3, v2, :cond_f4

    move/from16 v17, v2

    aget v2, v7, v3

    .line 2593
    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->isDynamic()Z

    move-result v18

    if-nez v18, :cond_cd

    move-object/from16 v18, v7

    move-object/from16 v19, v9

    goto :goto_eb

    :cond_cd
    move-object/from16 v18, v7

    .line 2597
    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v19, v9

    .line 2598
    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 2597
    invoke-virtual {v7, v9}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    if-nez v7, :cond_e0

    goto :goto_eb

    .line 2602
    :cond_e0
    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v9

    .line 2603
    invoke-virtual {v7, v2}, Lcom/android/server/pm/PackageSetting;->getOverlayPaths(I)Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v7

    .line 2602
    invoke-virtual {v14, v9, v7, v2}, Lcom/android/server/pm/PackageSetting;->setOverlayPathsForLibrary(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;I)Z

    :goto_eb
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v17

    move-object/from16 v7, v18

    move-object/from16 v9, v19

    goto :goto_bc

    :cond_f4
    move-object/from16 v3, p2

    move-object/from16 v2, v16

    goto :goto_a4

    :cond_f9
    move-object/from16 v19, v9

    const/4 v2, -0x1

    if-eq v15, v2, :cond_142

    const/4 v2, 0x1

    .line 2611
    invoke-virtual {v14, v2, v15}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V
    :try_end_102
    .catchall {:try_start_30 .. :try_end_102} :catchall_2e0

    if-eqz v12, :cond_13a

    const/4 v2, 0x0

    .line 2616
    :try_start_105
    invoke-interface {v12, v5, v2, v15}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v0

    if-nez v0, :cond_13a

    const-string v0, "PackageManager"

    .line 2617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This app can not be enabled due to EDM policy. packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_121
    .catch Landroid/os/RemoteException; {:try_start_105 .. :try_end_121} :catch_123
    .catchall {:try_start_105 .. :try_end_121} :catchall_2e0

    const/4 v0, 0x0

    goto :goto_13b

    :catch_123
    move-exception v0

    :try_start_124
    const-string v2, "PackageManager"

    .line 2622
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13a
    const/4 v0, 0x1

    :goto_13b
    if-eqz v0, :cond_17d

    const/4 v2, 0x0

    .line 2627
    invoke-virtual {v14, v2, v15, v11}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_17d

    :cond_142
    if-eqz v0, :cond_17d

    .line 2631
    array-length v2, v0

    const/4 v7, 0x0

    :goto_146
    if-ge v7, v2, :cond_17d

    aget v3, v0, v7

    .line 2637
    invoke-static {v8, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    .line 2639
    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v12, "no_install_apps"

    .line 2640
    invoke-virtual {v9, v3, v12}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_167

    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v12, "no_debugging_features"

    .line 2642
    invoke-virtual {v9, v3, v12}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_165

    goto :goto_167

    :cond_165
    const/4 v9, 0x0

    goto :goto_168

    :cond_167
    :goto_167
    const/4 v9, 0x1

    :goto_168
    if-nez v6, :cond_172

    if-nez v9, :cond_16d

    goto :goto_172

    :cond_16d
    const/4 v6, 0x0

    .line 2649
    invoke-virtual {v14, v6, v3}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto :goto_17a

    :cond_172
    :goto_172
    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 2645
    invoke-virtual {v14, v9, v3}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 2646
    invoke-virtual {v14, v6, v3, v11}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    :goto_17a
    add-int/lit8 v7, v7, 0x1

    goto :goto_146

    .line 2654
    :cond_17d
    :goto_17d
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/Settings;->addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V

    .line 2658
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2659
    iget-object v2, v4, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz v2, :cond_1bf

    iget-object v2, v2, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseArray;

    if-eqz v2, :cond_1bf

    .line 2660
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v7, 0x0

    :goto_19a
    if-ge v7, v2, :cond_1bf

    .line 2662
    iget-object v3, v4, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseArray;

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 2663
    iget-object v6, v4, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v6, v6, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseArray;

    .line 2664
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2665
    invoke-virtual {v14, v6, v3}, Lcom/android/server/pm/PackageSetting;->setInstallReason(II)V

    .line 2666
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_19a

    .line 2669
    :cond_1bf
    iget-object v2, v4, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz v2, :cond_1ee

    iget-object v2, v2, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseArray;

    if-eqz v2, :cond_1ee

    const/4 v7, 0x0

    .line 2670
    :goto_1c8
    iget-object v2, v4, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v7, v2, :cond_1ee

    .line 2671
    iget-object v2, v4, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseArray;

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2672
    iget-object v3, v4, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseArray;

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2673
    invoke-virtual {v14, v3, v2}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1c8

    .line 2678
    :cond_1ee
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    const/4 v3, -0x1

    if-ne v15, v3, :cond_215

    .line 2680
    array-length v3, v2

    const/4 v7, 0x0

    :goto_1fb
    if-ge v7, v3, :cond_222

    aget v6, v2, v7

    .line 2681
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_212

    .line 2682
    invoke-virtual {v14, v6}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v8

    if-eqz v8, :cond_212

    .line 2683
    invoke-virtual {v14, v10, v6}, Lcom/android/server/pm/PackageSetting;->setInstallReason(II)V

    :cond_212
    add-int/lit8 v7, v7, 0x1

    goto :goto_1fb

    .line 2686
    :cond_215
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_222

    .line 2687
    invoke-virtual {v14, v10, v15}, Lcom/android/server/pm/PackageSetting;->setInstallReason(II)V

    .line 2692
    :cond_222
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v0

    .line 2693
    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23e

    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    if-eqz v3, :cond_23e

    .line 2695
    new-instance v6, Lcom/android/server/pm/IncrementalProgressListener;

    .line 2696
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v6, v7, v8}, Lcom/android/server/pm/IncrementalProgressListener;-><init>(Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)V

    .line 2695
    invoke-virtual {v3, v0, v6}, Landroid/os/incremental/IncrementalManager;->registerLoadingProgressCallback(Ljava/lang/String;Landroid/content/pm/IPackageLoadingProgressCallback;)Z

    .line 2700
    :cond_23e
    array-length v0, v2

    const/4 v7, 0x0

    :goto_240
    if-ge v7, v0, :cond_253

    aget v3, v2, v7

    .line 2701
    invoke-virtual {v14, v3}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v6

    if-eqz v6, :cond_24f

    const/4 v6, 0x0

    .line 2702
    invoke-virtual {v14, v6, v3}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    goto :goto_250

    :cond_24f
    const/4 v6, 0x0

    :goto_250
    add-int/lit8 v7, v7, 0x1

    goto :goto_240

    :cond_253
    const/4 v6, 0x0

    .line 2706
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v14}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 2709
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;-><init>()V

    move-object/from16 v2, v19

    .line 2711
    iget v3, v2, Lcom/android/server/pm/InstallArgs;->mInstallFlags:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_26a

    const/4 v7, 0x1

    goto :goto_26b

    :cond_26a
    move v7, v6

    :goto_26b
    if-eqz v7, :cond_27d

    .line 2715
    iget-object v3, v2, Lcom/android/server/pm/InstallArgs;->mInstallGrantPermissions:[Ljava/lang/String;

    if-eqz v3, :cond_276

    .line 2716
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_27a

    .line 2717
    :cond_276
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    .line 2718
    :goto_27a
    invoke-virtual {v0, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->setGrantedPermissions(Ljava/util/List;)V

    .line 2720
    :cond_27d
    iget v3, v2, Lcom/android/server/pm/InstallArgs;->mInstallFlags:I

    const/high16 v7, 0x400000

    and-int/2addr v3, v7

    if-eqz v3, :cond_285

    const/4 v6, 0x1

    :cond_285
    if-eqz v6, :cond_28c

    .line 2724
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    goto :goto_28e

    .line 2725
    :cond_28c
    iget-object v3, v2, Lcom/android/server/pm/InstallArgs;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    :goto_28e
    if-eqz v3, :cond_293

    .line 2727
    invoke-virtual {v0, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->setAllowlistedRestrictedPermissions(Ljava/util/List;)V

    .line 2730
    :cond_293
    iget v3, v2, Lcom/android/server/pm/InstallArgs;->mAutoRevokePermissionsMode:I

    .line 2731
    invoke-virtual {v0, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->setAutoRevokePermissionsMode(I)V

    move-object/from16 v3, p2

    .line 2732
    iget-object v3, v3, Lcom/android/server/pm/ReconciledPackage;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 2733
    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iget v3, v3, Lcom/android/server/pm/ScanResult;->mPreviousAppId:I

    .line 2734
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->build()Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    move-result-object v0

    move-object/from16 v7, p1

    .line 2733
    invoke-interface {v6, v7, v3, v0, v15}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onPackageInstalled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V

    .line 2736
    iget v0, v2, Lcom/android/server/pm/InstallArgs;->mPackageSource:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2b3

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2bc

    .line 2739
    :cond_2b3
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v0

    invoke-virtual {v1, v5, v0}, Lcom/android/server/pm/InstallPackageHelper;->enableRestrictedSettings(Ljava/lang/String;I)V

    goto :goto_2bc

    :cond_2bb
    move-object v7, v2

    .line 2742
    :cond_2bc
    :goto_2bc
    iput-object v5, v4, Lcom/android/server/pm/PackageInstalledInfo;->mName:Ljava/lang/String;

    .line 2743
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v0

    iput v0, v4, Lcom/android/server/pm/PackageInstalledInfo;->mUid:I

    .line 2744
    iput-object v7, v4, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    const/4 v2, 0x1

    .line 2745
    invoke-virtual {v4, v2}, Lcom/android/server/pm/PackageInstalledInfo;->setReturnCode(I)V

    const-string/jumbo v0, "writeSettings"

    const-wide/32 v2, 0x40000

    .line 2747
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2748
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP()V

    .line 2749
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2750
    monitor-exit v13
    :try_end_2dc
    .catchall {:try_start_124 .. :try_end_2dc} :catchall_2e0

    .line 2752
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_2e0
    move-exception v0

    .line 2750
    :try_start_2e1
    monitor-exit v13
    :try_end_2e2
    .catchall {:try_start_2e1 .. :try_end_2e2} :catchall_2e0

    throw v0
.end method

.method public final updateSettingsLI(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/ReconciledPackage;[ILcom/android/server/pm/PackageInstalledInfo;)V
    .registers 5

    .line 2528
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/InstallPackageHelper;->updateSettingsInternalLI(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/ReconciledPackage;[ILcom/android/server/pm/PackageInstalledInfo;)V

    return-void
.end method

.method public final verifyPackageUpdateLPr(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mLock"
        }
    .end annotation

    .line 5506
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const-string v3, " to "

    const-string v4, "Unable to update from "

    const-string v5, "PackageManager"

    if-nez v0, :cond_35

    .line 5507
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5508
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": old package not in system partition"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5507
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 5511
    :cond_35
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_69

    .line 5512
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5513
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": old package still exists"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5512
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_69
    return v1
.end method

.method public verifyReplacingVersionCode(Landroid/content/pm/PackageInfoLite;JI)Landroid/util/Pair;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfoLite;",
            "JI)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/high16 v0, 0x20000

    and-int/2addr v0, p4

    if-eqz v0, :cond_a

    .line 3612
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/InstallPackageHelper;->verifyReplacingVersionCodeForApex(Landroid/content/pm/PackageInfoLite;JI)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 3616
    :cond_a
    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 3617
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 3622
    :try_start_11
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3623
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    if-nez v2, :cond_2b

    if-eqz v3, :cond_2b

    .line 3626
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    :cond_2b
    const-wide/16 v4, -0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_8e

    const/16 v4, -0x79

    if-nez v2, :cond_5a

    .line 3632
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Required installed version code was "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " but package is not installed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    .line 3635
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3637
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3636
    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 3640
    :cond_5a
    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getLongVersionCode()J

    move-result-wide v5

    cmp-long v5, v5, p2

    if-eqz v5, :cond_8e

    .line 3641
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Required installed version code was "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " but actual installed version is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3644
    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getLongVersionCode()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    .line 3645
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3647
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3646
    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :cond_8e
    if-eqz v2, :cond_11a

    .line 3651
    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isSdkLibrary()Z

    move-result p2

    if-nez p2, :cond_11a

    .line 3653
    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isDebuggable()Z

    move-result p2

    .line 3652
    invoke-static {p4, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->isDowngradePermitted(IZ)Z

    move-result p2
    :try_end_9e
    .catchall {:try_start_11 .. :try_end_9e} :catchall_126

    const/16 p3, -0x19

    if-nez p2, :cond_cb

    .line 3656
    :try_start_a2
    invoke-static {v2, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->checkDowngrade(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PackageInfoLite;)V
    :try_end_a5
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_a2 .. :try_end_a5} :catch_a6
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_126

    goto :goto_11a

    :catch_a6
    move-exception p0

    .line 3658
    :try_start_a7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Downgrade detected: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    .line 3659
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3661
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3660
    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 3663
    :cond_cb
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result p2

    if-eqz p2, :cond_11a

    .line 3666
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    if-eqz p0, :cond_df

    .line 3669
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 3671
    :cond_df
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez p0, :cond_11a

    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isDebuggable()Z

    move-result p0
    :try_end_e7
    .catchall {:try_start_a7 .. :try_end_e7} :catchall_126

    if-nez p0, :cond_11a

    .line 3674
    :try_start_e9
    invoke-static {v2, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->checkDowngrade(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PackageInfoLite;)V
    :try_end_ec
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_e9 .. :try_end_ec} :catch_ed
    .catchall {:try_start_e9 .. :try_end_ec} :catchall_126

    goto :goto_11a

    :catch_ed
    move-exception p0

    .line 3676
    :try_start_ee
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "System app: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be downgraded to older than its preloaded version on the system image. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3679
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    .line 3680
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3682
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3681
    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 3687
    :cond_11a
    :goto_11a
    monitor-exit v1
    :try_end_11b
    .catchall {:try_start_ee .. :try_end_11b} :catchall_126

    const/4 p0, 0x1

    .line 3688
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :catchall_126
    move-exception p0

    .line 3687
    :try_start_127
    monitor-exit v1
    :try_end_128
    .catchall {:try_start_127 .. :try_end_128} :catchall_126

    throw p0
.end method

.method public final verifyReplacingVersionCodeForApex(Landroid/content/pm/PackageInfoLite;JI)Landroid/util/Pair;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfoLite;",
            "JI)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3693
    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 3695
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    const-string v2, "PackageManager"

    if-nez p0, :cond_2c

    .line 3698
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Attempting to install new APEX package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3699
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x17

    .line 3700
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 3703
    :cond_2c
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v5, p2, v5

    if-eqz v5, :cond_69

    cmp-long v5, v3, p2

    if-eqz v5, :cond_69

    .line 3706
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Installed version of APEX package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not match required. Active version: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " required: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3709
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x79

    .line 3710
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 3713
    :cond_69
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_73

    move p0, v1

    goto :goto_74

    :cond_73
    const/4 p0, 0x0

    .line 3715
    :goto_74
    invoke-virtual {p1}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide p1

    .line 3716
    invoke-static {p4, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isDowngradePermitted(IZ)Z

    move-result p0

    if-nez p0, :cond_b1

    cmp-long p0, p1, v3

    if-gez p0, :cond_b1

    .line 3718
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Downgrade of APEX package "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is not allowed. Active version: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " attempted: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3721
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x19

    .line 3722
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 3725
    :cond_b1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
