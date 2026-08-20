.class Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$SessionStateHandler;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CameraAdvancedExtensionSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionStateHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)V
    .registers 2

    .line 498
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$SessionStateHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$SessionStateHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$SessionStateHandler;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)V

    return-void
.end method


# virtual methods
.method public whitelist onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 502
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$SessionStateHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->release(Z)V

    .line 503
    return-void
.end method

.method public whitelist onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 507
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$SessionStateHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$mnotifyConfigurationFailure(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)V

    .line 508
    return-void
.end method

.method public whitelist onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 6
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 512
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$SessionStateHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 513
    :try_start_5
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$SessionStateHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v1, p1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fputmCaptureSession(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/CameraCaptureSession;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_23

    .line 515
    :try_start_a
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$SessionStateHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmInitializeHandler(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeSession(Landroid/hardware/camera2/extension/IInitializeSessionCallback;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14
    .catchall {:try_start_a .. :try_end_13} :catchall_23

    .line 520
    goto :goto_21

    .line 516
    :catch_14
    move-exception v1

    .line 517
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_15
    const-string v2, "CameraAdvancedExtensionSessionImpl"

    const-string v3, "Failed to initialize session! Extension service does not respond!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$SessionStateHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$mnotifyConfigurationFailure(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)V

    .line 521
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_21
    monitor-exit v0

    .line 522
    return-void

    .line 521
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_23

    throw v1
.end method
