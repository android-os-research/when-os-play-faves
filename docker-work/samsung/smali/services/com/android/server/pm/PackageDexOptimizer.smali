.class public Lcom/android/server/pm/PackageDexOptimizer;
.super Ljava/lang/Object;
.source "PackageDexOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageDexOptimizer$Injector;,
        Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;,
        Lcom/android/server/pm/PackageDexOptimizer$DexOptResult;
    }
.end annotation


# static fields
.field public static final DEX_OPT_CANCELLED:I = 0x2

.field public static final DEX_OPT_FAILED:I = -0x1

.field public static final DEX_OPT_PERFORMED:I = 0x1

.field public static final DEX_OPT_SKIPPED:I = 0x0

.field public static final OAT_DIR_NAME:Ljava/lang/String; = "oat"

.field public static final TAG:Ljava/lang/String; = "PackageDexOptimizer"

.field public static final WAKELOCK_TIMEOUT_MS:J = 0xa1220L

.field public static final sRandom:Ljava/util/Random;


# instance fields
.field public final mArtStatsLogger:Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;

.field public final mContext:Landroid/content/Context;

.field public final mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation
.end field

.field public final mInjector:Lcom/android/server/pm/PackageDexOptimizer$Injector;

.field public final mInstallLock:Ljava/lang/Object;

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public volatile mSystemReady:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 149
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageDexOptimizer;->sRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V
    .registers 11

    .line 153
    new-instance v1, Lcom/android/server/pm/PackageDexOptimizer$1;

    invoke-direct {v1}, Lcom/android/server/pm/PackageDexOptimizer$1;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageDexOptimizer;-><init>(Lcom/android/server/pm/PackageDexOptimizer$Injector;Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageDexOptimizer$Injector;Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;

    invoke-direct {v0}, Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mArtStatsLogger:Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;

    .line 178
    iput-object p4, p0, Lcom/android/server/pm/PackageDexOptimizer;->mContext:Landroid/content/Context;

    .line 179
    iput-object p2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 180
    iput-object p3, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    .line 182
    invoke-interface {p1, p4}, Lcom/android/server/pm/PackageDexOptimizer$Injector;->getPowerManager(Landroid/content/Context;)Landroid/os/PowerManager;

    move-result-object p2

    const/4 p3, 0x1

    .line 183
    invoke-virtual {p2, p3, p5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 184
    iput-object p1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInjector:Lcom/android/server/pm/PackageDexOptimizer$Injector;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageDexOptimizer;)V
    .registers 3

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;

    invoke-direct {v0}, Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mArtStatsLogger:Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;

    .line 167
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mContext:Landroid/content/Context;

    .line 168
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 169
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    .line 170
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 171
    iget-boolean v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 172
    iget-object p1, p1, Lcom/android/server/pm/PackageDexOptimizer;->mInjector:Lcom/android/server/pm/PackageDexOptimizer$Injector;

    iput-object p1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInjector:Lcom/android/server/pm/PackageDexOptimizer$Injector;

    return-void
.end method

.method public static getOatDir(Ljava/io/File;)Ljava/io/File;
    .registers 3

    .line 1075
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "oat"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final acquireWakeLockLI(I)J
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation

    .line 647
    iget-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    if-nez v0, :cond_7

    const-wide/16 p0, -0x1

    return-wide p0

    .line 650
    :cond_7
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 651
    iget-object p0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v0, 0xa1220

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 652
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    return-wide p0
.end method

.method public adjustDexoptFlags(I)I
    .registers 2

    return p1
.end method

.method public adjustDexoptNeeded(I)I
    .registers 2

    return p1
.end method

.method public final analyseProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILjava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 1034
    invoke-static {p4}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result p4

    const/4 v0, 0x2

    if-nez p4, :cond_8

    return v0

    .line 1039
    :cond_8
    :try_start_8
    iget-object p4, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    monitor-enter p4
    :try_end_b
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_8 .. :try_end_b} :catch_1c

    .line 1040
    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageDexOptimizer;->getInstallerLI()Lcom/android/server/pm/Installer;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/pm/Installer;->mergeProfiles(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    monitor-exit p4

    return p0

    :catchall_19
    move-exception p0

    .line 1041
    monitor-exit p4
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_19

    :try_start_1b
    throw p0
    :try_end_1c
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1b .. :try_end_1c} :catch_1c

    :catch_1c
    move-exception p0

    const-string p1, "PackageDexOptimizer"

    const-string p2, "Failed to merge profiles"

    .line 1043
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public canOptimizePackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 4

    .line 191
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isHasCode()Z

    move-result v0

    if-nez v0, :cond_14

    return v1

    .line 199
    :cond_14
    iget-object p0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInjector:Lcom/android/server/pm/PackageDexOptimizer$Injector;

    invoke-interface {p0}, Lcom/android/server/pm/PackageDexOptimizer$Injector;->getAppHibernationManagerInternal()Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 201
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/apphibernation/AppHibernationManagerInternal;->isHibernatingGlobally(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 202
    invoke-virtual {p0}, Lcom/android/server/apphibernation/AppHibernationManagerInternal;->isOatArtifactDeletionEnabled()Z

    move-result p0

    if-eqz p0, :cond_2d

    return v1

    :cond_2d
    const/4 p0, 0x1

    return p0
.end method

.method public final compilerFilterDependsOnProfiles(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "-profile"

    .line 1007
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public controlDexOptBlocking(Z)V
    .registers 2

    .line 248
    invoke-virtual {p0}, Lcom/android/server/pm/PackageDexOptimizer;->getInstallerWithoutLock()Lcom/android/server/pm/Installer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Installer;->controlDexOptBlocking(Z)V

    return-void
.end method

.method public final dexOptPath(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/android/server/pm/CompilerStats$PackageStats;ZLjava/lang/String;Ljava/lang/String;IZ)I
    .registers 41
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p3

    move-object/from16 v14, p10

    move/from16 v11, p14

    .line 478
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v1

    move-object/from16 v12, p1

    .line 477
    invoke-virtual {v0, v12, v1}, Lcom/android/server/pm/PackageDexOptimizer;->getPackageOatDirIfSupported(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)Ljava/lang/String;

    move-result-object v13

    .line 480
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v7, p6

    move/from16 v8, p11

    move/from16 v9, p8

    move-object v10, v13

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/PackageDexOptimizer;->getDexoptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)I

    move-result v6

    .line 482
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_37

    return v2

    :cond_37
    const/4 v1, 0x3

    const-string v10, "PackageDexOptimizer"

    if-ne v11, v1, :cond_54

    const-string/jumbo v1, "persist.sys.app_install_boost"

    const-string v3, "false"

    .line 488
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "true"

    .line 489
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    const-string v0, "System is busy state and dexopt skipped!"

    .line 490
    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 495
    :cond_54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running dexopt (dexoptNeeded="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") on: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pkg="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isa="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " dexoptFlags="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p8

    .line 497
    invoke-virtual {v0, v8}, Lcom/android/server/pm/PackageDexOptimizer;->printDexoptFlags(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " targetFilter="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p5

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " oatDir="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " classLoaderContext="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " async="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p15

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 495
    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :try_start_ba
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 519
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v16

    .line 520
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageDexOptimizer;->getInstallerLI()Lcom/android/server/pm/Installer;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 521
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getVolumeUuid()Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    .line 523
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v21

    const/16 v22, 0x1

    if-eqz p13, :cond_da

    move/from16 v2, v22

    .line 524
    :cond_da
    invoke-virtual {v0, v11, v2}, Lcom/android/server/pm/PackageDexOptimizer;->getAugmentedReasonName(IZ)Ljava/lang/String;

    move-result-object v23
    :try_end_de
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_ba .. :try_end_de} :catch_12c

    move-object/from16 v2, p3

    move/from16 v3, p9

    move-object/from16 v5, p4

    move-object v7, v13

    move/from16 v8, p8

    move-object/from16 v9, p5

    move-object v12, v10

    move-object/from16 v10, v17

    move-object/from16 v11, p7

    move-object/from16 v24, v12

    move-object/from16 v12, v16

    move-object v0, v13

    move/from16 v13, v20

    move/from16 v14, v21

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, v23

    .line 520
    :try_start_fd
    invoke-virtual/range {v1 .. v17}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_105

    const/4 v0, 0x2

    return v0

    :cond_105
    move-object/from16 v1, p10

    if-eqz v1, :cond_116

    .line 530
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v18

    long-to-int v2, v2

    int-to-long v2, v2

    move-object/from16 v4, p3

    .line 531
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/pm/CompilerStats$PackageStats;->setCompileTime(Ljava/lang/String;J)V

    :cond_116
    if-eqz v0, :cond_129

    move-object v1, v0

    move-object/from16 v0, p0

    .line 537
    iget-object v0, v0, Lcom/android/server/pm/PackageDexOptimizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 538
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/android/internal/content/F2fsUtils;->releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V
    :try_end_129
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_fd .. :try_end_129} :catch_12a

    :cond_129
    return v22

    :catch_12a
    move-exception v0

    goto :goto_12f

    :catch_12c
    move-exception v0

    move-object/from16 v24, v10

    :goto_12f
    const-string v1, "Failed to dexopt"

    move-object/from16 v2, v24

    .line 542
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    return v0
.end method

