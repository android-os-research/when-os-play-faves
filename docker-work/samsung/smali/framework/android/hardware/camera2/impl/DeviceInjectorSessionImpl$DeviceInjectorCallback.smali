.class public Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorCallback;
.super Landroid/hardware/IDeviceInjectorCallback$Stub;
.source "DeviceInjectorSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceInjectorCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    .line 358
    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorCallback;->this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    invoke-direct {p0}, Landroid/hardware/IDeviceInjectorCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 362
    return-object p0
.end method

.method public blacklist onError(I)V
    .registers 3
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 398
    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorCallback;->this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    invoke-static {v0, p1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->-$$Nest$monInjectionError(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;I)V

    .line 399
    return-void
.end method

.method public blacklist onInjectionPendingStarted(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 386
    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorCallback;->this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    invoke-static {v0, p1, p2}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->-$$Nest$monInjectionPendingStarted(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public blacklist onInjectionPendingStopped(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 392
    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorCallback;->this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    invoke-static {v0, p1, p2}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->-$$Nest$monInjectionPendingStopped(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public blacklist onInjectionStarted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "sourceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 374
    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorCallback;->this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    invoke-static {v0, p1, p2, p3}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->-$$Nest$monInjectionStarted(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public blacklist onInjectionStopped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "sourceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 380
    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorCallback;->this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    invoke-static {v0, p1, p2, p3}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->-$$Nest$monInjectionStopped(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public blacklist onSessionCreated(Landroid/hardware/IDeviceInjectorSession;)V
    .registers 3
    .param p1, "deviceInjectorSession"    # Landroid/hardware/IDeviceInjectorSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 368
    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorCallback;->this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    invoke-static {v0, p1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->-$$Nest$msetRemoteInjectorSession(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Landroid/hardware/IDeviceInjectorSession;)V

    .line 369
    return-void
.end method
