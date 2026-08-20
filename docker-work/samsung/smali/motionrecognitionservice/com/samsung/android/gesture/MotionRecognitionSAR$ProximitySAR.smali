.class Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;
.super Ljava/lang/Object;
.source "MotionRecognitionSAR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProximitySAR"
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field mEnabledSlot:I

.field private mLastProximityValue:S

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field mProximitySensor:Landroid/hardware/Sensor;

.field mReceiverEnabled:Z

.field mSensorEnabled:Z

.field mainGripVersion:I

.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLastProximityValue(Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;)S
    .registers 1

    iget-short p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mLastProximityValue:S

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmLastProximityValue(Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;S)V
    .registers 2

    iput-short p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mLastProximityValue:S

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;Landroid/hardware/Sensor;)V
    .registers 5
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionSAR;
    .param p2, "prox"    # Landroid/hardware/Sensor;
    .param p3, "mainGrip"    # Landroid/hardware/Sensor;

    .line 448
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    const/4 v0, 0x5

    iput-short v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mLastProximityValue:S

    .line 446
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mainGripVersion:I

    .line 449
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mReceiverEnabled:Z

    .line 450
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mSensorEnabled:Z

    .line 451
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mEnabledSlot:I

    .line 452
    iput-object p2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mProximitySensor:Landroid/hardware/Sensor;

    .line 455
    if-eqz p3, :cond_1b

    .line 456
    invoke-virtual {p3}, Landroid/hardware/Sensor;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mainGripVersion:I

    .line 459
    :cond_1b
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR$1;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;Lcom/samsung/android/gesture/MotionRecognitionSAR;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 472
    return-void
.end method

.method private disableSensor()V
    .registers 8

    .line 502
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mSensorEnabled:Z

    if-eqz v0, :cond_37

    .line 503
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mProximityListener:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_11

    goto :goto_36

    .line 504
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 505
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmPrevRegistrations(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->add(ZILjava/lang/String;J)V

    .line 506
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mSensorEnabled:Z

    goto :goto_37

    .line 503
    :cond_36
    :goto_36
    return-void

    .line 508
    :cond_37
    :goto_37
    return-void
.end method

.method private enableSensor()V
    .registers 8

    .line 493
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mSensorEnabled:Z

    if-nez v0, :cond_40

    .line 494
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mProximitySensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_11

    goto :goto_3f

    .line 495
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 496
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmPrevRegistrations(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->add(ZILjava/lang/String;J)V

    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mSensorEnabled:Z

    goto :goto_40

    .line 494
    :cond_3f
    :goto_3f
    return-void

    .line 499
    :cond_40
    :goto_40
    return-void
.end method

.method private isAudioPathEarpiece()Z
    .registers 5

    .line 549
    const/4 v0, 0x1

    .line 550
    .local v0, "DEVICE_OUT_EARPIECE":I
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_15

    .line 551
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmContext(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mAudioManager:Landroid/media/AudioManager;

    .line 553
    :cond_15
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result v1

    .line 554
    .local v1, "currentDeviceType":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SAR] currentDeviceType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MotionRecognitionService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v2, 0x1

    if-ne v1, v2, :cond_37

    goto :goto_38

    :cond_37
    const/4 v2, 0x0

    :goto_38
    return v2
.end method


# virtual methods
.method public disable(I)V
    .registers 4
    .param p1, "slot"    # I

    .line 485
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mEnabledSlot:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mEnabledSlot:I

    .line 487
    if-nez v0, :cond_d

    .line 488
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->disableSensor()V

    .line 490
    :cond_d
    return-void
.end method

.method public enable(I)V
    .registers 4
    .param p1, "slot"    # I

    .line 476
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mEnabledSlot:I

    if-nez v0, :cond_b

    .line 477
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mReceiverEnabled:Z

    if-eqz v0, :cond_b

    .line 478
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->enableSensor()V

    .line 481
    :cond_b
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mEnabledSlot:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mEnabledSlot:I

    .line 482
    return-void
.end method

.method public onHeadSetStatusChanged(I)V
    .registers 5
    .param p1, "state"    # I

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EARJACK] state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mainGripVersion:I

    const/16 v2, 0x200

    if-eq v0, v2, :cond_22

    const/16 v2, 0x600

    if-ne v0, v2, :cond_2a

    .line 514
    :cond_22
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->updateBackOffStatus()V

    .line 515
    const-string v0, "[EARJACK] Set earjack state"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_2a
    return-void
.end method

.method public onReceiverChanged(Z)V
    .registers 3
    .param p1, "state"    # Z

    .line 520
    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mReceiverEnabled:Z

    .line 521
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mEnabledSlot:I

    if-eqz v0, :cond_f

    .line 523
    if-eqz p1, :cond_c

    .line 524
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->enableSensor()V

    goto :goto_f

    .line 526
    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->disableSensor()V

    .line 528
    :cond_f
    :goto_f
    return-void
.end method

.method protected updateBackOffStatus()V
    .registers 6

    .line 531
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mProximitySensor:Landroid/hardware/Sensor;

    const-string v1, "MotionRecognitionService"

    if-nez v0, :cond_c

    .line 532
    const-string v0, "[SAR] Not support Proximity Sensor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return-void

    .line 535
    :cond_c
    const-string v0, "[SAR] Check audio path"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->isAudioPathEarpiece()Z

    move-result v0

    .line 537
    .local v0, "path":Z
    iget-short v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mLastProximityValue:S

    const-wide/16 v3, 0x2

    if-nez v2, :cond_29

    if-eqz v0, :cond_29

    .line 538
    const-string v2, "[SAR] set SAR_DEVICE_PROX"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    const/4 v2, 0x1

    invoke-static {v1, v3, v4, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$msetTransmitPower(Lcom/samsung/android/gesture/MotionRecognitionSAR;JZ)V

    goto :goto_34

    .line 542
    :cond_29
    const-string v2, "[SAR] clear SAR_DEVICE_PROX"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    const/4 v2, 0x0

    invoke-static {v1, v3, v4, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$msetTransmitPower(Lcom/samsung/android/gesture/MotionRecognitionSAR;JZ)V

    .line 546
    :goto_34
    return-void
.end method
