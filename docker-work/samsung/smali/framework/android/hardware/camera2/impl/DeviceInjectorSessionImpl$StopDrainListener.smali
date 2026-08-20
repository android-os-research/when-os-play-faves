.class Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener;
.super Ljava/lang/Object;
.source "DeviceInjectorSessionImpl.java"

# interfaces
.implements Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopDrainListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)V
    .registers 2

    .line 70
    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener;->this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onDrained$0$android-hardware-camera2-impl-DeviceInjectorSessionImpl$StopDrainListener()V
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener;->this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->-$$Nest$fgetmStatusCallback(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;->onClose()V

    return-void
.end method

.method public blacklist onDrained()V
    .registers 4

    .line 74
    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener;->this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->-$$Nest$fgetmInterfaceLock(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 75
    :try_start_7
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener;->this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->-$$Nest$fputmInjectorSession(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Landroid/hardware/IDeviceInjectorSession;)V

    .line 76
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener;->this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->-$$Nest$fgetmExecutor(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 77
    monitor-exit v0

    .line 78
    return-void

    .line 77
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v1
.end method
