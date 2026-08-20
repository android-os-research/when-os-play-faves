.class public Lcom/android/server/pm/OtaDexoptService;
.super Landroid/content/pm/IOtaDexopt$Stub;
.source "OtaDexoptService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;
    }
.end annotation


# static fields
.field public static final BULK_DELETE_THRESHOLD:J = 0x40000000L

.field public static final DEBUG_DEXOPT:Z = true

.field public static final TAG:Ljava/lang/String; = "OTADexopt"


# instance fields
.field public availableSpaceAfterBulkDelete:J

.field public availableSpaceAfterDexopt:J

.field public availableSpaceBefore:J

.field public completeSize:I

.field public dexoptCommandCountExecuted:I

.field public dexoptCommandCountTotal:I

.field public importantPackageCount:I

.field public final mContext:Landroid/content/Context;

.field public mDexoptCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field public final metricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public otaDexoptTimeStart:J

.field public otherPackageCount:I


# direct methods
.method public static synthetic $r8$lambda$Fia3gHi9GF8Zhk_Q6twL-iJdqvw(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/OtaDexoptService;->lambda$prepare$0(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kVT16uUu7PUfM5w_HVAMYw4Y-sY(Lcom/android/server/pm/pkg/PackageStateInternal;)J
    .registers 3

    invoke-static {p0}, Lcom/android/server/pm/OtaDexoptService;->lambda$prepare$1(Lcom/android/server/pm/pkg/PackageStateInternal;)J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V
    .registers 3

    .line 100
    invoke-direct {p0}, Landroid/content/pm/IOtaDexopt$Stub;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 103
    new-instance p1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-void
.end method

.method public static inMegabytes(J)I
    .registers 4

    const-wide/32 v0, 0x100000

    .line 454
    div-long/2addr p0, v0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_2a

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recording "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "MB of free space, overflowing range"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OTADexopt"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const p0, 0x7fffffff

    return p0

    :cond_2a
    long-to-int p0, p0

    return p0
.end method

.method public static synthetic lambda$prepare$0(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 2

    .line 132
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$prepare$1(Lcom/android/server/pm/pkg/PackageStateInternal;)J
    .registers 3

    .line 180
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p0

    .line 181
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v0

    return-wide v0
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    .registers 3

    .line 108
    new-instance v0, Lcom/android/server/pm/OtaDexoptService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/OtaDexoptService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V

    const-string/jumbo p0, "otadexopt"

    .line 109
    invoke-static {p0, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 112
    iget-object p0, p1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/OtaDexoptService;->moveAbArtifacts(Lcom/android/server/pm/Installer;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized cleanup()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "OTADexopt"

    const-string v1, "Cleaning up OTA Dexopt state."

    .line 198
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 201
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterDexopt:J

    .line 203
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptService;->performMetricsLogging()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 204
    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized dexoptNextPackage()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 367
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized generatePackageDexopts(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;I)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 283
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    new-instance v1, Lcom/android/server/pm/OtaDexoptService$1;

    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/server/pm/OtaDexoptService$1;-><init>(Lcom/android/server/pm/OtaDexoptService;Landroid/content/Context;ZLjava/util/List;)V

    .line 351
    new-instance v4, Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;

    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;-><init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 354
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 357
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v1

    .line 358
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 357
    invoke-virtual {v1, v2}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v9

    new-instance v10, Lcom/android/server/pm/dex/DexoptOptions;

    .line 359
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v10, v1, p3, v2}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    move-object v5, p1

    move-object v6, p2

    .line 354
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOpt(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3a

    .line 362
    monitor-exit p0

    return-object v0

    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getAvailableSpace()J
    .registers 5

    .line 269
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptService;->getMainLowSpaceThreshold()J

    move-result-wide v0

    .line 271
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p0

    .line 272
    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public final getMainLowSpaceThreshold()J
    .registers 5

    .line 253
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 255
    iget-object p0, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_15

    return-wide v0

    .line 257
    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid low memory threshold"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized getProgress()F
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 218
    :try_start_1
    iget v0, p0, Lcom/android/server/pm/OtaDexoptService;->completeSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    if-nez v0, :cond_9

    const/high16 v0, 0x3f800000    # 1.0f

    .line 219
    monitor-exit p0

    return v0

    .line 221
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 222
    iget v1, p0, Lcom/android/server/pm/OtaDexoptService;->completeSize:I
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_18

    sub-int v0, v1, v0

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 208
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 212
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_13

    monitor-exit p0

    return v0

    .line 209
    :cond_b
    :try_start_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "done() called before prepare()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_13

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final moveAbArtifacts(Lcom/android/server/pm/Installer;)V
    .registers 18

    move-object/from16 v0, p0

    .line 371
    iget-object v1, v0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    if-nez v1, :cond_10e

    .line 375
    iget-object v1, v0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v1

    const-string v2, "OTADexopt"

    if-nez v1, :cond_16

    const-string v0, "No upgrade, skipping A/B artifacts check."

    .line 376
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 381
    :cond_16
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 382
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1}, Landroid/content/pm/PackageManagerInternal;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 385
    :goto_25
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v4, v7, :cond_f1

    .line 386
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 387
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v8

    if-nez v8, :cond_39

    goto/16 :goto_e9

    .line 393
    :cond_39
    iget-object v9, v0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    invoke-virtual {v9, v8}, Lcom/android/server/pm/PackageDexOptimizer;->canOptimizePackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v9

    if-nez v9, :cond_45

    goto/16 :goto_e9

    .line 396
    :cond_45
    invoke-interface {v8}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_66

    .line 397
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " can be optimized but has null codePath"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e9

    .line 403
    :cond_66
    invoke-interface {v8}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/system"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e9

    .line 404
    invoke-interface {v8}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/vendor"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e9

    .line 405
    invoke-interface {v8}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/product"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e9

    .line 406
    invoke-interface {v8}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/system_ext"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_97

    goto :goto_e9

    .line 411
    :cond_97
    invoke-static {v8, v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v9

    .line 412
    invoke-static {v8, v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v7

    .line 410
    invoke-static {v9, v7}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 414
    invoke-static {v8}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePathsExcludingResourceOnly(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v9

    .line 415
    invoke-static {v7}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 416
    invoke-interface {v8}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 417
    array-length v11, v7

    const/4 v12, 0x0

    :goto_b1
    if-ge v12, v11, :cond_e9

    aget-object v13, v7, v12

    .line 418
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_b9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 419
    new-instance v3, Ljava/io/File;

    .line 420
    invoke-interface {v8}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 419
    invoke-static {v3}, Lcom/android/server/pm/PackageDexOptimizer;->getOatDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, p1

    .line 426
    :try_start_da
    invoke-virtual {v3, v10, v15, v13, v0}, Lcom/android/server/pm/Installer;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_dd
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_da .. :try_end_dd} :catch_df

    add-int/lit8 v5, v5, 0x1

    :catch_df
    move-object/from16 v0, p0

    goto :goto_b9

    :cond_e2
    move-object/from16 v3, p1

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto :goto_b1

    :cond_e9
    :goto_e9
    move-object/from16 v3, p1

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_25

    .line 433
    :cond_f1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Moved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 372
    :cond_10e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not be ota-dexopting when trying to move."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized nextDexoptCommand()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 227
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    if-eqz v0, :cond_6c

    .line 231
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "(all done)"
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_74

    .line 232
    monitor-exit p0

    return-object v0

    .line 235
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 237
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_40

    .line 238
    iget v1, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I

    const-string v1, "OTADexopt"

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Next command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_f .. :try_end_3e} :catchall_74

    .line 241
    monitor-exit p0

    return-object v0

    :cond_40
    :try_start_40
    const-string v0, "OTADexopt"

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough space for OTA dexopt, stopping with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 245
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " commands left."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "(no free space)"
    :try_end_6a
    .catchall {:try_start_40 .. :try_end_6a} :catchall_74

    .line 248
    monitor-exit p0

    return-object v0

    .line 228
    :cond_6c
    :try_start_6c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dexoptNextPackage() called before prepare()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_74
    .catchall {:try_start_6c .. :try_end_74} :catchall_74

    :catchall_74
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 120
    new-instance v0, Lcom/android/server/pm/OtaDexoptShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/pm/OtaDexoptShellCommand;-><init>(Lcom/android/server/pm/OtaDexoptService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final performMetricsLogging()V
    .registers 6

    .line 463
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 465
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-wide v3, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceBefore:J

    .line 466
    invoke-static {v3, v4}, Lcom/android/server/pm/OtaDexoptService;->inMegabytes(J)I

    move-result v3

    const-string/jumbo v4, "ota_dexopt_available_space_before_mb"

    .line 465
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 467
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-wide v3, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterBulkDelete:J

    .line 468
    invoke-static {v3, v4}, Lcom/android/server/pm/OtaDexoptService;->inMegabytes(J)I

    move-result v3

    const-string/jumbo v4, "ota_dexopt_available_space_after_bulk_delete_mb"

    .line 467
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 469
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-wide v3, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterDexopt:J

    .line 470
    invoke-static {v3, v4}, Lcom/android/server/pm/OtaDexoptService;->inMegabytes(J)I

    move-result v3

    const-string/jumbo v4, "ota_dexopt_available_space_after_dexopt_mb"

    .line 469
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 472
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget v3, p0, Lcom/android/server/pm/OtaDexoptService;->importantPackageCount:I

    const-string/jumbo v4, "ota_dexopt_num_important_packages"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 473
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget v3, p0, Lcom/android/server/pm/OtaDexoptService;->otherPackageCount:I

    const-string/jumbo v4, "ota_dexopt_num_other_packages"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 475
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget v3, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountTotal:I

    const-string/jumbo v4, "ota_dexopt_num_commands"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 476
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget v3, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I

    const-string/jumbo v4, "ota_dexopt_num_commands_executed"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 478
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Lcom/android/server/pm/OtaDexoptService;->otaDexoptTimeStart:J

    sub-long/2addr v0, v3

    .line 479
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 480
    iget-object p0, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v1, "ota_dexopt_time_s"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    return-void
.end method

.method public declared-synchronized prepare()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 126
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    if-nez v0, :cond_15a

    .line 131
    new-instance v0, Lcom/android/server/pm/OtaDexoptService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/OtaDexoptService$$ExternalSyntheticLambda0;-><init>()V

    .line 134
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 136
    invoke-interface {v1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 137
    iget-object v3, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/server/pm/DexOptHelper;->getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;Z)Ljava/util/List;

    move-result-object v3

    .line 140
    invoke-interface {v3, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 142
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 143
    invoke-interface {v4, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 144
    sget-object v5, Lcom/android/server/pm/PackageManagerServiceUtils;->REMOVE_IF_NULL_PKG:Ljava/util/function/Predicate;

    invoke-interface {v4, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 145
    invoke-interface {v4, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 150
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 151
    iget-object v5, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {p0, v6, v2, v7}, Lcom/android/server/pm/OtaDexoptService;->generatePackageDexopts(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_45

    .line 154
    :cond_61
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_65
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 156
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isCoreApp()Z

    move-result v5

    if-nez v5, :cond_8a

    .line 159
    iget-object v5, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v2, v7}, Lcom/android/server/pm/OtaDexoptService;->generatePackageDexopts(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_65

    .line 157
    :cond_8a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Found a core app that\'s not important"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_92
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/OtaDexoptService;->completeSize:I

    .line 164
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    move-result-wide v8

    const-wide/32 v5, 0x40000000

    cmp-long v0, v8, v5

    if-gez v0, :cond_d9

    const-string v0, "OTADexopt"

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Low on space, deleting oat files in an attempt to free up space: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-static {v4}, Lcom/android/server/pm/DexOptHelper;->packagesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 169
    iget-object v5, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lcom/android/server/pm/PackageManagerService;->deleteOatArtifactsOfPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;)J

    goto :goto_c3

    .line 172
    :cond_d9
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    move-result-wide v10

    .line 174
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/pm/OtaDexoptService;->prepareMetricsLogging(IIJJ)V
    :try_end_e9
    .catchall {:try_start_1 .. :try_end_e9} :catchall_162

    .line 179
    :try_start_e9
    new-instance v0, Lcom/android/server/pm/OtaDexoptService$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/pm/OtaDexoptService$$ExternalSyntheticLambda1;-><init>()V

    .line 180
    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    .line 179
    invoke-static {v3, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageStateInternal;

    const-string v1, "OTADexopt"

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A/B OTA: lastUsed time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OTADexopt"

    const-string v1, "A/B OTA: deprioritized packages:"

    .line 184
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_121
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_158

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    const-string v2, "OTADexopt"

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_157} :catch_158
    .catchall {:try_start_e9 .. :try_end_157} :catchall_162

    goto :goto_121

    .line 193
    :catch_158
    :cond_158
    monitor-exit p0

    return-void

    .line 127
    :cond_15a
    :try_start_15a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already called prepare()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_162
    .catchall {:try_start_15a .. :try_end_162} :catchall_162

    :catchall_162
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final prepareMetricsLogging(IIJJ)V
    .registers 7

    .line 440
    iput-wide p3, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceBefore:J

    .line 441
    iput-wide p5, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterBulkDelete:J

    const-wide/16 p3, 0x0

    .line 442
    iput-wide p3, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterDexopt:J

    .line 444
    iput p1, p0, Lcom/android/server/pm/OtaDexoptService;->importantPackageCount:I

    .line 445
    iput p2, p0, Lcom/android/server/pm/OtaDexoptService;->otherPackageCount:I

    .line 447
    iget-object p1, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountTotal:I

    const/4 p1, 0x0

    .line 448
    iput p1, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I

    .line 450
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/pm/OtaDexoptService;->otaDexoptTimeStart:J

    return-void
.end method
