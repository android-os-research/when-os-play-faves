.class Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;
.super Landroid/hardware/camera2/extension/IInitializeSessionCallback$Stub;
.source "CameraAdvancedExtensionSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitializeSessionHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)V
    .registers 2

    .line 525
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/extension/IInitializeSessionCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onSuccess$0$android-hardware-camera2-impl-CameraAdvancedExtensionSessionImpl$InitializeSessionHandler()V
    .registers 3

    .line 545
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmCallbacks(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraExtensionSession$StateCallback;->onConfigured(Landroid/hardware/camera2/CameraExtensionSession;)V

    return-void
.end method

.method public blacklist onFailure()V
    .registers 3

    .line 556
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmCaptureSession(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 557
    const-string v0, "CameraAdvancedExtensionSessionImpl"

    const-string v1, "Failed to initialize proxy service session! This can happen when trying to configure multiple concurrent extension sessions!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$mnotifyConfigurationFailure(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)V

    .line 561
    return-void
.end method

.method public blacklist onSuccess()V
    .registers 6

    .line 528
    const/4 v0, 0x1

    .line 529
    .local v0, "status":Z
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    iget-object v1, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 531
    :try_start_6
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmSessionProcessor(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmRequestProcessor(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->onCaptureSessionStart(Landroid/hardware/camera2/extension/IRequestProcessorImpl;)V

    .line 532
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fputmInitialized(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Z)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1b} :catch_1e
    .catchall {:try_start_6 .. :try_end_1b} :catchall_1c

    .line 538
    goto :goto_30

    .line 539
    :catchall_1c
    move-exception v2

    goto :goto_55

    .line 533
    :catch_1e
    move-exception v2

    .line 534
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1f
    const-string v3, "CameraAdvancedExtensionSessionImpl"

    const-string v4, "Failed to start capture session, extension service does not respond!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/4 v0, 0x0

    .line 537
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmCaptureSession(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 539
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_1c

    .line 541
    if-eqz v0, :cond_4f

    .line 542
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 544
    .local v1, "ident":J
    :try_start_37
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmExecutor(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_45
    .catchall {:try_start_37 .. :try_end_45} :catchall_4a

    .line 547
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 548
    nop

    .line 549
    .end local v1    # "ident":J
    goto :goto_54

    .line 547
    .restart local v1    # "ident":J
    :catchall_4a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 548
    throw v3

    .line 550
    .end local v1    # "ident":J
    :cond_4f
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$mnotifyConfigurationFailure(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)V

    .line 552
    :goto_54
    return-void

    .line 539
    :goto_55
    :try_start_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_1c

    throw v2
.end method
