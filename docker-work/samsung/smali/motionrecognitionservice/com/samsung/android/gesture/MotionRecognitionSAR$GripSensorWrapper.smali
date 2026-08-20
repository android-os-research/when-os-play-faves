.class abstract Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
.super Ljava/lang/Object;
.source "MotionRecognitionSAR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "GripSensorWrapper"
.end annotation


# static fields
.field protected static final VERSION_FILTER_BLOCK_SYSFS_EAR_JACK:I = 0xe

.field protected static final VERSION_MAIN_FILTER_BLOCK_HEADSET1:I = 0x200

.field protected static final VERSION_MAIN_FILTER_BLOCK_HEADSET2:I = 0x600

.field protected static final VERSION_MAIN_FILTER_BLOCK_TA1:I = 0x1

.field protected static final VERSION_MAIN_FILTER_BLOCK_TA2:I = 0x200

.field protected static final VERSION_SUB_FILTER_BLOCK_TA1:I = 0x800


# instance fields
.field protected mEnabledSlots:[I

.field protected mIndex:I

.field protected mListener:Landroid/hardware/SensorEventListener;

.field protected mSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

.field protected mSensor:Landroid/hardware/Sensor;

.field protected mSensorEnabled:Z

.field protected mType:I

.field protected mVersion:I

.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;)V
    .registers 6
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionSAR;
    .param p2, "s"    # Landroid/hardware/Sensor;
    .param p3, "device"    # Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    .line 321
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_66

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mEnabledSlots:[I

    .line 322
    iput-object p2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    .line 323
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mVersion:I

    .line 324
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mType:I

    .line 325
    iput-object p3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    .line 326
    invoke-virtual {p3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->getSensorCnt()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mIndex:I

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensorEnabled:Z

    .line 328
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper$1;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;Lcom/samsung/android/gesture/MotionRecognitionSAR;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mListener:Landroid/hardware/SensorEventListener;

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SAR] SarDevice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , index : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return-void

    :array_66
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method protected clearBackOff(I)V
    .registers 4
    .param p1, "channel"    # I

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SAR] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " clearBackOff channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mIndex:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->clear(II)V

    .line 402
    return-void
.end method

.method public disable(II)V
    .registers 7
    .param p1, "channel"    # I
    .param p2, "slot"    # I

    .line 359
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mEnabledSlots:[I

    aget v1, v0, p1

    const/4 v2, 0x1

    shl-int v3, v2, p2

    not-int v3, v3

    and-int/2addr v1, v3

    aput v1, v0, p1

    .line 360
    if-nez v1, :cond_14

    .line 361
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mIndex:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->clear(II)V

    .line 364
    :cond_14
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mEnabledSlots:[I

    const/4 v1, 0x0

    aget v3, v0, v1

    if-nez v3, :cond_22

    aget v0, v0, v2

    if-nez v0, :cond_22

    .line 365
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->disableSensor()V

    .line 367
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SAR] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " disable channel 0 : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mEnabledSlots:[I

    aget v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , channel 1 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mEnabledSlots:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void
.end method

.method protected disableSensor()V
    .registers 10

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SAR] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " disableSensor : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensorEnabled:Z

    if-eqz v0, :cond_80

    .line 383
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mListener:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_3b

    goto :goto_7f

    .line 384
    :cond_3b
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x10018

    const/4 v2, 0x0

    if-ne v0, v1, :cond_57

    .line 385
    const-wide v0, 0x200000000L

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->setTunerGrip(JZ)V

    .line 386
    const-wide v0, 0x400000000L

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->setTunerGrip(JZ)V

    .line 388
    :cond_57
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 389
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmPrevRegistrations(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->add(ZILjava/lang/String;J)V

    .line 390
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensorEnabled:Z

    goto :goto_80

    .line 383
    :cond_7f
    :goto_7f
    return-void

    .line 392
    :cond_80
    :goto_80
    return-void
.end method

.method public enable(II)V
    .registers 8
    .param p1, "channel"    # I
    .param p2, "slot"    # I

    .line 351
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mEnabledSlots:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_f

    aget v0, v0, v3

    if-nez v0, :cond_f

    .line 352
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->enableSensor()V

    .line 354
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mEnabledSlots:[I

    aget v2, v0, p1

    shl-int v4, v3, p2

    or-int/2addr v2, v4

    aput v2, v0, p1

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SAR] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " enable channel 0 : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mEnabledSlots:[I

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , channel 1 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mEnabledSlots:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void
.end method

.method protected enableSensor()V
    .registers 8

    .line 371
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensorEnabled:Z

    if-nez v0, :cond_68

    .line 372
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_11

    goto :goto_67

    .line 373
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SAR] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " enableSensor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensorEnabled:Z

    .line 375
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 376
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmPrevRegistrations(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->add(ZILjava/lang/String;J)V

    goto :goto_68

    .line 372
    :cond_67
    :goto_67
    return-void

    .line 378
    :cond_68
    :goto_68
    return-void
.end method

.method public getSarDevice(I)I
    .registers 3
    .param p1, "channel"    # I

    .line 346
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    invoke-virtual {v0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->getDevice(I)I

    move-result v0

    return v0
.end method

.method public abstract onHeadSetStatusChanged(I)V
.end method

.method public abstract onSensorChanged(Landroid/hardware/SensorEvent;)V
.end method

.method public abstract onSimChanged()V
.end method

.method public abstract onTAStatusChanged(Z)V
.end method

.method protected setBackOff(I)V
    .registers 4
    .param p1, "channel"    # I

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SAR] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " setBackOff channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mIndex:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->set(II)V

    .line 397
    return-void
.end method

.method protected setLeftRightHand(I)V
    .registers 6
    .param p1, "state"    # I

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SAR] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " setLeftRightHand state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mEnabledSlots:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-eqz v0, :cond_66

    .line 414
    const/16 v0, 0x64

    const/4 v2, 0x0

    if-ne p1, v0, :cond_4f

    .line 415
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mIndex:I

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->clear(II)V

    .line 416
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->clear(II)V

    goto :goto_66

    .line 417
    :cond_4f
    const/16 v0, 0x65

    if-ne p1, v0, :cond_5b

    .line 418
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mIndex:I

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->set(II)V

    goto :goto_66

    .line 419
    :cond_5b
    const/16 v0, 0x66

    if-ne p1, v0, :cond_66

    .line 420
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->set(II)V

    .line 423
    :cond_66
    :goto_66
    return-void
.end method

.method public setTunerGrip(JZ)V
    .registers 6
    .param p1, "deviceId"    # J
    .param p3, "state"    # Z

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SAR] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "setTunerGrip "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->tunerGrip(JZ)V

    .line 428
    return-void
.end method

.method protected setUnknownMode(II)V
    .registers 5
    .param p1, "channel"    # I
    .param p2, "state"    # I

    .line 405
    if-eqz p2, :cond_34

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SAR] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " setUnknownMode channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_34
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->unknownMode(II)V

    .line 408
    return-void
.end method
