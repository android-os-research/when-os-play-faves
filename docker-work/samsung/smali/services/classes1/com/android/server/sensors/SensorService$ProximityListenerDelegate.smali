.class public Lcom/android/server/sensors/SensorService$ProximityListenerDelegate;
.super Ljava/lang/Object;
.source "SensorService.java"

# interfaces
.implements Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sensors/SensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProximityListenerDelegate"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sensors/SensorService;


# direct methods
.method public constructor <init>(Lcom/android/server/sensors/SensorService;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/android/server/sensors/SensorService$ProximityListenerDelegate;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/sensors/SensorService;Lcom/android/server/sensors/SensorService$ProximityListenerDelegate-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/sensors/SensorService$ProximityListenerDelegate;-><init>(Lcom/android/server/sensors/SensorService;)V

    return-void
.end method


# virtual methods
.method public onProximityActive(Z)V
    .registers 5

    .line 143
    iget-object v0, p0, Lcom/android/server/sensors/SensorService$ProximityListenerDelegate;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v0}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmLock(Lcom/android/server/sensors/SensorService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 144
    :try_start_7
    iget-object p0, p0, Lcom/android/server/sensors/SensorService$ProximityListenerDelegate;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {p0}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmProximityListeners(Lcom/android/server/sensors/SensorService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/android/server/sensors/SensorService$ProximityListenerProxy;

    invoke-interface {p0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/server/sensors/SensorService$ProximityListenerProxy;

    .line 145
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_27

    .line 146
    array-length v0, p0

    :goto_1c
    if-ge v1, v0, :cond_26

    aget-object v2, p0, v1

    .line 147
    invoke-virtual {v2, p1}, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;->onProximityActive(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_26
    return-void

    :catchall_27
    move-exception p0

    .line 145
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p0
.end method
