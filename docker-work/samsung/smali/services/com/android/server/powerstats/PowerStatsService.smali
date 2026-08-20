.class public Lcom/android/server/powerstats/PowerStatsService;
.super Lcom/android/server/SystemService;
.source "PowerStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/powerstats/PowerStatsService$LocalService;,
        Lcom/android/server/powerstats/PowerStatsService$BinderService;,
        Lcom/android/server/powerstats/PowerStatsService$Injector;
    }
.end annotation


# static fields
.field public static final DATA_STORAGE_SUBDIR:Ljava/lang/String; = "powerstats"

.field public static final DATA_STORAGE_VERSION:I = 0x0

.field public static final DEBUG:Z = false

.field public static final METER_CACHE_FILENAME:Ljava/lang/String; = "meterCache"

.field public static final METER_FILENAME:Ljava/lang/String; = "log.powerstats.meter.0"

.field public static final MODEL_CACHE_FILENAME:Ljava/lang/String; = "modelCache"

.field public static final MODEL_FILENAME:Ljava/lang/String; = "log.powerstats.model.0"

.field public static final RESIDENCY_CACHE_FILENAME:Ljava/lang/String; = "residencyCache"

.field public static final RESIDENCY_FILENAME:Ljava/lang/String; = "log.powerstats.residency.0"

.field public static final TAG:Ljava/lang/String; = "PowerStatsService"


# instance fields
.field public mBatteryTrigger:Lcom/android/server/powerstats/BatteryTrigger;

.field public mContext:Landroid/content/Context;

.field public mDataStoragePath:Ljava/io/File;

.field public final mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

.field public mLooper:Landroid/os/Looper;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mPowerStatsInternal:Landroid/power/PowerStatsInternal;

.field public mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

.field public mPullAtomCallback:Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;

.field public mTimerTrigger:Lcom/android/server/powerstats/TimerTrigger;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/powerstats/PowerStatsService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerStatsLogger(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsLogger;
    .registers 1

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetEnergyConsumedAsync(Lcom/android/server/powerstats/PowerStatsService;Ljava/util/concurrent/CompletableFuture;[I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/powerstats/PowerStatsService;->getEnergyConsumedAsync(Ljava/util/concurrent/CompletableFuture;[I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetLooper(Lcom/android/server/powerstats/PowerStatsService;)Landroid/os/Looper;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetPowerStatsHal(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetStateResidencyAsync(Lcom/android/server/powerstats/PowerStatsService;Ljava/util/concurrent/CompletableFuture;[I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/powerstats/PowerStatsService;->getStateResidencyAsync(Ljava/util/concurrent/CompletableFuture;[I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreadEnergyMeterAsync(Lcom/android/server/powerstats/PowerStatsService;Ljava/util/concurrent/CompletableFuture;[I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/powerstats/PowerStatsService;->readEnergyMeterAsync(Ljava/util/concurrent/CompletableFuture;[I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/powerstats/PowerStatsService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 264
    new-instance v0, Lcom/android/server/powerstats/PowerStatsService$Injector;

    invoke-direct {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/powerstats/PowerStatsService;-><init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsService$Injector;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 269
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 270
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    .line 271
    iput-object p2, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    return-void
.end method


# virtual methods
.method public getDeleteMeterDataOnBoot()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 217
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsLogger;->getDeleteMeterDataOnBoot()Z

    move-result p0

    return p0
.end method

.method public getDeleteModelDataOnBoot()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 222
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsLogger;->getDeleteModelDataOnBoot()Z

    move-result p0

    return p0
.end method

.method public getDeleteResidencyDataOnBoot()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 227
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsLogger;->getDeleteResidencyDataOnBoot()Z

    move-result p0

    return p0
.end method

.method public final getEnergyConsumedAsync(Ljava/util/concurrent/CompletableFuture;[I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Landroid/hardware/power/stats/EnergyConsumerResult;",
            ">;[I)V"
        }
    .end annotation

    .line 330
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getLooper()Landroid/os/Looper;
    .registers 3

    .line 253
    monitor-enter p0

    .line 254
    :try_start_1
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_15

    .line 255
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/android/server/powerstats/PowerStatsService;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 257
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 259
    :cond_15
    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v0

    .line 260
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public final getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;
    .registers 1

    .line 249
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->getPowerStatsHALWrapperImpl()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final getStateResidencyAsync(Ljava/util/concurrent/CompletableFuture;[I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Landroid/hardware/power/stats/StateResidencyResult;",
            ">;[I)V"
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onBootCompleted()V
    .registers 13

    .line 231
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 233
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createDataStoragePath()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mDataStoragePath:Ljava/io/File;

    .line 236
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/powerstats/PowerStatsService;->mDataStoragePath:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    .line 237
    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createMeterFilename()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    .line 238
    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createMeterCacheFilename()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createModelFilename()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    .line 239
    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createModelCacheFilename()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createResidencyFilename()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    .line 240
    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createResidencyCacheFilename()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v11

    .line 236
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createPowerStatsLogger(Landroid/content/Context;Landroid/os/Looper;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;)Lcom/android/server/powerstats/PowerStatsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    .line 241
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createBatteryTrigger(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)Lcom/android/server/powerstats/BatteryTrigger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mBatteryTrigger:Lcom/android/server/powerstats/BatteryTrigger;

    .line 242
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createTimerTrigger(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)Lcom/android/server/powerstats/TimerTrigger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mTimerTrigger:Lcom/android/server/powerstats/TimerTrigger;

    goto :goto_68

    .line 244
    :cond_61
    sget-object p0, Lcom/android/server/powerstats/PowerStatsService;->TAG:Ljava/lang/String;

    const-string v0, "Failed to start PowerStatsService loggers"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_68
    return-void
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_8

    .line 196
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->onSystemServicesReady()V

    goto :goto_f

    :cond_8
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_f

    .line 198
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->onBootCompleted()V

    :cond_f
    :goto_f
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 204
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 205
    new-instance v0, Lcom/android/server/powerstats/PowerStatsService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/powerstats/PowerStatsService$LocalService;-><init>(Lcom/android/server/powerstats/PowerStatsService;)V

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    .line 206
    const-class v1, Landroid/power/PowerStatsInternal;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 208
    :cond_16
    new-instance v0, Lcom/android/server/powerstats/PowerStatsService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/powerstats/PowerStatsService$BinderService;-><init>(Lcom/android/server/powerstats/PowerStatsService;Lcom/android/server/powerstats/PowerStatsService$BinderService-IA;)V

    const-string/jumbo v1, "powerstats"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final onSystemServicesReady()V
    .registers 4

    .line 212
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createStatsPullerImpl(Landroid/content/Context;Landroid/power/PowerStatsInternal;)Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPullAtomCallback:Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;

    return-void
.end method

.method public final readEnergyMeterAsync(Ljava/util/concurrent/CompletableFuture;[I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Landroid/hardware/power/stats/EnergyMeasurement;",
            ">;[I)V"
        }
    .end annotation

    .line 340
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->readEnergyMeter([I)[Landroid/hardware/power/stats/EnergyMeasurement;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