.method public dexOptSecondaryDexPath(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 8

    .line 629
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1f

    .line 632
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 633
    :try_start_8
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageDexOptimizer;->acquireWakeLockLI(I)J

    move-result-wide v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_1c

    .line 635
    :try_start_e
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptSecondaryDexPathLI(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result p1
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_17

    .line 637
    :try_start_12
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    monitor-exit v0

    return p1

    :catchall_17
    move-exception p1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    .line 638
    throw p1

    :catchall_1c
    move-exception p0

    .line 639
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_1c

    throw p0

    .line 630
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Dexopt for path "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " has invalid uid."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final dexOptSecondaryDexPathLI(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 34
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v15, p2

    .line 679
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptOnlySharedDex()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUsedByOtherApps()Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v0, 0x0

    return v0

    .line 685
    :cond_14
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilerFilter()Ljava/lang/String;

    move-result-object v2

    .line 686
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUsedByOtherApps()Z

    move-result v3

    .line 685
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageDexOptimizer;->getRealCompilerFilter(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v14, p4

    .line 689
    invoke-virtual {v0, v1, v2, v14}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v3

    or-int/lit8 v3, v3, 0x20

    .line 691
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    const/16 v19, -0x1

    const-string v13, "PackageDexOptimizer"

    if-eqz v4, :cond_3a

    .line 692
    invoke-static {v4, v15}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a

    or-int/lit16 v3, v3, 0x100

    :goto_38
    move v12, v3

    goto :goto_47

    .line 694
    :cond_3a
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    if-eqz v4, :cond_12c

    .line 695
    invoke-static {v4, v15}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12c

    or-int/lit16 v3, v3, 0x80

    goto :goto_38

    :goto_47
    const/4 v3, 0x0

    .line 702
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUnsupportedClassLoaderContext()Z

    move-result v4

    if-nez v4, :cond_5a

    .line 703
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isVariableClassLoaderContext()Z

    move-result v4

    if-eqz v4, :cond_55

    goto :goto_5a

    .line 708
    :cond_55
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getClassLoaderContext()Ljava/lang/String;

    move-result-object v3

    goto :goto_5d

    :cond_5a
    :goto_5a
    const-string/jumbo v2, "verify"

    :goto_5d
    move-object v11, v2

    move-object v10, v3

    .line 711
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v20

    .line 712
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running dexopt on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isa="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoaderIsas()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getReasonName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " dexoptFlags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-virtual {v0, v12}, Lcom/android/server/pm/PackageDexOptimizer;->printDexoptFlags(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " target-filter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " class-loader-context="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 712
    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :try_start_b5
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoaderIsas()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_bd
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11f

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 725
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageDexOptimizer;->getInstallerLI()Lcom/android/server/pm/Installer;

    move-result-object v2

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 729
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->isDowngrade()Z

    move-result v16

    iget v8, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 730
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getReasonName(I)Ljava/lang/String;

    move-result-object v22
    :try_end_e5
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_b5 .. :try_end_e5} :catch_121

    move-object/from16 v23, v3

    move-object/from16 v3, p2

    move/from16 v24, v8

    const/4 v8, 0x0

    move-object/from16 v25, v9

    move v9, v12

    move-object/from16 v26, v10

    move-object v10, v11

    move-object/from16 v27, v11

    move-object/from16 v11, v25

    move/from16 v25, v12

    move-object/from16 v12, v26

    move-object/from16 v28, v13

    move-object/from16 v13, v23

    move/from16 v14, v16

    move/from16 v15, v24

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v22

    .line 725
    :try_start_108
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_10c
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_108 .. :try_end_10c} :catch_11d

    if-nez v2, :cond_110

    const/4 v0, 0x2

    return v0

    :cond_110
    move-object/from16 v15, p2

    move-object/from16 v14, p4

    move/from16 v12, v25

    move-object/from16 v10, v26

    move-object/from16 v11, v27

    move-object/from16 v13, v28

    goto :goto_bd

    :catch_11d
    move-exception v0

    goto :goto_124

    :cond_11f
    const/4 v0, 0x1

    return v0

    :catch_121
    move-exception v0

    move-object/from16 v28, v13

    :goto_124
    const-string v1, "Failed to dexopt"

    move-object/from16 v2, v28

    .line 738
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v19

    :cond_12c
    move-object v2, v13

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not infer CE/DE storage for package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v19
.end method

.method public dexoptSystemServerPath(Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 28
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation

    .line 555
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->isBootComplete()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const/16 v0, 0x8

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    const/4 v2, 0x2

    or-int/2addr v0, v2

    .line 556
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptIdleBackgroundJob()Z

    move-result v3

    if-eqz v3, :cond_16

    const/16 v3, 0x200

    goto :goto_17

    :cond_16
    move v3, v1

    :goto_17
    or-int/2addr v0, v3

    .line 559
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoaderIsas()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Ljava/lang/String;

    const-string v5, "android"

    .line 564
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilerFilter()Ljava/lang/String;

    move-result-object v8

    .line 565
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getClassLoaderContext()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object v7, v14

    move v12, v0

    .line 560
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/pm/PackageDexOptimizer;->getDexoptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)I

    move-result v9

    if-nez v9, :cond_47

    goto :goto_20

    :cond_47
    move-object/from16 v1, p0

    .line 575
    :try_start_49
    iget-object v15, v1, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_4c
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_49 .. :try_end_4c} :catch_98

    .line 576
    :try_start_4c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageDexOptimizer;->getInstallerLI()Lcom/android/server/pm/Installer;

    move-result-object v4

    const/16 v6, 0x3e8

    const-string v7, "android"

    const/4 v10, 0x0

    .line 584
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilerFilter()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 586
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getClassLoaderContext()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 592
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getReasonName(I)Ljava/lang/String;

    move-result-object v22
    :try_end_71
    .catchall {:try_start_4c .. :try_end_71} :catchall_91

    move-object/from16 v5, p1

    move-object v8, v14

    move v11, v0

    move-object/from16 v14, v16

    move-object/from16 v23, v15

    move-object/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    .line 576
    :try_start_85
    invoke-virtual/range {v4 .. v20}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8d

    .line 594
    monitor-exit v23

    return v2

    .line 596
    :cond_8d
    monitor-exit v23

    const/4 v4, 0x1

    move v1, v4

    goto :goto_20

    :catchall_91
    move-exception v0

    move-object/from16 v23, v15

    :goto_94
    monitor-exit v23
    :try_end_95
    .catchall {:try_start_85 .. :try_end_95} :catchall_96

    :try_start_95
    throw v0
    :try_end_96
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_95 .. :try_end_96} :catch_98

    :catchall_96
    move-exception v0

    goto :goto_94

    :catch_98
    move-exception v0

    const-string v1, "PackageDexOptimizer"

    const-string v2, "Failed to dexopt"

    .line 598
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    return v0

    :cond_a2
    return v1
