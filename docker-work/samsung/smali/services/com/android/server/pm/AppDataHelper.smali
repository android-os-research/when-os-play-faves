.class public final Lcom/android/server/pm/AppDataHelper;
.super Ljava/lang/Object;
.source "AppDataHelper.java"


# static fields
.field public static final DEBUG_APP_DATA:Z = false


# instance fields
.field public final mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public static synthetic $r8$lambda$3RlktWim_2VfqH429iqZylE48dA(Lcom/android/server/pm/UserManagerInternal;Landroid/content/pm/UserInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/storage/StorageManagerInternal;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/AppDataHelper;->lambda$prepareAppDataPostCommitLIF$0(Lcom/android/server/pm/UserManagerInternal;Landroid/content/pm/UserInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/storage/StorageManagerInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7mLyUTHPqoRu_2W4NFPo6V33j6k(Lcom/android/server/pm/AppDataHelper;Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;IILandroid/os/CreateAppDataArgs;Lcom/android/server/pm/PackageSetting;Ljava/lang/Long;Ljava/lang/Throwable;)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/server/pm/AppDataHelper;->lambda$prepareAppDataLeaf$2(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;IILandroid/os/CreateAppDataArgs;Lcom/android/server/pm/PackageSetting;Ljava/lang/Long;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XD7FRmV-RqDDxCeoDD0t1NeWNBM(Lcom/android/server/pm/AppDataHelper;ZLcom/android/server/pm/parsing/pkg/AndroidPackage;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/AppDataHelper;->lambda$prepareAppDataAndMigrate$1(ZLcom/android/server/pm/parsing/pkg/AndroidPackage;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$p_6P0zCnuWdYVoSxcb98b5ECb-s(Lcom/android/server/pm/AppDataHelper;Ljava/util/List;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/AppDataHelper;->lambda$fixAppsDataOnBoot$3(Ljava/util/List;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 85
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iput-object p1, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 86
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstaller()Lcom/android/server/pm/Installer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 87
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getArtManagerService()Lcom/android/server/pm/dex/ArtManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/AppDataHelper;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    return-void
.end method

.method private synthetic lambda$fixAppsDataOnBoot$3(Ljava/util/List;I)V
    .registers 13

    .line 531
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x40000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string v1, "AppDataFixup"

    .line 533
    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 535
    :try_start_f
    iget-object v1, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/Installer;->fixupAppData(Ljava/lang/String;I)V
    :try_end_17
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_f .. :try_end_17} :catch_18

    goto :goto_20

    :catch_18
    move-exception v1

    const-string v2, "PackageManager"

    const-string v3, "Trouble fixing GIDs"

    .line 538
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    :goto_20
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "AppDataPrepare"

    .line 542
    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    if-eqz p1, :cond_a4

    .line 543
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_32

    goto/16 :goto_a4

    .line 547
    :cond_32
    new-instance v1, Lcom/android/server/pm/Installer$Batch;

    invoke-direct {v1}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    .line 548
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v8, 0x0

    move v9, v8

    :cond_3d
    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 550
    iget-object v4, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v4

    .line 551
    :try_start_4f
    iget-object v5, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 552
    invoke-virtual {v2, v8}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 553
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    move-object v5, v2

    goto :goto_66

    :cond_65
    move-object v5, v3

    .line 555
    :goto_66
    monitor-exit v4
    :try_end_67
    .catchall {:try_start_4f .. :try_end_67} :catchall_76

    if-eqz v5, :cond_3d

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, v1

    move-object v4, v5

    move v5, v6

    move v6, p2

    .line 557
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataAndMigrate(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/parsing/pkg/AndroidPackage;IIZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3d

    :catchall_76
    move-exception p0

    .line 555
    :try_start_77
    monitor-exit v4
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw p0

    .line 562
    :cond_79
    iget-object p1, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter p1

    .line 563
    :try_start_7e
    invoke-virtual {p0, v1}, Lcom/android/server/pm/AppDataHelper;->executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V

    .line 564
    monitor-exit p1
    :try_end_82
    .catchall {:try_start_7e .. :try_end_82} :catchall_a1

    .line 565
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string p0, "PackageManager"

    .line 566
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Deferred reconcileAppsData finished "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " packages"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_a1
    move-exception p0

    .line 564
    :try_start_a2
    monitor-exit p1
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    throw p0

    :cond_a4
    :goto_a4
    return-void
.end method

.method private synthetic lambda$prepareAppDataAndMigrate$1(ZLcom/android/server/pm/parsing/pkg/AndroidPackage;II)V
    .registers 11

    if-eqz p1, :cond_19

    .line 212
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/AppDataHelper;->maybeMigrateAppDataLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 215
    new-instance p1, Lcom/android/server/pm/Installer$Batch;

    invoke-direct {p1}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .line 216
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/AppDataHelper;->prepareAppData(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/parsing/pkg/AndroidPackage;III)Ljava/util/concurrent/CompletableFuture;

    .line 217
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppDataHelper;->executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V

    :cond_19
    return-void
.end method

.method private synthetic lambda$prepareAppDataLeaf$2(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;IILandroid/os/CreateAppDataArgs;Lcom/android/server/pm/PackageSetting;Ljava/lang/Long;Ljava/lang/Throwable;)V
    .registers 13

    if-eqz p8, :cond_3a

    const/4 v0, 0x5

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create app data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but trying to recover: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 258
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/AppDataHelper;->destroyAppDataLeafLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V

    const/4 p1, 0x3

    .line 260
    :try_start_23
    iget-object p8, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p8, p5}, Lcom/android/server/pm/Installer;->createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;

    move-result-object p5

    iget-wide v0, p5, Landroid/os/CreateAppDataResult;->ceDataInode:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p7

    const-string p5, "Recovery succeeded!"

    .line 261
    invoke-static {p1, p5}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_34
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_23 .. :try_end_34} :catch_35

    goto :goto_3a

    :catch_35
    const-string p5, "Recovery failed!"

    .line 263
    invoke-static {p1, p5}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 290
    :cond_3a
    :goto_3a
    iget-object p1, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result p1

    if-nez p1, :cond_4c

    iget-object p1, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result p1

    if-nez p1, :cond_4c

    if-eqz p3, :cond_52

    .line 292
    :cond_4c
    iget-object p1, p0, Lcom/android/server/pm/AppDataHelper;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    const/4 p5, 0x0

    invoke-virtual {p1, p2, p3, p5}, Lcom/android/server/pm/dex/ArtManagerService;->prepareAppProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;IZ)V

    :cond_52
    and-int/lit8 p1, p4, 0x2

    if-eqz p1, :cond_71

    .line 296
    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_71

    .line 298
    iget-object p1, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter p1

    .line 299
    :try_start_65
    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide p7

    invoke-virtual {p6, p7, p8, p3}, Lcom/android/server/pm/PackageSetting;->setCeDataInode(JI)V

    .line 300
    monitor-exit p1

    goto :goto_71

    :catchall_6e
    move-exception p0

    monitor-exit p1
    :try_end_70
    .catchall {:try_start_65 .. :try_end_70} :catchall_6e

    throw p0

    .line 303
    :cond_71
    :goto_71
    invoke-virtual {p0, p2, p6, p3, p4}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataContentsLeafLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;II)V

    return-void
.end method

.method public static synthetic lambda$prepareAppDataPostCommitLIF$0(Lcom/android/server/pm/UserManagerInternal;Landroid/content/pm/UserInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/storage/StorageManagerInternal;)V
    .registers 5

    .line 144
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 147
    iget p0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-static {p0, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    .line 148
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p0}, Landroid/os/storage/StorageManagerInternal;->prepareAppDataAfterInstall(Ljava/lang/String;I)V

    :cond_1d
    return-void
.end method


# virtual methods
.method public final assertPackageStorageValid(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 498
    invoke-interface {p1, p3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    const-string v0, "Package "

    if-eqz p1, :cond_8e

    .line 501
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 505
    invoke-interface {p1, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p2

    if-eqz p2, :cond_48

    .line 508
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p2

    if-eqz p2, :cond_47

    .line 509
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppDataHelper;->shouldHaveAppStorage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result p0

    if-eqz p0, :cond_2d

    goto :goto_47

    .line 510
    :cond_2d
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " shouldn\'t have storage"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_47
    :goto_47
    return-void

    .line 506
    :cond_48
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not installed for user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 502
    :cond_65
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " found on unknown volume "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; expected volume "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 500
    :cond_8e
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is unknown"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearAppDataLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 575
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLeafLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V

    const/high16 p2, 0x20000

    and-int/2addr p2, p3

    if-nez p2, :cond_e

    .line 578
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppDataHelper;->clearAppProfilesLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    :cond_e
    return-void
.end method

.method public final clearAppDataLeafLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V
    .registers 14

    .line 584
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 585
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 586
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_45

    .line 587
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    move-result-object p2

    array-length v0, p2

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v0, :cond_44

    aget v6, p2, v2

    if-eqz v1, :cond_25

    .line 588
    invoke-virtual {v1, v6}, Lcom/android/server/pm/PackageSetting;->getCeDataInode(I)J

    move-result-wide v3

    goto :goto_27

    :cond_25
    const-wide/16 v3, 0x0

    :goto_27
    move-wide v8, v3

    .line 590
    :try_start_28
    iget-object v3, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getVolumeUuid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move v7, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/Installer;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_36
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_28 .. :try_end_36} :catch_37

    goto :goto_41

    :catch_37
    move-exception v3

    const-string v4, "PackageManager"

    .line 593
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_44
    return-void

    :catchall_45
    move-exception p0

    .line 586
    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public clearAppProfilesLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 3

    if-nez p1, :cond_f

    .line 600
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "PackageManager"

    const-string v0, "Package was null!"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 603
    :cond_f
    iget-object p0, p0, Lcom/android/server/pm/AppDataHelper;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/ArtManagerService;->clearAppProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.method public clearKeystoreData(II)V
    .registers 7

    if-gez p2, :cond_3

    return-void

    .line 666
    :cond_3
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_14

    const-string p0, "PackageManager"

    const-string/jumbo p1, "skip to clear keystore for SYSTEM_UID"

    .line 667
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 682
    :cond_14
    iget-object p0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_1d
    if-ge v1, p1, :cond_2c

    aget v2, p0, v1

    .line 684
    invoke-static {v2, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    int-to-long v2, v2

    .line 683
    invoke-static {v0, v2, v3}, Landroid/security/AndroidKeyStoreMaintenance;->clearNamespace(IJ)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2c
    return-void
.end method

.method public destroyAppDataLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V
    .registers 4

    if-nez p1, :cond_f

    .line 608
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "PackageManager"

    const-string p2, "Package was null!"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 611
    :cond_f
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/AppDataHelper;->destroyAppDataLeafLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V

    return-void
.end method

.method public destroyAppDataLeafLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V
    .registers 15

    .line 616
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 617
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 618
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_52

    .line 619
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v2, :cond_51

    aget v7, v0, v3

    if-eqz v1, :cond_25

    .line 620
    invoke-virtual {v1, v7}, Lcom/android/server/pm/PackageSetting;->getCeDataInode(I)J

    move-result-wide v4

    goto :goto_27

    :cond_25
    const-wide/16 v4, 0x0

    :goto_27
    move-wide v9, v4

    .line 622
    :try_start_28
    iget-object v4, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getVolumeUuid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move v8, p3

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/pm/Installer;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_36
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_28 .. :try_end_36} :catch_37

    goto :goto_41

    :catch_37
    move-exception v4

    const-string v5, "PackageManager"

    .line 625
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :goto_41
    iget-object v4, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/android/server/pm/dex/DexManager;->notifyPackageDataDestroyed(Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_51
    return-void

    :catchall_52
    move-exception p0

    .line 618
    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p0
.end method

.method public destroyAppProfilesLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 3

    if-nez p1, :cond_f

    .line 633
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "PackageManager"

    const-string v0, "Package was null!"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 636
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppDataHelper;->destroyAppProfilesLeafLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.method public final destroyAppProfilesLeafLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 2

    .line 641
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Installer;->destroyAppProfiles(Ljava/lang/String;)V
    :try_end_9
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_14

    :catch_a
    move-exception p0

    .line 643
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    return-void
.end method

.method public final executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V
    .registers 3

    .line 158
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p1, p0}, Lcom/android/server/pm/Installer$Batch;->execute(Lcom/android/server/pm/Installer;)V
    :try_end_5
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    const-string p1, "PackageManager"

    const-string v0, "Failed to execute pending operations"

    .line 160
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public fixAppsDataOnBoot()Ljava/util/concurrent/Future;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 522
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x3

    .line 527
    :goto_9
    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/AppDataHelper;->reconcileAppsDataLI(Ljava/lang/String;IIZZ)Ljava/util/List;

    move-result-object v1

    .line 530
    new-instance v2, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/AppDataHelper;Ljava/util/List;I)V

    const-string/jumbo p0, "prepareAppData"

    invoke-static {v2, p0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public final maybeMigrateAppDataLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z
    .registers 7

    .line 347
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 349
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isDefaultToDeviceProtectedStorage()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    move v0, v1

    goto :goto_16

    :cond_15
    const/4 v0, 0x2

    .line 352
    :goto_16
    :try_start_16
    iget-object p0, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getVolumeUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p2, v0}, Lcom/android/server/pm/Installer;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_23
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_16 .. :try_end_23} :catch_24

    goto :goto_4a

    :catch_24
    move-exception p0

    const/4 p2, 0x5

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to migrate "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 355
    invoke-static {p2, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :goto_4a
    return v1

    :cond_4b
    const/4 p0, 0x0

    return p0
.end method

.method public final prepareAppData(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/parsing/pkg/AndroidPackage;III)Ljava/util/concurrent/CompletableFuture;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Installer$Batch;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "III)",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "PackageManager"

    if-nez p2, :cond_14

    .line 179
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "Package was null!"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    .line 182
    :cond_14
    invoke-virtual {p0, p2}, Lcom/android/server/pm/AppDataHelper;->shouldHaveAppStorage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 183
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Skipping preparing app data for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    .line 188
    :cond_37
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isSamsungThemeOverlay()Z

    move-result v2

    const-string v3, "Wont create data folders for overlays"

    if-eqz v2, :cond_47

    .line 189
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    .line 196
    :cond_47
    invoke-static {p2}, Lcom/android/server/om/SemSamsungThemeUtils;->isZippedLocaleOverlay(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 197
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    .line 202
    :cond_55
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataLeaf(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/parsing/pkg/AndroidPackage;III)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public prepareAppDataAfterInstallLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 3

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataPostCommitLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    return-void
.end method

.method public final prepareAppDataAndMigrate(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/parsing/pkg/AndroidPackage;IIZ)V
    .registers 13

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .line 208
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/AppDataHelper;->prepareAppData(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/parsing/pkg/AndroidPackage;III)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    new-instance v6, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;

    move-object v0, v6

    move-object v1, p0

    move v2, p5

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/AppDataHelper;ZLcom/android/server/pm/parsing/pkg/AndroidPackage;II)V

    invoke-virtual {p1, v6}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public prepareAppDataContentsLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;II)V
    .registers 5

    if-nez p1, :cond_f

    .line 310
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "PackageManager"

    const-string p2, "Package was null!"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 313
    :cond_f
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataContentsLeafLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;II)V

    return-void
.end method

.method public final prepareAppDataContentsLeafLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;II)V
    .registers 7

    .line 318
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_4d

    .line 325
    invoke-static {p1, p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4d

    .line 326
    invoke-static {p2}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4d

    .line 327
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getNativeLibraryDir()Ljava/lang/String;

    move-result-object p1

    .line 328
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_28

    return-void

    .line 332
    :cond_28
    :try_start_28
    iget-object p0, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/android/server/pm/Installer;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2d
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_28 .. :try_end_2d} :catch_2e

    goto :goto_4d

    :catch_2e
    move-exception p0

    .line 335
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to link native for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    :goto_4d
    return-void
.end method

.method public final prepareAppDataLeaf(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/parsing/pkg/AndroidPackage;III)Ljava/util/concurrent/CompletableFuture;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Installer$Batch;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "III)",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 231
    iget-object v1, v0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 232
    :try_start_7
    iget-object v2, v0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v8

    move/from16 v5, p4

    .line 233
    invoke-virtual {v8, v5}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/pkg/SELinuxUtil;->getSeinfoUser(Lcom/android/server/pm/pkg/PackageUserState;)Ljava/lang/String;

    move-result-object v2

    .line 234
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_7a

    .line 235
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getVolumeUuid()Ljava/lang/String;

    move-result-object v9

    .line 236
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 238
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    move-object/from16 v4, p2

    .line 240
    invoke-static {v4, v8}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 245
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v15

    .line 246
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v16, v1, 0x1

    move-object v10, v3

    move/from16 v11, p4

    move/from16 v12, p5

    .line 247
    invoke-static/range {v9 .. v16}, Lcom/android/server/pm/Installer;->buildCreateAppDataArgs(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IZ)Landroid/os/CreateAppDataArgs;

    move-result-object v7

    move/from16 v1, p3

    .line 249
    iput v1, v7, Landroid/os/CreateAppDataArgs;->previousAppId:I

    move-object/from16 v1, p1

    .line 251
    invoke-virtual {v1, v7}, Lcom/android/server/pm/Installer$Batch;->createAppData(Landroid/os/CreateAppDataArgs;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v9

    new-instance v10, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/AppDataHelper;Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;IILandroid/os/CreateAppDataArgs;Lcom/android/server/pm/PackageSetting;)V

    invoke-virtual {v9, v10}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    :catchall_7a
    move-exception v0

    .line 234
    :try_start_7b
    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v0
.end method

.method public prepareAppDataPostCommitLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .registers 15

    .line 112
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 113
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 114
    iget-object v2, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 115
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_a1

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppDataHelper;->shouldHaveAppStorage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string p0, "PackageManager"

    .line 119
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skipping preparing app data for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 123
    :cond_3a
    new-instance v0, Lcom/android/server/pm/Installer$Batch;

    invoke-direct {v0}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    .line 124
    iget-object v2, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v8

    .line 125
    iget-object v2, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v3, Landroid/os/storage/StorageManagerInternal;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/os/storage/StorageManagerInternal;

    const/4 v2, 0x0

    .line 127
    invoke-virtual {v8, v2}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_59
    :goto_59
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/content/pm/UserInfo;

    .line 129
    iget v2, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v2

    if-eqz v2, :cond_78

    iget v2, v11, Landroid/content/pm/UserInfo;->id:I

    .line 130
    invoke-virtual {v9, v2}, Landroid/os/storage/StorageManagerInternal;->isCeStoragePrepared(I)Z

    move-result v2

    if-eqz v2, :cond_78

    const/4 v2, 0x3

    goto :goto_81

    .line 132
    :cond_78
    iget v2, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v2}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v2

    if-eqz v2, :cond_59

    const/4 v2, 0x1

    :goto_81
    move v7, v2

    .line 138
    iget v2, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 140
    iget v6, v11, Landroid/content/pm/UserInfo;->id:I

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/AppDataHelper;->prepareAppData(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/parsing/pkg/AndroidPackage;III)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;

    invoke-direct {v3, v8, v11, p1, v9}, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/UserManagerInternal;Landroid/content/pm/UserInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/storage/StorageManagerInternal;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    goto :goto_59

    .line 153
    :cond_9d
    invoke-virtual {p0, v0}, Lcom/android/server/pm/AppDataHelper;->executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V

    return-void

    :catchall_a1
    move-exception p0

    .line 115
    :try_start_a2
    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    throw p0
