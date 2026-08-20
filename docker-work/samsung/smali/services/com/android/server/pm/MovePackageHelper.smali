.class public final Lcom/android/server/pm/MovePackageHelper;
.super Ljava/lang/Object;
.source "MovePackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;,
        Lcom/android/server/pm/MovePackageHelper$SdcardParams;
    }
.end annotation


# static fields
.field public static mMoveIdMapForSd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/IMemorySaverPackageMoveObserver;",
            ">;"
        }
    .end annotation
.end field

.field public static mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/MovePackageHelper$SdcardParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public static synthetic $r8$lambda$gP2YLJ3dm1CNBvosUdUMBDQ7Yhg(Lcom/android/server/pm/MovePackageHelper;Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JI)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/pm/MovePackageHelper;->lambda$movePackageInternal$0(Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JI)V

    return-void
.end method

.method public static synthetic $r8$lambda$li3F8SSHBPL9hbakD6sUrGmCPeY(Lcom/android/server/pm/MovePackageHelper;Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JI)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/pm/MovePackageHelper;->lambda$movePackageInternal$1(Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogAppMovedStorage(Lcom/android/server/pm/MovePackageHelper;Ljava/lang/String;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/MovePackageHelper;->logAppMovedStorage(Ljava/lang/String;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartMovePackage(Lcom/android/server/pm/MovePackageHelper;Lcom/android/server/pm/MovePackageHelper$SdcardParams;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/MovePackageHelper;->startMovePackage(Lcom/android/server/pm/MovePackageHelper$SdcardParams;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/MovePackageHelper;->mMoveIdMapForSd:Ljava/util/Map;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/MovePackageHelper;->mPendingMoves:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method

.method private synthetic lambda$movePackageInternal$0(Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JI)V
    .registers 21

    .line 426
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    const-wide/16 v3, 0x1

    .line 431
    :try_start_9
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_b} :catch_13

    move-object v6, p1

    :try_start_c
    invoke-virtual {p1, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_10} :catch_14

    if-eqz v3, :cond_14

    return-void

    :catch_13
    move-object v6, p1

    .line 437
    :catch_14
    :cond_14
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v3

    sub-long v3, p2, v3

    const-wide/16 v7, 0x50

    mul-long/2addr v3, v7

    .line 438
    div-long v7, v3, p5

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x50

    invoke-static/range {v7 .. v12}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v3

    long-to-int v3, v3

    add-int/lit8 v3, v3, 0xa

    if-lt v2, v3, :cond_39

    const/16 v3, 0x5a

    if-ge v2, v3, :cond_36

    const/4 v3, 0x5

    .line 443
    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    goto :goto_37

    :cond_36
    move v3, v1

    :goto_37
    add-int/2addr v2, v3

    goto :goto_3a

    :cond_39
    move v2, v3

    :goto_3a
    move-object v3, p0

    .line 448
    iget-object v4, v3, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    move/from16 v5, p7

    invoke-virtual {v4, v5, v2}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    goto :goto_7
.end method

.method private synthetic lambda$movePackageInternal$1(Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JI)V
    .registers 22

    .line 457
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    const-wide/16 v3, 0x1

    .line 462
    :try_start_9
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_b} :catch_13

    move-object v6, p1

    :try_start_c
    invoke-virtual {p1, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_10} :catch_14

    if-eqz v3, :cond_14

    return-void

    :catch_13
    move-object v6, p1

    .line 469
    :catch_14
    :cond_14
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v3

    sub-long v3, p2, v3

    const-wide/16 v7, 0x0

    cmp-long v5, p5, v7

    const/16 v7, 0xa

    if-eqz v5, :cond_32

    const-wide/16 v8, 0x50

    mul-long/2addr v3, v8

    .line 472
    div-long v8, v3, p5

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x50

    invoke-static/range {v8 .. v13}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v3

    long-to-int v3, v3

    add-int/2addr v3, v7

    goto :goto_34

    :cond_32
    const/16 v3, 0x64

    :goto_34
    if-lt v2, v3, :cond_42

    const/16 v3, 0x5a

    if-ge v2, v3, :cond_3f

    .line 478
    invoke-virtual {v0, v7}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    goto :goto_40

    :cond_3f
    move v3, v1

    :goto_40
    add-int/2addr v2, v3

    goto :goto_43

    :cond_42
    move v2, v3

    :goto_43
    move-object v3, p0

    .line 482
    iget-object v4, v3, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    move/from16 v5, p7

    invoke-virtual {v4, v5, v2}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    goto :goto_7
.end method


# virtual methods
.method public final getPackageSizeInfoLI(Ljava/lang/String;ILandroid/content/pm/PackageStats;)Z
    .registers 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mInstallLock"
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 542
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_28

    const-string p0, "PackageManager"

    .line 544
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to find settings for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    monitor-exit v0

    return v2

    .line 547
    :cond_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_73

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    aput-object p1, v5, v2

    new-array v9, v0, [J

    .line 550
    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageSetting;->getCeDataInode(I)J

    move-result-wide v3

    aput-wide v3, v9, v2

    new-array v10, v0, [Ljava/lang/String;

    .line 551
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v10, v2

    .line 554
    :try_start_3e
    iget-object p0, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    .line 555
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v8

    move v6, p2

    move-object v11, p3

    .line 554
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V

    .line 558
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result p0

    if-eqz p0, :cond_60

    .line 559
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isUpdatedSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result p0

    if-nez p0, :cond_60

    const-wide/16 p0, 0x0

    .line 560
    iput-wide p0, p3, Landroid/content/pm/PackageStats;->codeSize:J

    .line 564
    :cond_60
    iget-wide p0, p3, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v3, p3, Landroid/content/pm/PackageStats;->cacheSize:J

    sub-long/2addr p0, v3

    iput-wide p0, p3, Landroid/content/pm/PackageStats;->dataSize:J
    :try_end_67
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3e .. :try_end_67} :catch_68

    return v0

    :catch_68
    move-exception p0

    const-string p1, "PackageManager"

    .line 567
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catchall_73
    move-exception p0

    .line 547
    :try_start_74
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw p0
.end method

.method public final logAppMovedStorage(Ljava/lang/String;Z)V
    .registers 6

    .line 510
    iget-object v0, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 511
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 512
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_53

    if-nez v1, :cond_13

    return-void

    .line 517
    :cond_13
    iget-object p0, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 519
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 518
    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p0

    .line 521
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isExternalStorage()Z

    move-result v0

    .line 520
    invoke-static {p0, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageExternalStorageType(Landroid/os/storage/VolumeInfo;Z)I

    move-result p0

    const/16 v0, 0xb7

    if-nez p2, :cond_46

    .line 523
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isExternalStorage()Z

    move-result v2

    if-eqz v2, :cond_46

    const/4 p2, 0x1

    .line 525
    invoke-static {v0, p0, p2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;)V

    goto :goto_52

    :cond_46
    if-eqz p2, :cond_52

    .line 529
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isExternalStorage()Z

    move-result p2

    if-nez p2, :cond_52

    const/4 p2, 0x2

    .line 531
    invoke-static {v0, p0, p2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;)V

    :cond_52
    :goto_52
    return-void

    :catchall_53
    move-exception p0

    .line 512
    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p0
.end method

.method public movePackageInternal(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    .registers 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    .line 175
    iget-object v1, v0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 176
    iget-object v2, v0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 178
    iget-object v3, v0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    .line 179
    invoke-interface {v3, v10}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    if-eqz v4, :cond_395

    .line 181
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    if-eqz v5, :cond_395

    .line 182
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    move/from16 v6, p4

    invoke-interface {v3, v4, v6, v5}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v5

    if-nez v5, :cond_395

    .line 185
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    .line 186
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v6

    if-nez v6, :cond_38c

    const-string/jumbo v6, "private"

    .line 191
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 192
    iget-object v7, v0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1110013

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v6, :cond_69

    if-eqz v7, :cond_5f

    goto :goto_69

    .line 195
    :cond_5f
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x9

    const-string v2, "3rd party apps are not allowed on internal storage"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 200
    :cond_69
    :goto_69
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v13

    .line 203
    invoke-static {v5}, Lcom/android/server/pm/AsecInstallHelper;->isExternalAsec(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    const/4 v7, -0x6

    if-nez v6, :cond_a6

    .line 207
    new-instance v8, Ljava/io/File;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    new-instance v9, Ljava/io/File;

    const-string/jumbo v14, "oat"

    invoke-direct {v9, v8, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v1, v11}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v14

    .line 210
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_9e

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_a6

    if-eqz v14, :cond_a6

    .line 211
    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v8

    if-nez v8, :cond_9e

    goto :goto_a6

    .line 212
    :cond_9e
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Move only supported for modern cluster style installs"

    invoke-direct {v0, v7, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 217
    :cond_a6
    :goto_a6
    invoke-static {v5}, Lcom/android/server/pm/AsecInstallHelper;->isExternalAsec(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v8

    if-eqz v8, :cond_cf

    if-eqz v11, :cond_cf

    const-string/jumbo v8, "primary_physical"

    .line 218
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b8

    goto :goto_cf

    .line 219
    :cond_b8
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package already moved to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 224
    :cond_cf
    :goto_cf
    invoke-static {v13, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f3

    .line 225
    invoke-static {v5}, Lcom/android/server/pm/AsecInstallHelper;->isExternalAsec(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v8

    if-eqz v8, :cond_dc

    goto :goto_f3

    .line 228
    :cond_dc
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package already moved to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 233
    :cond_f3
    :goto_f3
    invoke-interface {v5}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isExternalStorage()Z

    move-result v8

    if-nez v8, :cond_10b

    iget-object v8, v0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 234
    invoke-virtual {v8, v3, v10}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdminOnAnyUser(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_102

    goto :goto_10b

    .line 235
    :cond_102
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v1, -0x8

    const-string v2, "Device admin cannot be moved"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 239
    :cond_10b
    :goto_10b
    invoke-interface {v3}, Lcom/android/server/pm/Computer;->getFrozenPackages()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_383

    .line 244
    invoke-interface {v5}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isExternalStorage()Z

    move-result v8

    .line 245
    new-instance v14, Ljava/io/File;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v15

    .line 247
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getCpuAbiOverride()Ljava/lang/String;

    move-result-object v16

    .line 248
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v17

    .line 249
    invoke-static {v5, v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v18

    .line 251
    invoke-static {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->generateAppInfoWithoutState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 250
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-interface {v5}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v19

    .line 253
    iget-object v3, v0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 254
    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v3

    const/4 v9, 0x1

    .line 253
    invoke-static {v4, v3, v9}, Lcom/android/server/pm/pkg/PackageStateUtils;->queryInstalledUsers(Lcom/android/server/pm/pkg/PackageStateInternal;[IZ)[I

    move-result-object v3

    .line 256
    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "~~"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16d

    .line 258
    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_171

    .line 260
    :cond_16d
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    :goto_171
    move-object/from16 v20, v4

    .line 264
    iget-object v4, v0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v4

    .line 265
    :try_start_178
    iget-object v5, v0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v7, "movePackageInternal"

    invoke-virtual {v5, v10, v7}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v5

    .line 266
    monitor-exit v4
    :try_end_182
    .catchall {:try_start_178 .. :try_end_182} :catchall_380

    .line 268
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v7, "android.intent.extra.PACKAGE_NAME"

    .line 269
    invoke-virtual {v4, v7, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "android.intent.extra.TITLE"

    .line 270
    invoke-virtual {v4, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    sget-boolean v2, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    if-eqz v2, :cond_1b2

    .line 273
    sget-object v2, Lcom/android/server/pm/MovePackageHelper;->mMoveIdMapForSd:Ljava/util/Map;

    monitor-enter v2

    .line 274
    :try_start_198
    sget-object v7, Lcom/android/server/pm/MovePackageHelper;->mMoveIdMapForSd:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1ad

    const-string/jumbo v7, "moveCaller"

    const-string/jumbo v9, "smartmanager"

    .line 275
    invoke-virtual {v4, v7, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_1ad
    monitor-exit v2

    goto :goto_1b2

    :catchall_1af
    move-exception v0

    monitor-exit v2
    :try_end_1b1
    .catchall {:try_start_198 .. :try_end_1b1} :catchall_1af

    throw v0

    .line 280
    :cond_1b2
    :goto_1b2
    iget-object v2, v0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    invoke-virtual {v2, v12, v4}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyCreated(ILandroid/os/Bundle;)V

    const/16 v2, 0x10

    .line 287
    sget-object v4, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v4, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1cf

    const/4 v4, 0x1

    xor-int/2addr v6, v4

    .line 293
    invoke-static/range {p2 .. p2}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    move/from16 v22, v2

    move-object v7, v4

    move/from16 v23, v6

    goto :goto_231

    :cond_1cf
    const-string/jumbo v4, "primary_physical"

    .line 294
    invoke-virtual {v4, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e6

    .line 296
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v4

    move/from16 v22, v2

    move-object v7, v4

    :goto_1e3
    const/16 v23, 0x0

    goto :goto_231

    .line 298
    :cond_1e6
    invoke-virtual {v1, v11}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v4

    if-eqz v4, :cond_219

    .line 300
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v6

    if-nez v6, :cond_219

    .line 303
    invoke-virtual {v1, v11}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v4

    const-string v6, "PackageManager"

    .line 304
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "measurePath: "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v4

    const/16 v22, 0x8

    goto :goto_1e3

    :cond_219
    if-eqz v4, :cond_374

    .line 306
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_374

    .line 307
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v4

    if-eqz v4, :cond_374

    .line 314
    invoke-static/range {p2 .. p2}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    move/from16 v22, v2

    move-object v7, v4

    const/16 v23, 0x1

    :goto_231
    if-eqz v23, :cond_26a

    .line 320
    array-length v2, v3

    const/4 v4, 0x0

    :goto_235
    if-ge v4, v2, :cond_26a

    aget v6, v3, v4

    .line 321
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v24

    if-eqz v24, :cond_267

    .line 322
    invoke-static {v6}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v24

    if-eqz v24, :cond_246

    goto :goto_267

    .line 323
    :cond_246
    invoke-virtual {v5}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 324
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " must be unlocked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_267
    :goto_267
    add-int/lit8 v4, v4, 0x1

    goto :goto_235

    .line 330
    :cond_26a
    new-instance v2, Landroid/content/pm/PackageStats;

    const/4 v4, -0x1

    const/4 v6, 0x0

    invoke-direct {v2, v6, v4}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    .line 331
    iget-object v4, v0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 332
    :try_start_276
    array-length v6, v3

    const/4 v9, 0x0

    :goto_278
    if-ge v9, v6, :cond_295

    move/from16 v25, v6

    aget v6, v3, v9

    .line 333
    invoke-virtual {v0, v10, v6, v2}, Lcom/android/server/pm/MovePackageHelper;->getPackageSizeInfoLI(Ljava/lang/String;ILandroid/content/pm/PackageStats;)Z

    move-result v6

    if-eqz v6, :cond_289

    add-int/lit8 v9, v9, 0x1

    move/from16 v6, v25

    goto :goto_278

    .line 334
    :cond_289
    invoke-virtual {v5}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 335
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Failed to measure package size"

    const/4 v2, -0x6

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 339
    :cond_295
    monitor-exit v4
    :try_end_296
    .catchall {:try_start_276 .. :try_end_296} :catchall_371

    .line 346
    invoke-virtual {v7}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v25

    if-eqz v23, :cond_2a3

    .line 349
    iget-wide v3, v2, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v9, v2, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v3, v9

    move-wide v9, v3

    goto :goto_2a6

    .line 351
    :cond_2a3
    iget-wide v2, v2, Landroid/content/pm/PackageStats;->codeSize:J

    move-wide v9, v2

    .line 354
    :goto_2a6
    invoke-virtual {v1, v7}, Landroid/os/storage/StorageManager;->getStorageBytesUntilLow(Ljava/io/File;)J

    move-result-wide v1

    cmp-long v1, v9, v1

    if-gtz v1, :cond_365

    .line 360
    iget-object v1, v0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    const/16 v2, 0xa

    invoke-virtual {v1, v12, v2}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    .line 362
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v6, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 363
    new-instance v21, Lcom/android/server/pm/MovePackageHelper$2;

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    move-object v3, v5

    move/from16 v27, v4

    move-object v4, v6

    move/from16 v5, p3

    move-object/from16 v24, v6

    const/16 v28, 0x0

    move-object/from16 v6, p1

    move-object/from16 v29, v7

    move v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/MovePackageHelper$2;-><init>(Lcom/android/server/pm/MovePackageHelper;Lcom/android/server/pm/PackageFreezer;Ljava/util/concurrent/CountDownLatch;ILjava/lang/String;Z)V

    if-eqz v23, :cond_30b

    .line 424
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, v24

    move-wide/from16 v4, v25

    move-object/from16 v6, v29

    move-object v11, v7

    move-object v12, v8

    move-wide v7, v9

    const/4 v10, 0x0

    move/from16 v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/MovePackageHelper;Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JI)V

    invoke-direct {v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 450
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    .line 452
    new-instance v11, Lcom/android/server/pm/MoveInfo;

    move-object v1, v11

    move/from16 v2, p3

    move-object v3, v13

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move/from16 v6, v17

    move-object/from16 v7, v18

    move/from16 v8, v19

    move-object/from16 v9, v20

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/MoveInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    move-object v2, v11

    move v11, v10

    goto :goto_327

    :cond_30b
    const/4 v11, 0x0

    .line 456
    new-instance v12, Ljava/lang/Thread;

    new-instance v13, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda1;

    move-object v1, v13

    move-object/from16 v2, p0

    move-object/from16 v3, v24

    move-wide/from16 v4, v25

    move-object/from16 v6, v29

    move-wide v7, v9

    move/from16 v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/MovePackageHelper;Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JI)V

    invoke-direct {v12, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 484
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    move-object/from16 v2, v28

    :goto_327
    or-int/lit8 v4, v22, 0x2

    .line 492
    invoke-static {v14}, Lcom/android/server/pm/OriginInfo;->fromExistingFile(Ljava/io/File;)Lcom/android/server/pm/OriginInfo;

    move-result-object v1

    .line 493
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v3

    .line 494
    new-instance v5, Ljava/io/File;

    iget-object v6, v1, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v5, v11}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 496
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_34a

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/PackageLite;

    move-object v10, v3

    goto :goto_34c

    :cond_34a
    move-object/from16 v10, v28

    .line 497
    :goto_34c
    new-instance v12, Lcom/android/server/pm/InstallParams;

    const/4 v9, 0x0

    iget-object v11, v0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object v0, v12

    move-object/from16 v3, v21

    move-object v5, v15

    move-object/from16 v6, p2

    move-object/from16 v7, p5

    move-object/from16 v8, v16

    invoke-direct/range {v0 .. v11}, Lcom/android/server/pm/InstallParams;-><init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/PackageManagerService;)V

    const/4 v0, 0x1

    .line 500
    iput-boolean v0, v12, Lcom/android/server/pm/InstallParams;->isMoveRequest:Z

    .line 501
    invoke-virtual {v12}, Lcom/android/server/pm/InstallParams;->movePackage()V

    return-void

    .line 355
    :cond_365
    invoke-virtual {v5}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 356
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Not enough free space to move"

    const/4 v2, -0x6

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :catchall_371
    move-exception v0

    .line 339
    :try_start_372
    monitor-exit v4
    :try_end_373
    .catchall {:try_start_372 .. :try_end_373} :catchall_371

    throw v0

    .line 308
    :cond_374
    invoke-virtual {v5}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 309
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Move location not mounted private volume"

    const/4 v2, -0x6

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :catchall_380
    move-exception v0

    .line 266
    :try_start_381
    monitor-exit v4
    :try_end_382
    .catchall {:try_start_381 .. :try_end_382} :catchall_380

    throw v0

    .line 240
    :cond_383
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v1, -0x7

    const-string v2, "Failed to move already frozen package"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 187
    :cond_38c
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v1, -0x3

    const-string v2, "Cannot move system application"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 183
    :cond_395
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v1, -0x2

    const-string v2, "Missing package"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public movePackageToSd(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/IMemorySaverPackageMoveObserver;)I
    .registers 13

    .line 142
    iget-object v0, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MOVE_PACKAGE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object v0, Lcom/android/server/pm/MovePackageHelper;->mMoveIdMapForSd:Ljava/util/Map;

    monitor-enter v0

    .line 144
    :try_start_d
    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getPreMountState()Z

    move-result v1
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_81

    if-nez v1, :cond_3e

    const/4 p0, -0x6

    const-wide/16 p1, -0x1

    const/4 v1, -0x1

    .line 146
    :try_start_17
    invoke-interface {p3, v1, p0, p1, p2}, Landroid/content/pm/IMemorySaverPackageMoveObserver;->onStatusChanged(IIJ)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1b
    .catchall {:try_start_17 .. :try_end_1a} :catchall_81

    goto :goto_32

    :catch_1b
    move-exception p0

    :try_start_1c
    const-string p1, "PackageManager"

    .line 148
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " remote exception on observer "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_32
    sget-object p0, Lcom/android/server/pm/MovePackageHelper;->mMoveIdMapForSd:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 151
    sget-object p0, Lcom/android/server/pm/MovePackageHelper;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 152
    monitor-exit v0

    return v1

    .line 154
    :cond_3e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 155
    new-instance v6, Landroid/os/UserHandle;

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v6, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 156
    iget-object v1, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mNextMoveId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v8

    if-eqz p3, :cond_5e

    .line 158
    sget-object v1, Lcom/android/server/pm/MovePackageHelper;->mMoveIdMapForSd:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_5e
    new-instance p3, Lcom/android/server/pm/MovePackageHelper$SdcardParams;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/MovePackageHelper$SdcardParams;-><init>(Lcom/android/server/pm/MovePackageHelper;Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;I)V

    .line 162
    sget-object p1, Lcom/android/server/pm/MovePackageHelper;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 163
    sget-object p2, Lcom/android/server/pm/MovePackageHelper;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {p2, p1, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 164
    sget-object p1, Lcom/android/server/pm/MovePackageHelper;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_7f

    .line 165
    invoke-virtual {p0, p3}, Lcom/android/server/pm/MovePackageHelper;->startMovePackage(Lcom/android/server/pm/MovePackageHelper$SdcardParams;)V

    .line 167
    :cond_7f
    monitor-exit v0

    return v8

    :catchall_81
    move-exception p0

    .line 168
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_1c .. :try_end_83} :catchall_81

    throw p0
.end method

.method public final startMovePackage(Lcom/android/server/pm/MovePackageHelper$SdcardParams;)V
    .registers 4

    .line 117
    iget-object v0, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/MovePackageHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/MovePackageHelper$1;-><init>(Lcom/android/server/pm/MovePackageHelper;Lcom/android/server/pm/MovePackageHelper$SdcardParams;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
