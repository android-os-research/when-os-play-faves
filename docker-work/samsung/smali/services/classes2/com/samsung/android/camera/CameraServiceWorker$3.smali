.class public Lcom/samsung/android/camera/CameraServiceWorker$3;
.super Lcom/samsung/android/camera/ICameraServiceWorker$Stub;
.source "CameraServiceWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/CameraServiceWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/camera/CameraServiceWorker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;)V
    .registers 2

    .line 419
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-direct {p0}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireRequestInjector()Landroid/os/IBinder;
    .registers 3

    .line 549
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_13

    .line 554
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmRequestInjectorService(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    move-result-object p0

    return-object p0

    :cond_13
    const-string p0, "CameraService_worker"

    const-string v0, "Only system user is allowed to call acquireRequestInjector"

    .line 550
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string p1, "CameraService_worker is up and running"

    .line 644
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "\tInterface v3 Hash:eb954c7c28bffe129c1323b2b3229ad5f26c0537"

    .line 645
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\tCamera is opened: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {p3}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmIsCameraOpened(Lcom/samsung/android/camera/CameraServiceWorker;)Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    sget-object p1, Lcom/samsung/android/camera/Logger$ID;->CAMERA_EVENT:Lcom/samsung/android/camera/Logger$ID;

    invoke-static {p1, p2}, Lcom/samsung/android/camera/Logger;->dumpLog(Lcom/samsung/android/camera/Logger$ID;Ljava/io/PrintWriter;)V

    const-string p1, "\n\tFold Event"

    .line 649
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\t\tLast fold state: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {p3}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmDeviceState(Lcom/samsung/android/camera/CameraServiceWorker;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 651
    sget-object p1, Lcom/samsung/android/camera/Logger$ID;->FOLD_EVENT:Lcom/samsung/android/camera/Logger$ID;

    invoke-static {p1, p2}, Lcom/samsung/android/camera/Logger;->dumpLog(Lcom/samsung/android/camera/Logger$ID;Ljava/io/PrintWriter;)V

    .line 653
    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {p1}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmShakeEventListener(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/ShakeEventListener;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/camera/ShakeEventListener;->dump(Ljava/io/PrintWriter;)V

    .line 654
    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {p1}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmRequestInjectorService(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->dump(Ljava/io/PrintWriter;)V

    .line 655
    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {p1}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmVtCameraProviderObserver(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->dump(Ljava/io/PrintWriter;)V

    .line 656
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmVisionServerReceiver(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->dump(Ljava/io/PrintWriter;)V

    .line 657
    sget-object p0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    invoke-static {p0, p2}, Lcom/samsung/android/camera/Logger;->dumpLog(Lcom/samsung/android/camera/Logger$ID;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getDeviceInjectorOverride(Ljava/lang/String;I)Z
    .registers 8

    .line 624
    invoke-static {}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$sfgetDEVICE_INJECTOR_TEST_PACKAGES()[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    const/4 v3, 0x1

    if-ge v2, v0, :cond_16

    aget-object v4, p0, v2

    .line 625
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    return v3

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 629
    :cond_16
    invoke-static {}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$sfgetDEVICE_INJECTOR_TEST_PACKAGES_FOR_BLOCK()[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    move v2, v1

    :goto_1c
    if-ge v2, v0, :cond_2a

    aget-object v4, p0, v2

    .line 630
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    return v1

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 635
    :cond_2a
    invoke-static {p1, p2}, Lcom/samsung/android/camera/CameraServiceWorker;->getTaskInfo(Ljava/lang/String;I)Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;

    move-result-object p0

    if-nez p0, :cond_31

    return v1

    .line 638
    :cond_31
    iget p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->displayId:I

    if-eqz p0, :cond_36

    move v1, v3

    :cond_36
    return v1
.end method

.method public getDeviceOrientationForDeviceInjector(Ljava/lang/String;I)I
    .registers 6

    .line 559
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x417

    if-eq v0, v2, :cond_29

    const-string p0, "CameraService_worker"

    .line 560
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Calling UID: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " doesn\'t match expected camera service UID!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 564
    :cond_29
    invoke-static {p1, p2}, Lcom/samsung/android/camera/CameraServiceWorker;->getTaskInfo(Ljava/lang/String;I)Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;

    move-result-object p1

    if-nez p1, :cond_30

    return v1

    .line 567
    :cond_30
    iget-object p2, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {p2}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmContext(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/content/Context;

    move-result-object p2

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    if-eqz p2, :cond_8a

    .line 570
    iget v0, p1, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->displayId:I

    invoke-virtual {p2, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p2

    if-nez p2, :cond_61

    const-string p0, "CameraService_worker"

    .line 572
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid display id: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->displayId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 576
    :cond_61
    invoke-virtual {p2}, Landroid/view/Display;->getRotation()I

    .line 582
    iget-object p2, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {p2}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmOrientationLock(Lcom/samsung/android/camera/CameraServiceWorker;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 583
    :try_start_6b
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmOrientationEventListener(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;

    move-result-object v0

    if-nez v0, :cond_75

    .line 584
    monitor-exit p2

    return v1

    .line 587
    :cond_75
    iget p1, p1, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->displayId:I

    if-eqz p1, :cond_7b

    .line 594
    monitor-exit p2

    return v1

    .line 596
    :cond_7b
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmOrientationEventListener(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->getLatestOrientation()I

    move-result p0

    monitor-exit p2

    return p0

    :catchall_87
    move-exception p0

    .line 598
    monitor-exit p2
    :try_end_89
    .catchall {:try_start_6b .. :try_end_89} :catchall_87

    throw p0

    :cond_8a
    const-string p0, "CameraService_worker"

    const-string p1, "Failed to query display manager!"

    .line 578
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string p0, "eb954c7c28bffe129c1323b2b3229ad5f26c0537"

    return-object p0
.end method

.method public final getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x3

    return p0
.end method

.method public notifyCameraSessionEvent(ILjava/lang/String;)V
    .registers 6

    .line 478
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x417

    if-eq v0, v1, :cond_28

    const-string p0, "CameraService_worker"

    .line 479
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Calling UID: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " doesn\'t match expected  camera service UID!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 483
    :cond_28
    invoke-static {}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string v0, "CameraService_worker"

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", details : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_4c
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmLock(Lcom/samsung/android/camera/CameraServiceWorker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_ac

    :try_start_57
    const-string p0, "CameraService_worker"

    goto :goto_8c

    .line 505
    :pswitch_5a
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const-string p1, "7508"

    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_a8

    .line 502
    :pswitch_62
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const-string p1, "7507"

    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_a8

    .line 499
    :pswitch_6a
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const-string p1, "7506"

    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_a8

    .line 496
    :pswitch_72
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const-string p1, "7505"

    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_a8

    .line 493
    :pswitch_7a
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const-string p1, "7504"

    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_a8

    .line 490
    :pswitch_82
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const-string p1, "7503"

    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_a8

    :catchall_8a
    move-exception p0

    goto :goto_aa

    .line 508
    :goto_8c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non acceptable event type event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", details : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :goto_a8
    monitor-exit v0

    return-void

    :goto_aa
    monitor-exit v0
    :try_end_ab
    .catchall {:try_start_57 .. :try_end_ab} :catchall_8a

    throw p0

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_82
        :pswitch_7a
        :pswitch_72
        :pswitch_6a
        :pswitch_62
        :pswitch_5a
    .end packed-switch
.end method

.method public notifyCameraState(Ljava/lang/String;IILjava/lang/String;I)V
    .registers 14

    .line 461
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "CameraService_worker"

    const/16 v2, 0x417

    if-eq v0, v2, :cond_28

    .line 462
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Calling UID: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t match expected  camera service UID!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 466
    :cond_28
    invoke-static {p2}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$smcameraStateToString(I)Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-static {p3}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$smcameraFacingToString(I)Ljava/lang/String;

    move-result-object v2

    .line 468
    invoke-static {}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$sfgetDEBUG()Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 469
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " facing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state now "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for client "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " API Level "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_6a
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$mupdateActivityCount(Lcom/samsung/android/camera/CameraServiceWorker;Ljava/lang/String;IILjava/lang/String;I)V

    return-void
.end method

.method public pingForUpdate()V
    .registers 7

    .line 432
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x417

    if-eq v0, v1, :cond_32

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_32

    const-string p0, "CameraService_worker"

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t match expected  camera service UID!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 437
    :cond_32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 440
    :try_start_36
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {v2}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmVisionServerReceiver(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->initialize()V

    .line 441
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {v2}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmVtCameraProviderObserver(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->updateCameraService()V
    :try_end_48
    .catchall {:try_start_36 .. :try_end_48} :catchall_80

    .line 444
    :try_start_48
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {v2}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmRequestInjectorService(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->sendAllExtraRequestsToRequestInjector()V
    :try_end_51
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_48 .. :try_end_51} :catch_52
    .catchall {:try_start_48 .. :try_end_51} :catchall_80

    goto :goto_6a

    :catch_52
    move-exception v2

    :try_start_53
    const-string v3, "CameraService_worker"

    .line 446
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pingForUpdate exception happen "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :goto_6a
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {v2}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmLock(Lcom/samsung/android/camera/CameraServiceWorker;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_71
    .catchall {:try_start_53 .. :try_end_71} :catchall_80

    .line 451
    :try_start_71
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const/16 v3, 0x1e

    invoke-static {p0, v3}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$mnotifyDeviceChangeRetryLocked(Lcom/samsung/android/camera/CameraServiceWorker;I)V

    .line 452
    monitor-exit v2
    :try_end_79
    .catchall {:try_start_71 .. :try_end_79} :catchall_7d

    .line 454
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_7d
    move-exception p0

    .line 452
    :try_start_7e
    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    :try_start_7f
    throw p0
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_80

    :catchall_80
    move-exception p0

    .line 454
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 455
    throw p0
.end method

.method public queryPackageName(II)Ljava/lang/String;
    .registers 9

    .line 516
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, ""

    const-string v2, "CameraService_worker"

    const/16 v3, 0x417

    if-eq v0, v3, :cond_2a

    .line 517
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Calling UID: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t match expected  camera service UID!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 522
    :cond_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 525
    :try_start_2e
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmContext(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 526
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_46

    .line 527
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 528
    :cond_46
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 529
    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_4a

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v5, p2, :cond_4a

    .line 530
    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz p0, :cond_87

    array-length p0, p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_87

    .line 535
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Package name = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object p0, p0, p2
    :try_end_83
    .catchall {:try_start_2e .. :try_end_83} :catchall_8b

    .line 543
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :cond_87
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :catchall_8b
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 544
    throw p0
.end method

.method public setDeviceOrientationListener(Z)V
    .registers 4

    .line 603
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x417

    if-eq v0, v1, :cond_28

    const-string p0, "CameraService_worker"

    .line 604
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Calling UID: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " doesn\'t match expected camera service UID!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 608
    :cond_28
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmOrientationLock(Lcom/samsung/android/camera/CameraServiceWorker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 609
    :try_start_2f
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {v1}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmOrientationEventListener(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;

    move-result-object v1

    if-nez v1, :cond_39

    .line 610
    monitor-exit v0

    return-void

    :cond_39
    if-eqz p1, :cond_45

    .line 614
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmOrientationEventListener(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_4e

    .line 616
    :cond_45
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmOrientationEventListener(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    .line 618
    :goto_4e
    monitor-exit v0

    return-void

    :catchall_50
    move-exception p0

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_2f .. :try_end_52} :catchall_50

    throw p0
.end method