.end method

.method public dumpDexoptState(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)V
    .registers 11

    .line 764
    invoke-static {p2, p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object p0

    .line 765
    invoke-static {p2, p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object p3

    .line 763
    invoke-static {p0, p3}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 766
    invoke-static {p0}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 768
    invoke-static {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePathsExcludingResourceOnly(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object p2

    .line 770
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_18
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_12a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 774
    array-length v0, p0

    const/4 v1, 0x0

    :goto_3e
    if-ge v1, v0, :cond_92

    aget-object v2, p0, v1

    .line 776
    :try_start_42
    invoke-static {p3, v2}, Ldalvik/system/DexFile;->getDexFileOptimizationInfo(Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/DexFile$OptimizationInfo;

    move-result-object v3

    .line 777
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": [status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ldalvik/system/DexFile$OptimizationInfo;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] [reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    invoke-virtual {v3}, Ldalvik/system/DexFile$OptimizationInfo;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 777
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_72} :catch_73

    goto :goto_8f

    :catch_73
    move-exception v3

    .line 780
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": [Exception]: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_8f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 784
    :cond_92
    invoke-virtual {p4, p3}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isUsedByOtherApps(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "used by other apps: "

    if-eqz v0, :cond_b1

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getLoadingPackages(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 788
    :cond_b1
    invoke-virtual {p4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object p3

    .line 790
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_125

    const-string/jumbo v0, "known secondary dex files:"

    .line 791
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 793
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_cc
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_122

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 794
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 795
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 796
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 799
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "class loader context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getClassLoaderContext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 800
    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUsedByOtherApps()Z

    move-result v2

    if-eqz v2, :cond_11e

    .line 801
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoadingPackages()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 803
    :cond_11e
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_cc

    .line 805
    :cond_122
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 807
    :cond_125
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto/16 :goto_18

    :cond_12a
    return-void
.end method

.method public final getAugmentedReasonName(IZ)Ljava/lang/String;
    .registers 3

    if-eqz p2, :cond_5

    const-string p0, "-dm"

    goto :goto_7

    :cond_5
    const-string p0, ""

    .line 609
    :goto_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getReasonName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDexFlags(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 13

    .line 889
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    move v2, v0

    .line 890
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getHiddenApiEnforcementPolicy()I

    move-result v3

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 891
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->requestsIsolatedSplitLoading()Z

    move-result v5

    const/4 v7, 0x0

    move-object v1, p0

    move-object v6, p2

    move-object v8, p3

    .line 889
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(ZILandroid/util/SparseArray;ZLjava/lang/String;ZLcom/android/server/pm/dex/DexoptOptions;)I

    move-result p0

    return p0
.end method

.method public final getDexFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ZLcom/android/server/pm/dex/DexoptOptions;)I
    .registers 14

    .line 897
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isDebuggable()Z

    move-result v1

    .line 898
    invoke-static {p1, p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getHiddenApiEnforcementPolicy(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v2

    .line 899
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitDependencies()Landroid/util/SparseArray;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isIsolatedSplitLoading()Z

    move-result v4

    move-object v0, p0

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .line 897
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(ZILandroid/util/SparseArray;ZLjava/lang/String;ZLcom/android/server/pm/dex/DexoptOptions;)I

    move-result p0

    return p0
.end method

.method public final getDexFlags(ZILandroid/util/SparseArray;ZLjava/lang/String;ZLcom/android/server/pm/dex/DexoptOptions;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Landroid/util/SparseArray<",
            "[I>;Z",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/server/pm/dex/DexoptOptions;",
            ")I"
        }
    .end annotation

    .line 915
    invoke-static {p5}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result p5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p5, :cond_13

    .line 916
    invoke-virtual {p7}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptInstallWithDexMetadata()Z

    move-result v2

    if-nez v2, :cond_13

    if-eqz p6, :cond_11

    goto :goto_13

    :cond_11
    move p6, v1

    goto :goto_14

    :cond_13
    :goto_13
    move p6, v0

    :goto_14
    if-eqz p5, :cond_19

    const/16 v2, 0x10

    goto :goto_1a

    :cond_19
    move v2, v1

    :goto_1a
    if-nez p2, :cond_1e

    move p2, v1

    goto :goto_20

    :cond_1e
    const/16 p2, 0x400

    .line 928
    :goto_20
    invoke-virtual {p7}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_30

    if-eq v3, v0, :cond_30

    if-eq v3, v4, :cond_30

    const/4 v5, 0x3

    if-eq v3, v5, :cond_30

    move v3, v0

    goto :goto_31

    :cond_30
    move v3, v1

    :goto_31
    if-eqz p5, :cond_3e

    if-eqz p3, :cond_37

    if-nez p4, :cond_3e

    .line 944
    :cond_37
    invoke-virtual {p0}, Lcom/android/server/pm/PackageDexOptimizer;->isAppImageEnabled()Z

    move-result p3

    if-eqz p3, :cond_3e

    goto :goto_3f

    :cond_3e
    move v0, v1

    :goto_3f
    if-eqz p6, :cond_42

    goto :goto_43

    :cond_42
    move v4, v1

    :goto_43
    if-eqz p1, :cond_47

    const/4 p1, 0x4

    goto :goto_48

    :cond_47
    move p1, v1

    :goto_48
    or-int/2addr p1, v4

    or-int/2addr p1, v2

    .line 949
    invoke-virtual {p7}, Lcom/android/server/pm/dex/DexoptOptions;->isBootComplete()Z

    move-result p3

    if-eqz p3, :cond_53

    const/16 p3, 0x8

    goto :goto_54

    :cond_53
    move p3, v1

    :goto_54
    or-int/2addr p1, p3

    .line 950
    invoke-virtual {p7}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptIdleBackgroundJob()Z

    move-result p3

    if-eqz p3, :cond_5e

    const/16 p3, 0x200

    goto :goto_5f

    :cond_5e
    move p3, v1

    :goto_5f
    or-int/2addr p1, p3

    if-eqz v3, :cond_65

    const/16 p3, 0x800

    goto :goto_66

    :cond_65
    move p3, v1

    :goto_66
    or-int/2addr p1, p3

    if-eqz v0, :cond_6c

    const/16 p3, 0x1000

    goto :goto_6d

    :cond_6c
    move p3, v1

    :goto_6d
    or-int/2addr p1, p3

    .line 953
    invoke-virtual {p7}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptInstallForRestore()Z

    move-result p3

    if-eqz p3, :cond_76

    const/16 v1, 0x2000

    :cond_76
    or-int/2addr p1, v1

    or-int/2addr p1, p2

    .line 955
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptFlags(I)I

    move-result p0

    return p0
.end method

.method public final getDexoptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)I
    .registers 20
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation

    move-object v0, p0

    move-object v7, p2

    move/from16 v1, p6

    const-string v8, "PackageDexOptimizer"

    and-int/lit8 v2, p8, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_e

    move v2, v4

    goto :goto_f

    :cond_e
    move v2, v3

    :goto_f
    and-int/lit8 v5, p8, 0x10

    if-eqz v5, :cond_15

    move v5, v4

    goto :goto_16

    :cond_15
    move v5, v3

    :goto_16
    if-ne v1, v4, :cond_19

    move v3, v4

    :cond_19
    if-nez v3, :cond_2b

    if-eqz v5, :cond_2b

    if-eqz v2, :cond_2b

    move-object v2, p1

    move-object v5, p3

    move-object/from16 v6, p9

    .line 971
    invoke-virtual {p0, p1, p2, p3, v6}, Lcom/android/server/pm/PackageDexOptimizer;->isOdexPrivate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    move v6, v4

    goto :goto_2d

    :cond_2b
    move-object v5, p3

    :cond_2c
    move v6, v3

    :goto_2d
    const/4 v9, -0x1

    move-object v2, p4

    .line 989
    :try_start_2f
    invoke-virtual {p0, p4}, Lcom/android/server/pm/PackageDexOptimizer;->compilerFilterDependsOnProfiles(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3d

    const-string/jumbo v1, "verify"

    move-object v3, v1

    goto :goto_3e

    :cond_3d
    move-object v3, v2

    :goto_3e
    move-object v1, p2

    move-object v2, p3

    move-object v4, p5

    move v5, v6

    move/from16 v6, p7

    .line 993
    invoke-static/range {v1 .. v6}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v1
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_48} :catch_63
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_48} :catch_4d

    .line 1002
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptNeeded(I)I

    move-result v0

    return v0

    :catch_4d
    move-exception v0

    .line 999
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected exception when calling dexoptNeeded on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v9

    :catch_63
    move-exception v0

    .line 996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException reading apk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v9
.end method

.method public final getInstallerLI()Lcom/android/server/pm/Installer;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation

    .line 1159
    iget-object p0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    return-object p0
.end method

.method public final getInstallerWithoutLock()Lcom/android/server/pm/Installer;
    .registers 1

    .line 1167
    iget-object p0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    return-object p0
.end method

.method public final getPackageOatDirIfSupported(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)Ljava/lang/String;
    .registers 3

    .line 1063
    invoke-static {p1, p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->canHaveOatDir(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)Z

    move-result p0

    const/4 p2, 0x0

    if-nez p0, :cond_8

    return-object p2

    .line 1066
    :cond_8
    new-instance p0, Ljava/io/File;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_18

    return-object p2

    .line 1070
    :cond_18
    invoke-static {p0}, Lcom/android/server/pm/PackageDexOptimizer;->getOatDir(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getRealCompilerFilter(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    .line 819
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isEmbeddedDexUsed()Z

    move-result p0

    if-nez p0, :cond_3a

    .line 820
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result p0

    if-eqz p0, :cond_15

    iget-object p0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 821
    invoke-static {p0}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOob(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_3a

    .line 835
    :cond_15
    iget p0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p1, p0, 0x4000

    if-nez p1, :cond_22

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_20

    goto :goto_22

    :cond_20
    const/4 p0, 0x0

    goto :goto_23

    :cond_22
    :goto_22
    const/4 p0, 0x1

    :goto_23
    if-eqz p0, :cond_2a

    .line 839
    invoke-static {p2}, Ldalvik/system/DexFile;->getSafeModeCompilerFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 842
    :cond_2a
    invoke-static {p2}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_39

    if-eqz p3, :cond_39

    const/16 p0, 0xd

    .line 844
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_39
    return-object p2

    :cond_3a
    :goto_3a
    const-string/jumbo p0, "verify"

    return-object p0
.end method

.method public final getRealCompilerFilter(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 859
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isUseEmbeddedDex()Z

    move-result p0

    if-nez p0, :cond_2f

    .line 860
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isPrivileged()Z

    move-result p0

    if-eqz p0, :cond_17

    .line 861
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOob(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_2f

    .line 875
    :cond_17
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isVmSafeMode()Z

    move-result p0

    if-nez p0, :cond_26

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isDebuggable()Z

    move-result p0

    if-eqz p0, :cond_24

    goto :goto_26

    :cond_24
    const/4 p0, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 p0, 0x1

    :goto_27
    if-eqz p0, :cond_2e

    .line 878
    invoke-static {p2}, Ldalvik/system/DexFile;->getSafeModeCompilerFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2e
    return-object p2

    :cond_2f
    :goto_2f
    const-string/jumbo p0, "verify"

    return-object p0
.end method

.method public final isAppImageEnabled()Z
    .registers 2

    const-string p0, "dalvik.vm.appimageformat"

    const-string v0, ""

    .line 885
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public final isOdexPrivate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1014
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Installer;->getOdexVisibility(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_c

    const/4 p1, 0x2

    if-ne p0, p1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0

    :catch_c
    move-exception p0

    .line 1017
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to get odex visibility for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PackageDexOptimizer"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public performDexOpt(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 10

    const-string v0, "android"

    .line 220
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 224
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_37

    .line 228
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageDexOptimizer;->canOptimizePackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 p0, 0x0

    return p0

    .line 231
    :cond_1b
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_1e
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageDexOptimizer;->acquireWakeLockLI(I)J

    move-result-wide v1
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_34

    .line 234
    :try_start_26
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLI(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result p1
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_2f

    .line 237
    :try_start_2a
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    monitor-exit v0

    return p1

    :catchall_2f
    move-exception p1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    .line 238
    throw p1

    :catchall_34
    move-exception p0

    .line 239
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_34

    throw p0

    .line 225
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Dexopt for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has invalid uid."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 221
    :cond_57
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "System server dexopting should be done via  DexManager and PackageDexOptimizer#dexoptSystemServerPath"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final performDexOptLI(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 56
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p4

    .line 262
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getNonNativeUsesLibraryInfos()Ljava/util/List;

    move-result-object v0

    if-eqz p3, :cond_13

    move-object/from16 v1, p3

    goto :goto_1f

    .line 266
    :cond_13
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-static {v1, v2}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 268
    :goto_1f
    invoke-static {v1}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 269
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v11

    .line 271
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v1

    const/4 v10, -0x1

    const-string v9, "PackageDexOptimizer"

    if-ne v1, v10, :cond_5f

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Well this is awkward; package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " had UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 273
    invoke-static {v9, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, 0x270f

    :cond_5f
    move v8, v1

    .line 281
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    new-array v7, v1, [Z

    .line 282
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isHasCode()Z

    move-result v1

    const/16 v17, 0x0

    aput-boolean v1, v7, v17

    const/16 v18, 0x1

    move/from16 v1, v18

    .line 283
    :goto_72
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8e

    .line 284
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSplitFlags()[I

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_87

    move/from16 v2, v18

    goto :goto_89

    :cond_87
    move/from16 v2, v17

    :goto_89
    aput-boolean v2, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    .line 286
    :cond_8e
    invoke-static {v14, v0, v7}, Lcom/android/server/pm/dex/DexoptUtils;->getClassLoaderContexts(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;[Z)[Ljava/lang/String;

    move-result-object v6

    .line 290
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, v6

    if-eq v0, v1, :cond_d2

    .line 291
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v0

    .line 292
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistent information between AndroidPackage and its ApplicationInfo. pkg.getAllCodePaths="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " pkg.getBaseCodePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pkg.getSplitCodePaths="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_c3

    const-string/jumbo v0, "null"

    goto :goto_c7

    .line 297
    :cond_c3
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_c7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d2
    move/from16 v0, v17

    move v5, v0

    .line 301
    :goto_d5
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_36f

    .line 303
    aget-boolean v1, v7, v5

    if-nez v1, :cond_e0

    goto :goto_104

    .line 306
    :cond_e0
    aget-object v1, v6, v5

    if-eqz v1, :cond_345

    .line 313
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 314
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getSplitName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_116

    .line 317
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getSplitName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_116

    :goto_104
    move/from16 v48, v5

    move-object/from16 v36, v6

    move-object/from16 v41, v7

    move/from16 v42, v8

    move v5, v10

    move-object/from16 v45, v11

    move-object/from16 v46, v12

    move-object v1, v13

    move-object v2, v15

    move-object v10, v9

    goto/16 :goto_314

    :cond_116
    if-nez v5, :cond_11a

    const/4 v2, 0x0

    goto :goto_122

    .line 323
    :cond_11a
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSplitNames()[Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v5, -0x1

    aget-object v2, v2, v3

    .line 322
    :goto_122
    invoke-static {v2}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 324
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptAsSharedLibrary()Z

    move-result v3

    if-nez v3, :cond_138

    move-object/from16 v3, p5

    .line 325
    invoke-virtual {v3, v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isUsedByOtherApps(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_135

    goto :goto_13a

    :cond_135
    move/from16 v16, v17

    goto :goto_13c

    :cond_138
    move-object/from16 v3, p5

    :goto_13a
    move/from16 v16, v18

    .line 326
    :goto_13c
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilerFilter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v14, v1}, Lcom/android/server/pm/PackageDexOptimizer;->getRealCompilerFilter(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-static {v1}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_156

    if-eqz v16, :cond_156

    .line 331
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v10

    const/4 v3, 0x3

    if-eq v10, v3, :cond_156

    move/from16 v10, v18

    goto :goto_158

    :cond_156
    move/from16 v10, v17

    .line 334
    :goto_158
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptInstallWithDexMetadata()Z

    move-result v3

    if-nez v3, :cond_163

    if-eqz v10, :cond_161

    goto :goto_163

    :cond_161
    :goto_161
    const/4 v3, 0x0

    goto :goto_173

    .line 335
    :cond_163
    :goto_163
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_16f

    goto :goto_161

    .line 337
    :cond_16f
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 344
    :goto_173
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isCheckForProfileUpdates()Z

    move-result v19

    move/from16 v20, v0

    if-eqz v19, :cond_180

    .line 346
    invoke-virtual {v15, v14, v8, v2, v1}, Lcom/android/server/pm/PackageDexOptimizer;->analyseProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILjava/lang/String;Ljava/lang/String;)I

    move-result v19

    goto :goto_182

    :cond_180
    const/16 v19, 0x2

    :goto_182
    const-string v13, "Failed to cleanup cloud profile"

    if-eqz v10, :cond_1bf

    .line 351
    :try_start_186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v1

    const-string v1, "cloud-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_199
    .catchall {:try_start_186 .. :try_end_199} :catchall_1b7

    .line 352
    :try_start_199
    invoke-virtual {v15, v14, v1, v4, v3}, Lcom/android/server/pm/PackageDexOptimizer;->prepareCloudProfile(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a3

    move-object v2, v1

    move-object/from16 v0, v21

    goto :goto_1aa

    :cond_1a3
    const/16 v0, 0xd

    .line 357
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1a9
    .catchall {:try_start_199 .. :try_end_1a9} :catchall_1b0

    const/4 v2, 0x0

    :goto_1aa
    move-object/from16 v32, v2

    const/16 v33, 0x2

    move-object v2, v1

    goto :goto_1c8

    :catchall_1b0
    move-exception v0

    move-object v3, v0

    move-object v10, v9

    move-object v9, v13

    move-object v2, v15

    goto/16 :goto_334

    :catchall_1b7
    move-exception v0

    move-object v3, v0

    move-object v10, v9

    move-object v9, v13

    move-object v2, v15

    const/4 v1, 0x0

    goto/16 :goto_334

    :cond_1bf
    move-object/from16 v21, v1

    move-object/from16 v32, v2

    move/from16 v33, v19

    move-object/from16 v0, v21

    const/4 v2, 0x0

    :goto_1c8
    move-object/from16 v1, p0

    move-object/from16 v34, v2

    move-object/from16 v2, p1

    move-object/from16 v35, v3

    move-object/from16 v3, p2

    move-object/from16 p3, v4

    move-object v4, v0

    move v15, v5

    move v5, v10

    move-object/from16 v36, v6

    move-object/from16 v6, p6

    .line 371
    :try_start_1db
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ZLcom/android/server/pm/dex/DexoptOptions;)I

    move-result v37

    const/16 v38, 0x0

    .line 376
    array-length v10, v12

    move/from16 v5, v17

    move/from16 v6, v20

    :goto_1e6
    if-ge v5, v10, :cond_2ef

    aget-object v30, v12, v5

    .line 377
    aget-object v19, v36, v15

    .line 379
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isDowngrade()Z

    move-result v20

    .line 380
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v21
    :try_end_1f4
    .catchall {:try_start_1db .. :try_end_1f4} :catchall_32b

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v39, v5

    move-object/from16 v5, v30

    move/from16 v40, v6

    move-object v6, v0

    move-object/from16 v41, v7

    move/from16 v7, v33

    move/from16 v42, v8

    move-object/from16 v8, v19

    move-object/from16 v43, v9

    move/from16 v9, v37

    move/from16 v44, v10

    move/from16 v10, v42

    move-object/from16 v45, v11

    move-object/from16 v11, p4

    move-object/from16 v46, v12

    move/from16 v12, v20

    move-object/from16 v47, v13

    move-object/from16 v13, v32

    move-object/from16 v14, v35

    move/from16 v48, v15

    move/from16 v15, v21

    move/from16 v16, v38

    .line 377
    :try_start_227
    invoke-virtual/range {v1 .. v16}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptPath(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/android/server/pm/CompilerStats$PackageStats;ZLjava/lang/String;Ljava/lang/String;IZ)I

    move-result v6
    :try_end_22b
    .catchall {:try_start_227 .. :try_end_22b} :catchall_2e5

    move-object/from16 v1, p4

    if-eqz v1, :cond_283

    :try_start_22f
    const-string v2, "dex2oat-metrics"

    const-wide/32 v3, 0x40000

    .line 384
    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_237
    .catchall {:try_start_22f .. :try_end_237} :catchall_277

    .line 386
    :try_start_237
    sget-object v2, Lcom/android/server/pm/PackageDexOptimizer;->sRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v20
    :try_end_23d
    .catchall {:try_start_237 .. :try_end_23d} :catchall_26e

    move-object/from16 v2, p0

    .line 387
    :try_start_23f
    iget-object v5, v2, Lcom/android/server/pm/PackageDexOptimizer;->mArtStatsLogger:Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;

    .line 391
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v23

    move-object/from16 v7, p3

    .line 392
    invoke-virtual {v1, v7}, Lcom/android/server/pm/CompilerStats$PackageStats;->getCompileTime(Ljava/lang/String;)J

    move-result-wide v24

    .line 394
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v27

    .line 396
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v8

    .line 397
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v9

    .line 396
    invoke-static {v7, v8, v9}, Lcom/android/server/pm/dex/ArtStatsLogUtils;->getApkType(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v29

    move-object/from16 v19, v5

    move-object/from16 v22, v0

    move-object/from16 v26, v35

    move/from16 v28, v6

    move-object/from16 v31, v7

    .line 387
    invoke-static/range {v19 .. v31}, Lcom/android/server/pm/dex/ArtStatsLogUtils;->writeStatsLog(Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;JLjava/lang/String;IJLjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_268
    .catchall {:try_start_23f .. :try_end_268} :catchall_26c

    .line 401
    :try_start_268
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_287

    :catchall_26c
    move-exception v0

    goto :goto_271

    :catchall_26e
    move-exception v0

    move-object/from16 v2, p0

    :goto_271
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 402
    throw v0
    :try_end_275
    .catchall {:try_start_268 .. :try_end_275} :catchall_275

    :catchall_275
    move-exception v0

    goto :goto_27a

    :catchall_277
    move-exception v0

    move-object/from16 v2, p0

    :goto_27a
    move-object v3, v0

    move-object/from16 v1, v34

    move-object/from16 v10, v43

    move-object/from16 v9, v47

    goto/16 :goto_334

    :cond_283
    move-object/from16 v2, p0

    move-object/from16 v7, p3

    :goto_287
    const/4 v3, 0x2

    if-ne v6, v3, :cond_2bd

    move/from16 v4, v40

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2a6

    move-object/from16 v8, v34

    if-eqz v8, :cond_2a5

    .line 424
    :try_start_293
    iget-object v0, v2, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/android/server/pm/Installer;->deleteReferenceProfile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29c
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_293 .. :try_end_29c} :catch_29d

    goto :goto_2a5

    :catch_29d
    move-exception v0

    move-object/from16 v10, v43

    move-object/from16 v9, v47

    .line 426
    invoke-static {v10, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a5
    :goto_2a5
    return v4

    :cond_2a6
    move-object/from16 v8, v34

    move-object/from16 v10, v43

    move-object/from16 v9, v47

    if-eqz v8, :cond_2bc

    .line 424
    :try_start_2ae
    iget-object v0, v2, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/android/server/pm/Installer;->deleteReferenceProfile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b7
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2ae .. :try_end_2b7} :catch_2b8

    goto :goto_2bc

    :catch_2b8
    move-exception v0

    .line 426
    invoke-static {v10, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2bc
    :goto_2bc
    return v6

    :cond_2bd
    move-object/from16 v8, v34

    move/from16 v4, v40

    move-object/from16 v10, v43

    move-object/from16 v9, v47

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2cb

    if-eqz v6, :cond_2cb

    goto :goto_2cc

    :cond_2cb
    move v6, v4

    :goto_2cc
    add-int/lit8 v4, v39, 0x1

    move-object/from16 v14, p1

    move v5, v4

    move-object/from16 p3, v7

    move-object/from16 v34, v8

    move-object v13, v9

    move-object v9, v10

    move-object/from16 v7, v41

    move/from16 v8, v42

    move/from16 v10, v44

    move-object/from16 v11, v45

    move-object/from16 v12, v46

    move/from16 v15, v48

    goto/16 :goto_1e6

    :catchall_2e5
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v8, v34

    move-object/from16 v10, v43

    move-object/from16 v9, v47

    goto :goto_332

    :cond_2ef
    move-object/from16 v2, p0

    move-object/from16 v1, p4

    move v4, v6

    move-object/from16 v41, v7

    move/from16 v42, v8

    move-object v10, v9

    move-object/from16 v45, v11

    move-object/from16 v46, v12

    move-object v9, v13

    move/from16 v48, v15

    move-object/from16 v8, v34

    const/4 v5, -0x1

    if-eqz v8, :cond_313

    .line 424
    :try_start_305
    iget-object v0, v2, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v8}, Lcom/android/server/pm/Installer;->deleteReferenceProfile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30e
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_305 .. :try_end_30e} :catch_30f

    goto :goto_313

    :catch_30f
    move-exception v0

    .line 426
    invoke-static {v10, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_313
    :goto_313
    move v0, v4

    :goto_314
    move/from16 v3, v48

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v14, p1

    move-object v13, v1

    move-object v15, v2

    move-object v9, v10

    move-object/from16 v6, v36

    move-object/from16 v7, v41

    move/from16 v8, v42

    move-object/from16 v11, v45

    move-object/from16 v12, v46

    move v10, v5

    move v5, v3

    goto/16 :goto_d5

    :catchall_32b
    move-exception v0

    move-object/from16 v2, p0

    move-object v10, v9

    move-object v9, v13

    move-object/from16 v8, v34

    :goto_332
    move-object v3, v0

    move-object v1, v8

    :goto_334
    if-eqz v1, :cond_344

    .line 424
    :try_start_336
    iget-object v0, v2, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/pm/Installer;->deleteReferenceProfile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33f
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_336 .. :try_end_33f} :catch_340

    goto :goto_344

    :catch_340
    move-exception v0

    .line 426
    invoke-static {v10, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    :cond_344
    :goto_344
    throw v3

    :cond_345
    move v3, v5

    move-object/from16 v45, v11

    .line 307
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistent information in the package structure. A split is marked to contain code but has no dependency listed. Index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v45

    .line 309
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36f
    move/from16 v20, v0

    return v20
.end method

.method public final prepareCloudProfile(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_2c

    .line 446
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/pm/Installer;->deleteReferenceProfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 449
    iget-object v2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x2710

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/Installer;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_22
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3 .. :try_end_22} :catch_24

    const/4 p0, 0x1

    return p0

    :catch_24
    move-exception p0

    const-string p1, "PackageDexOptimizer"

    const-string p2, "Failed to prepare cloud profile"

    .line 453
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2c
    return v0
.end method

.method public final printDexoptFlags(I)Ljava/lang/String;
    .registers 4

    .line 1083
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_10

    const-string v0, "boot_complete"

    .line 1086
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    const-string v0, "debuggable"

    .line 1089
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_26

    const-string/jumbo v0, "profile_guided"

    .line 1092
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_31

    const-string/jumbo v0, "public"

    .line 1095
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3d

    const-string/jumbo v0, "secondary"

    .line 1098
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3d
    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_48

    const-string v0, "force"

    .line 1101
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_48
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_54

    const-string/jumbo v0, "storage_ce"

    .line 1104
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_54
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_60

    const-string/jumbo v0, "storage_de"

    .line 1107
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_60
    and-int/lit16 v0, p1, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_6c

    const-string/jumbo v0, "idle_background_job"

    .line 1110
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6c
    const/16 v0, 0x400

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_76

    const-string p1, "enable_hidden_api_checks"

    .line 1113
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_76
    const-string p1, ","

    .line 1116
    invoke-static {p1, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final releaseWakeLockLI(J)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation

    const-string v0, "PackageDexOptimizer"

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_9

    return-void

    .line 661
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 662
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 664
    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, p1

    const-wide/32 p1, 0xa1220

    cmp-long p1, v1, p1

    if-ltz p1, :cond_75

    .line 666
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "WakeLock "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " time out. Operation took "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " ms. Thread: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 666
    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_54} :catch_55

    goto :goto_75

    :catch_55
    move-exception p1

    .line 671
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while releasing "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " lock"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_75
    :goto_75
    return-void
.end method

.method public systemReady()V
    .registers 2

    const/4 v0, 0x1

    .line 1079
    iput-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    return-void
.end method
