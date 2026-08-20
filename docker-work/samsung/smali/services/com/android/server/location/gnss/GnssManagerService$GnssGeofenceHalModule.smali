.class public Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;
.super Ljava/lang/Object;
.source "GnssManagerService.java"

# interfaces
.implements Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GnssGeofenceHalModule"
.end annotation


# instance fields
.field public mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssManagerService;


# direct methods
.method public static synthetic $r8$lambda$4os5RY46MsgACNSJI6i0z6MwsHU(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;ILandroid/location/Location;IJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->lambda$onReportGeofenceTransition$0(ILandroid/location/Location;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$6a3v3iqWFMIqo6yVvRvhvH7FO-c(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;ILandroid/location/Location;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->lambda$onReportGeofenceStatus$1(ILandroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IW0lZlAGPIBNnzBWTX3IEuV2eEQ(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->lambda$onReportGeofencePauseStatus$4(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$oLcrA6oCzv4oFoaMCrsIgaARxb0(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->lambda$onReportGeofenceAddStatus$2(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$uHm0LomV_vKH861tux-qHANFJXI(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->lambda$onReportGeofenceResumeStatus$5(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$ue0vioxlIw9ACEvLXVBDGzgHQv8(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->lambda$onReportGeofenceRemoveStatus$3(II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/gnss/GnssManagerService;Lcom/android/server/location/gnss/hal/GnssNative;)V
    .registers 3

    .line 392
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->this$0:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->setGeofenceCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;)V

    return-void
.end method

.method private synthetic lambda$onReportGeofenceAddStatus$2(II)V
    .registers 4

    .line 431
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->getGeofenceHardware()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    .line 432
    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->translateGeofenceStatus(I)I

    move-result p0

    .line 431
    invoke-virtual {v0, p1, p0}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceAddStatus(II)V

    return-void
.end method

.method private synthetic lambda$onReportGeofencePauseStatus$4(II)V
    .registers 4

    .line 445
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->getGeofenceHardware()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    .line 446
    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->translateGeofenceStatus(I)I

    move-result p0

    .line 445
    invoke-virtual {v0, p1, p0}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofencePauseStatus(II)V

    return-void
.end method

.method private synthetic lambda$onReportGeofenceRemoveStatus$3(II)V
    .registers 4

    .line 438
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->getGeofenceHardware()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    .line 439
    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->translateGeofenceStatus(I)I

    move-result p0

    .line 438
    invoke-virtual {v0, p1, p0}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceRemoveStatus(II)V

    return-void
.end method

.method private synthetic lambda$onReportGeofenceResumeStatus$5(II)V
    .registers 4

    .line 452
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->getGeofenceHardware()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    .line 453
    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->translateGeofenceStatus(I)I

    move-result p0

    .line 452
    invoke-virtual {v0, p1, p0}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceResumeStatus(II)V

    return-void
.end method

.method private synthetic lambda$onReportGeofenceStatus$1(ILandroid/location/Location;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    move p1, v0

    goto :goto_7

    :cond_6
    const/4 p1, 0x1

    .line 420
    :goto_7
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->getGeofenceHardware()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object p0

    sget v1, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceMonitorStatus(IILandroid/location/Location;I)V

    return-void
.end method

.method private synthetic lambda$onReportGeofenceTransition$0(ILandroid/location/Location;IJ)V
    .registers 14

    .line 406
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->getGeofenceHardware()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    sget v7, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    const/4 v6, 0x0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceTransition(ILandroid/location/Location;IJII)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized getGeofenceHardware()Landroid/hardware/location/GeofenceHardwareImpl;
    .registers 2

    monitor-enter p0

    .line 397
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_f

    .line 398
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->this$0:Lcom/android/server/location/gnss/GnssManagerService;

    iget-object v0, v0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 400
    :cond_f
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onReportGeofenceAddStatus(II)V
    .registers 5

    .line 431
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 433
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->this$0:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssManagerService;->-$$Nest$fgetmSLocationProxy(Lcom/android/server/location/gnss/GnssManagerService;)Lcom/android/server/location/gnss/sec/SLocationProxy;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/sec/SLocationProxy;->onReportGeofenceAddStatus(II)V

    return-void
.end method

.method public onReportGeofencePauseStatus(II)V
    .registers 5

    .line 445
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 447
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->this$0:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssManagerService;->-$$Nest$fgetmSLocationProxy(Lcom/android/server/location/gnss/GnssManagerService;)Lcom/android/server/location/gnss/sec/SLocationProxy;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/sec/SLocationProxy;->onReportGeofencePauseStatus(II)V

    return-void
.end method

.method public onReportGeofenceRemoveStatus(II)V
    .registers 5

    .line 438
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 440
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->this$0:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssManagerService;->-$$Nest$fgetmSLocationProxy(Lcom/android/server/location/gnss/GnssManagerService;)Lcom/android/server/location/gnss/sec/SLocationProxy;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/sec/SLocationProxy;->onReportGeofenceRemoveStatus(II)V

    return-void
.end method

.method public onReportGeofenceResumeStatus(II)V
    .registers 5

    .line 452
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 454
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->this$0:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssManagerService;->-$$Nest$fgetmSLocationProxy(Lcom/android/server/location/gnss/GnssManagerService;)Lcom/android/server/location/gnss/sec/SLocationProxy;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/sec/SLocationProxy;->onReportGeofenceResumeStatus(II)V

    return-void
.end method

.method public onReportGeofenceStatus(ILandroid/location/Location;)V
    .registers 5

    .line 415
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;ILandroid/location/Location;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 426
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->this$0:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssManagerService;->-$$Nest$fgetmSLocationProxy(Lcom/android/server/location/gnss/GnssManagerService;)Lcom/android/server/location/gnss/sec/SLocationProxy;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/sec/SLocationProxy;->reportGeofenceStatus(ILandroid/location/Location;)V

    return-void
.end method

.method public onReportGeofenceTransition(ILandroid/location/Location;IJ)V
    .registers 15

    .line 406
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda3;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;ILandroid/location/Location;IJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 410
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->this$0:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssManagerService;->-$$Nest$fgetmSLocationProxy(Lcom/android/server/location/gnss/GnssManagerService;)Lcom/android/server/location/gnss/sec/SLocationProxy;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/gnss/sec/SLocationProxy;->reportGeofenceTransition(ILandroid/location/Location;IJ)V

    return-void
.end method

.method public final translateGeofenceStatus(I)I
    .registers 2

    const/16 p0, -0x95

    if-eq p1, p0, :cond_19

    if-eqz p1, :cond_17

    const/16 p0, 0x64

    if-eq p1, p0, :cond_15

    packed-switch p1, :pswitch_data_1c

    const/4 p0, -0x1

    return p0

    :pswitch_f
    const/4 p0, 0x2

    return p0

    :pswitch_11
    const/4 p0, 0x3

    return p0

    :pswitch_13
    const/4 p0, 0x4

    return p0

    :cond_15
    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    const/4 p0, 0x5

    return p0

    nop

    :pswitch_data_1c
    .packed-switch -0x67
        :pswitch_13
        :pswitch_11
        :pswitch_f
    .end packed-switch
.end method