.end method

.method public reconcileAppsData(IIZ)V
    .registers 7

    .line 373
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 374
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 375
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    .line 376
    iget-object v2, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 377
    :try_start_27
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/pm/AppDataHelper;->reconcileAppsDataLI(Ljava/lang/String;IIZ)V

    .line 378
    monitor-exit v2

    goto :goto_12

    :catchall_2c
    move-exception p0

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_2c

    throw p0

    :cond_2f
    return-void
.end method

.method public final reconcileAppsDataLI(Ljava/lang/String;IIZZ)Ljava/util/List;
    .registers 31
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mInstallLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v1, p1

    move/from16 v15, p2

    move/from16 v6, p3

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reconcileAppsData for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " u"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " migrateAppData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "PackageManager"

    .line 402
    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_45

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_46

    :cond_45
    const/4 v0, 0x0

    :goto_46
    move-object v3, v0

    const/4 v2, 0x5

    .line 407
    :try_start_48
    iget-object v0, v7, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, v1, v15, v6}, Lcom/android/server/pm/Installer;->cleanupInvalidPackageDirs(Ljava/lang/String;II)V
    :try_end_4d
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_48 .. :try_end_4d} :catch_4e

    goto :goto_63

    :catch_4e
    move-exception v0

    .line 409
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to cleanup deleted dirs: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 412
    :goto_63
    invoke-static/range {p1 .. p2}, Landroid/os/Environment;->getDataUserCeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 413
    invoke-static/range {p1 .. p2}, Landroid/os/Environment;->getDataUserDeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v16

    .line 415
    iget-object v8, v7, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v13

    and-int/lit8 v8, v6, 0x2

    const-string v14, "Failed to destroy: "

    const-string v12, " due to: "

    const-string v11, "Destroying "

    const/16 v17, 0x0

    if-eqz v8, :cond_13f

    .line 419
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v8

    if-eqz v8, :cond_a6

    .line 420
    invoke-static/range {p2 .. p2}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v8

    if-eqz v8, :cond_8a

    goto :goto_a6

    .line 421
    :cond_8a
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Yikes, someone asked us to reconcile CE storage while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was still locked; this would have caused massive data loss!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_a6
    :goto_a6
    invoke-static {v0}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v10

    .line 427
    array-length v9, v10

    move/from16 v8, v17

    :goto_ad
    if-ge v8, v9, :cond_13f

    aget-object v2, v10, v8

    .line 428
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 430
    :try_start_b5
    invoke-virtual {v7, v13, v1, v5, v15}, Lcom/android/server/pm/AppDataHelper;->assertPackageStorageValid(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_b8
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_b5 .. :try_end_b8} :catch_c8

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move v2, v8

    move/from16 v18, v9

    move-object/from16 v21, v10

    move-object v5, v11

    move-object/from16 v24, v12

    move-object v4, v13

    move-object v3, v14

    goto/16 :goto_12b

    :catch_c8
    move-exception v0

    move/from16 v18, v8

    move-object v8, v0

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 434
    :try_start_e5
    iget-object v8, v7, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_e7
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_e5 .. :try_end_e7} :catch_108

    const/4 v0, 0x2

    const-wide/16 v19, 0x0

    move/from16 v2, v18

    move/from16 v18, v9

    move-object/from16 v9, p1

    move-object/from16 v21, v10

    move-object v10, v5

    move-object v5, v11

    move/from16 v11, p2

    move-object/from16 v22, v3

    move-object v3, v12

    move v12, v0

    move-object/from16 v24, v3

    move-object/from16 v23, v4

    move-object v4, v13

    move-object v3, v14

    move-wide/from16 v13, v19

    :try_start_102
    invoke-virtual/range {v8 .. v14}, Lcom/android/server/pm/Installer;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_105
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_102 .. :try_end_105} :catch_106

    goto :goto_12b

    :catch_106
    move-exception v0

    goto :goto_118

    :catch_108
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v21, v10

    move-object v5, v11

    move-object/from16 v24, v12

    move-object v4, v13

    move-object v3, v14

    move/from16 v2, v18

    move/from16 v18, v9

    .line 437
    :goto_118
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x5

    invoke-static {v8, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :goto_12b
    add-int/lit8 v8, v2, 0x1

    move-object v14, v3

    move-object v13, v4

    move-object v11, v5

    move/from16 v9, v18

    move-object/from16 v10, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v12, v24

    const/4 v2, 0x5

    move/from16 v5, p4

    goto/16 :goto_ad

    :cond_13f
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object v5, v11

    move-object/from16 v24, v12

    move-object v4, v13

    move-object v3, v14

    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_1bc

    .line 443
    invoke-static/range {v16 .. v16}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    .line 444
    array-length v13, v2

    move/from16 v14, v17

    :goto_153
    if-ge v14, v13, :cond_1bc

    aget-object v8, v2, v14

    .line 445
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 447
    :try_start_15b
    invoke-virtual {v7, v4, v1, v10, v15}, Lcom/android/server/pm/AppDataHelper;->assertPackageStorageValid(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_15e
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_15b .. :try_end_15e} :catch_166

    move/from16 v20, v13

    move/from16 v21, v14

    move-object/from16 v16, v24

    :goto_164
    const/4 v8, 0x5

    goto :goto_1b5

    :catch_166
    move-exception v0

    move-object v9, v0

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x5

    invoke-static {v8, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 451
    :try_start_183
    iget-object v8, v7, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_185
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_183 .. :try_end_185} :catch_19b

    const/4 v0, 0x1

    const-wide/16 v18, 0x0

    move-object/from16 v9, p1

    move/from16 v11, p2

    move-object/from16 v16, v12

    move v12, v0

    move/from16 v20, v13

    move/from16 v21, v14

    move-wide/from16 v13, v18

    :try_start_195
    invoke-virtual/range {v8 .. v14}, Lcom/android/server/pm/Installer;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_198
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_195 .. :try_end_198} :catch_199

    goto :goto_164

    :catch_199
    move-exception v0

    goto :goto_1a2

    :catch_19b
    move-exception v0

    move-object/from16 v16, v12

    move/from16 v20, v13

    move/from16 v21, v14

    .line 454
    :goto_1a2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x5

    invoke-static {v8, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :goto_1b5
    add-int/lit8 v14, v21, 0x1

    move-object/from16 v24, v16

    move/from16 v13, v20

    goto :goto_153

    :cond_1bc
    const-wide/32 v8, 0x40000

    const-string/jumbo v0, "prepareAppDataAndMigrate"

    .line 462
    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 463
    new-instance v0, Lcom/android/server/pm/Installer$Batch;

    invoke-direct {v0}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    .line 464
    invoke-interface {v4, v1}, Lcom/android/server/pm/Computer;->getVolumePackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 466
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move/from16 v11, v17

    :goto_1d4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_246

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 467
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 468
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-nez v3, :cond_203

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Odd, missing scanned package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, v23

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, v22

    goto :goto_216

    :cond_203
    move-object/from16 v4, v23

    if-eqz p5, :cond_21b

    .line 475
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isCoreApp()Z

    move-result v3

    if-nez v3, :cond_21b

    move-object/from16 v3, v22

    .line 476
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_216
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    goto :goto_1d4

    :cond_21b
    move-object/from16 v3, v22

    .line 480
    invoke-interface {v1, v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v2

    if-eqz v2, :cond_23d

    .line 481
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v12, v3

    move-object v3, v5

    move-object v13, v4

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataAndMigrate(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/parsing/pkg/AndroidPackage;IIZ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_23f

    :cond_23d
    move-object v12, v3

    move-object v13, v4

    :goto_23f
    move/from16 v6, p3

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    goto :goto_1d4

    :cond_246
    move-object/from16 v12, v22

    move-object/from16 v13, v23

    .line 485
    invoke-virtual {v7, v0}, Lcom/android/server/pm/AppDataHelper;->executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V

    .line 486
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reconcileAppsData finished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " packages"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12
.end method

.method public reconcileAppsDataLI(Ljava/lang/String;IIZ)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mInstallLock"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 385
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/AppDataHelper;->reconcileAppsDataLI(Ljava/lang/String;IIZZ)Ljava/util/List;

    return-void
.end method

.method public final shouldHaveAppStorage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 2

    .line 652
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getProperties()Ljava/util/Map;

    move-result-object p0

    const-string p1, "android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManager$Property;

    if-eqz p0, :cond_17

    .line 653
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method
