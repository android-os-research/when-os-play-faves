.class final Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraAdvancedExtensionSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CaptureCallbackHandler"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/hardware/camera2/extension/IRequestCallback;

.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/extension/IRequestCallback;)V
    .registers 3
    .param p2, "callback"    # Landroid/hardware/camera2/extension/IRequestCallback;

    .line 664
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 665
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;->mCallback:Landroid/hardware/camera2/extension/IRequestCallback;

    .line 666
    return-void
.end method


# virtual methods
.method public whitelist onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .registers 11
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "target"    # Landroid/view/Surface;
    .param p4, "frameNumber"    # J

    .line 672
    const-string v0, "CameraAdvancedExtensionSessionImpl"

    :try_start_2
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2a

    .line 673
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 674
    .local v1, "requestId":Ljava/lang/Integer;
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;->mCallback:Landroid/hardware/camera2/extension/IRequestCallback;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmCameraConfigMap(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Ljava/util/HashMap;

    move-result-object v4

    .line 675
    invoke-virtual {v4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/extension/CameraOutputConfig;

    iget-object v4, v4, Landroid/hardware/camera2/extension/CameraOutputConfig;->outputId:Landroid/hardware/camera2/extension/OutputConfigId;

    iget v4, v4, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    .line 674
    invoke-interface {v2, v3, p4, p5, v4}, Landroid/hardware/camera2/extension/IRequestCallback;->onCaptureBufferLost(IJI)V

    .line 676
    .end local v1    # "requestId":Ljava/lang/Integer;
    goto :goto_2f

    .line 677
    :cond_2a
    const-string v1, "Invalid capture request tag!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2f} :catch_30

    .line 682
    :goto_2f
    goto :goto_36

    .line 679
    :catch_30
    move-exception v1

    .line 680
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to notify lost capture buffer, extension service doesn\'t respond!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_36
    return-void
.end method

.method public whitelist onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 9
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 689
    const-string v0, "CameraAdvancedExtensionSessionImpl"

    :try_start_2
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1e

    .line 690
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 691
    .local v1, "requestId":Ljava/lang/Integer;
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;->mCallback:Landroid/hardware/camera2/extension/IRequestCallback;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$sminitializeParcelable(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/hardware/camera2/extension/IRequestCallback;->onCaptureCompleted(ILandroid/hardware/camera2/extension/ParcelTotalCaptureResult;)V

    .line 692
    .end local v1    # "requestId":Ljava/lang/Integer;
    goto :goto_23

    .line 693
    :cond_1e
    const-string v1, "Invalid capture request tag!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_23} :catch_24

    .line 698
    :goto_23
    goto :goto_2a

    .line 695
    :catch_24
    move-exception v1

    .line 696
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to notify capture result, extension service doesn\'t respond!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method public whitelist onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 9
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .line 705
    const-string v0, "CameraAdvancedExtensionSessionImpl"

    :try_start_2
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_44

    .line 706
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 707
    .local v1, "requestId":Ljava/lang/Integer;
    new-instance v2, Landroid/hardware/camera2/extension/CaptureFailure;

    invoke-direct {v2}, Landroid/hardware/camera2/extension/CaptureFailure;-><init>()V

    .line 709
    .local v2, "captureFailure":Landroid/hardware/camera2/extension/CaptureFailure;
    iput-object p2, v2, Landroid/hardware/camera2/extension/CaptureFailure;->request:Landroid/hardware/camera2/CaptureRequest;

    .line 710
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v3

    iput v3, v2, Landroid/hardware/camera2/extension/CaptureFailure;->reason:I

    .line 711
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/camera2/extension/CaptureFailure;->errorPhysicalCameraId:Ljava/lang/String;

    .line 712
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/hardware/camera2/extension/CaptureFailure;->frameNumber:J

    .line 713
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getSequenceId()I

    move-result v3

    iput v3, v2, Landroid/hardware/camera2/extension/CaptureFailure;->sequenceId:I

    .line 714
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->wasImageCaptured()Z

    move-result v3

    if-nez v3, :cond_37

    const/4 v3, 0x1

    goto :goto_38

    :cond_37
    const/4 v3, 0x0

    :goto_38
    iput-boolean v3, v2, Landroid/hardware/camera2/extension/CaptureFailure;->dropped:Z

    .line 715
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;->mCallback:Landroid/hardware/camera2/extension/IRequestCallback;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4, v2}, Landroid/hardware/camera2/extension/IRequestCallback;->onCaptureFailed(ILandroid/hardware/camera2/extension/CaptureFailure;)V

    .line 716
    .end local v1    # "requestId":Ljava/lang/Integer;
    .end local v2    # "captureFailure":Landroid/hardware/camera2/extension/CaptureFailure;
    goto :goto_49

    .line 717
    :cond_44
    const-string v1, "Invalid capture request tag!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_49} :catch_4a

    .line 722
    :goto_49
    goto :goto_50

    .line 719
    :catch_4a
    move-exception v1

    .line 720
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to notify capture failure, extension service doesn\'t respond!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_50
    return-void
.end method

.method public whitelist onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 9
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .line 729
    const-string v0, "CameraAdvancedExtensionSessionImpl"

    :try_start_2
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1e

    .line 730
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 731
    .local v1, "requestId":Ljava/lang/Integer;
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;->mCallback:Landroid/hardware/camera2/extension/IRequestCallback;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$sminitializeParcelable(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/extension/ParcelCaptureResult;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/hardware/camera2/extension/IRequestCallback;->onCaptureProgressed(ILandroid/hardware/camera2/extension/ParcelCaptureResult;)V

    .line 732
    .end local v1    # "requestId":Ljava/lang/Integer;
    goto :goto_23

    .line 733
    :cond_1e
    const-string v1, "Invalid capture request tag!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_23} :catch_24

    .line 738
    :goto_23
    goto :goto_2a

    .line 735
    :catch_24
    move-exception v1

    .line 736
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to notify capture partial result, extension service doesn\'t respond!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method public whitelist onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .registers 6
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I

    .line 744
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;->mCallback:Landroid/hardware/camera2/extension/IRequestCallback;

    invoke-interface {v0, p2}, Landroid/hardware/camera2/extension/IRequestCallback;->onCaptureSequenceAborted(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 748
    goto :goto_e

    .line 745
    :catch_6
    move-exception v0

    .line 746
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CameraAdvancedExtensionSessionImpl"

    const-string v2, "Failed to notify aborted sequence, extension service doesn\'t respond!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .registers 8
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I
    .param p3, "frameNumber"    # J

    .line 755
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;->mCallback:Landroid/hardware/camera2/extension/IRequestCallback;

    invoke-interface {v0, p2, p3, p4}, Landroid/hardware/camera2/extension/IRequestCallback;->onCaptureSequenceCompleted(IJ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 759
    goto :goto_e

    .line 756
    :catch_6
    move-exception v0

    .line 757
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CameraAdvancedExtensionSessionImpl"

    const-string v2, "Failed to notify sequence complete, extension service doesn\'t respond!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 15
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .line 766
    const-string v0, "CameraAdvancedExtensionSessionImpl"

    :try_start_2
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1c

    .line 767
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 768
    .local v1, "requestId":Ljava/lang/Integer;
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;->mCallback:Landroid/hardware/camera2/extension/IRequestCallback;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-wide v4, p5

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Landroid/hardware/camera2/extension/IRequestCallback;->onCaptureStarted(IJJ)V

    .line 769
    .end local v1    # "requestId":Ljava/lang/Integer;
    goto :goto_21

    .line 770
    :cond_1c
    const-string v1, "Invalid capture request tag!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_21} :catch_22

    .line 775
    :goto_21
    goto :goto_28

    .line 772
    :catch_22
    move-exception v1

    .line 773
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to notify capture started, extension service doesn\'t respond!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_28
    return-void
.end method
