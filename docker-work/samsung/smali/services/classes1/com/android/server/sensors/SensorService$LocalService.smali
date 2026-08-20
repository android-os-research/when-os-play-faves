.class public Lcom/android/server/sensors/SensorService$LocalService;
.super Lcom/android/server/sensors/SensorManagerInternal;
.source "SensorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sensors/SensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sensors/SensorService;


# direct methods
.method public constructor <init>(Lcom/android/server/sensors/SensorService;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-direct {p0}, Lcom/android/server/sensors/SensorManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public addProximityActiveListener(Ljava/util/concurrent/Executor;Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)V
    .registers 5

    const-string v0, "executor must not be null"

    .line 90
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "listener must not be null"

    .line 91
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    new-instance v0, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;

    invoke-direct {v0, p1, p2}, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;-><init>(Ljava/util/concurrent/Executor;Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)V

    .line 93
    iget-object p1, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {p1}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmLock(Lcom/android/server/sensors/SensorService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 94
    :try_start_17
    iget-object v1, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v1}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmProximityListeners(Lcom/android/server/sensors/SensorService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 97
    iget-object v1, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v1}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmProximityListeners(Lcom/android/server/sensors/SensorService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object p2, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {p2}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmProximityListeners(Lcom/android/server/sensors/SensorService;)Landroid/util/ArrayMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_42

    .line 99
    iget-object p0, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {p0}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmPtr(Lcom/android/server/sensors/SensorService;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/sensors/SensorService;->-$$Nest$smregisterProximityActiveListenerNative(J)V

    .line 101
    :cond_42
    monitor-exit p1

    return-void

    .line 95
    :cond_44
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "listener already registered"

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_4d
    move-exception p0

    .line 101
    monitor-exit p1
    :try_end_4f
    .catchall {:try_start_17 .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public removeProximityActiveListener(Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)V
    .registers 4

    const-string/jumbo v0, "listener must not be null"

    .line 106
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v0}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmLock(Lcom/android/server/sensors/SensorService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 108
    :try_start_d
    iget-object v1, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v1}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmProximityListeners(Lcom/android/server/sensors/SensorService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;

    if-eqz p1, :cond_32

    .line 113
    iget-object p1, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {p1}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmProximityListeners(Lcom/android/server/sensors/SensorService;)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 114
    iget-object p0, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {p0}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmPtr(Lcom/android/server/sensors/SensorService;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/android/server/sensors/SensorService;->-$$Nest$smunregisterProximityActiveListenerNative(J)V

    .line 116
    :cond_30
    monitor-exit v0

    return-void

    .line 110
    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "listener was not registered with sensor service"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_3b
    move-exception p0

    .line 116
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_d .. :try_end_3d} :catchall_3b

    throw p0
.end method
