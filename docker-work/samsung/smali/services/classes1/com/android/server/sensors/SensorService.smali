.class public Lcom/android/server/sensors/SensorService;
.super Lcom/android/server/SystemService;
.source "SensorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sensors/SensorService$ProximityListenerDelegate;,
        Lcom/android/server/sensors/SensorService$ProximityListenerProxy;,
        Lcom/android/server/sensors/SensorService$LocalService;
    }
.end annotation


# static fields
.field public static final START_NATIVE_SENSOR_SERVICE:Ljava/lang/String; = "StartNativeSensorService"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mProximityListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;",
            "Lcom/android/server/sensors/SensorService$ProximityListenerProxy;",
            ">;"
        }
    .end annotation
.end field

.field public mPtr:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mSensorServiceStart:Ljava/util/concurrent/Future;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$xFG5m9xEpYKLBJuh369PohHMN8I(Lcom/android/server/sensors/SensorService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/sensors/SensorService;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/sensors/SensorService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProximityListeners(Lcom/android/server/sensors/SensorService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sensors/SensorService;->mProximityListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPtr(Lcom/android/server/sensors/SensorService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/sensors/SensorService;->mPtr:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smregisterProximityActiveListenerNative(J)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/sensors/SensorService;->registerProximityActiveListenerNative(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smunregisterProximityActiveListenerNative(J)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/sensors/SensorService;->unregisterProximityActiveListenerNative(J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    .line 39
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensors/SensorService;->mProximityListeners:Landroid/util/ArrayMap;

    .line 57
    monitor-enter p1

    .line 58
    :try_start_12
    new-instance v0, Lcom/android/server/sensors/SensorService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/sensors/SensorService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sensors/SensorService;)V

    const-string v1, "StartNativeSensorService"

    invoke-static {v0, v1}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sensors/SensorService;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 67
    monitor-exit p1

    return-void

    :catchall_21
    move-exception p0

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_21

    throw p0
.end method

.method private synthetic lambda$new$0()V
    .registers 5

    .line 59
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    const-string v1, "StartNativeSensorService"

    .line 60
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 61
    new-instance v1, Lcom/android/server/sensors/SensorService$ProximityListenerDelegate;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/sensors/SensorService$ProximityListenerDelegate;-><init>(Lcom/android/server/sensors/SensorService;Lcom/android/server/sensors/SensorService$ProximityListenerDelegate-IA;)V

    invoke-static {v1}, Lcom/android/server/sensors/SensorService;->startSensorServiceNative(Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)J

    move-result-wide v1

    .line 62
    iget-object v3, p0, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 63
    :try_start_16
    iput-wide v1, p0, Lcom/android/server/sensors/SensorService;->mPtr:J

    .line 64
    monitor-exit v3
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1d

    .line 65
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catchall_1d
    move-exception p0

    .line 64
    :try_start_1e
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method private static native registerProximityActiveListenerNative(J)V
.end method

.method private static native startSensorServiceNative(Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)J
.end method

.method private static native unregisterProximityActiveListenerNative(J)V
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_16

    .line 78
    iget-object p1, p0, Lcom/android/server/sensors/SensorService;->mSensorServiceStart:Ljava/util/concurrent/Future;

    const-string v0, "StartNativeSensorService"

    invoke-static {p1, v0}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    iget-object p1, p0, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    .line 81
    :try_start_f
    iput-object v0, p0, Lcom/android/server/sensors/SensorService;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 82
    monitor-exit p1

    goto :goto_16

    :catchall_13
    move-exception p0

    monitor-exit p1
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    throw p0

    :cond_16
    :goto_16
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 72
    const-class v0, Lcom/android/server/sensors/SensorManagerInternal;

    new-instance v1, Lcom/android/server/sensors/SensorService$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/sensors/SensorService$LocalService;-><init>(Lcom/android/server/sensors/SensorService;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
