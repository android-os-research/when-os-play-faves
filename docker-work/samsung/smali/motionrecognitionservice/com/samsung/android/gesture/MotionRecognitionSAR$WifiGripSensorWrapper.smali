.class Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;
.super Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
.source "MotionRecognitionSAR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiGripSensorWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;)V
    .registers 4
    .param p2, "s"    # Landroid/hardware/Sensor;
    .param p3, "sarDevice"    # Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    .line 1367
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    .line 1368
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;)V

    .line 1369
    return-void
.end method


# virtual methods
.method public onHeadSetStatusChanged(I)V
    .registers 4
    .param p1, "state"    # I

    .line 1376
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->mVersion:I

    and-int/lit8 v0, v0, 0xe

    if-eqz v0, :cond_14

    .line 1377
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    const-string v1, "/sys/class/sensors/grip_sensor_wifi/grip_earjack"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$mwriteSysfs(Lcom/samsung/android/gesture/MotionRecognitionSAR;Ljava/lang/String;I)V

    .line 1378
    const-string v0, "MotionRecognitionService"

    const-string v1, "[EARJACK] Write EarJack state to sys node for wifi "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :cond_14
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 1387
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->mSensorEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 1388
    :cond_5
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x10027

    if-eq v0, v1, :cond_11

    .line 1389
    return-void

    .line 1391
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->mEnabledSlots:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v2, 0x43960000    # 300.0f

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eqz v0, :cond_51

    .line 1392
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x3

    aget v0, v0, v5

    cmpl-float v0, v0, v2

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmIsKoreaPhoneType(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1395
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->setUnknownMode(II)V

    goto :goto_51

    .line 1398
    :cond_36
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->mEnabledSlots:[I

    aget v0, v0, v4

    if-nez v0, :cond_51

    .line 1399
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-int v0, v0

    if-nez v0, :cond_47

    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->setBackOff(I)V

    goto :goto_51

    .line 1400
    :cond_47
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-int v0, v0

    if-ne v0, v3, :cond_51

    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->clearBackOff(I)V

    .line 1405
    :cond_51
    :goto_51
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->mEnabledSlots:[I

    aget v0, v0, v4

    if-eqz v0, :cond_9b

    .line 1407
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x4

    aget v0, v0, v5

    cmpl-float v0, v0, v2

    if-nez v0, :cond_71

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmIsKoreaPhoneType(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 1408
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    float-to-int v0, v0

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->setUnknownMode(II)V

    goto :goto_9b

    .line 1410
    :cond_71
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-int v0, v0

    if-nez v0, :cond_7c

    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->setBackOff(I)V

    goto :goto_86

    .line 1411
    :cond_7c
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-int v0, v0

    if-ne v0, v3, :cond_86

    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->clearBackOff(I)V

    .line 1412
    :cond_86
    :goto_86
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    float-to-int v0, v0

    if-nez v0, :cond_91

    invoke-virtual {p0, v4}, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->setBackOff(I)V

    goto :goto_9b

    .line 1413
    :cond_91
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    float-to-int v0, v0

    if-ne v0, v3, :cond_9b

    invoke-virtual {p0, v4}, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->clearBackOff(I)V

    .line 1416
    :cond_9b
    :goto_9b
    return-void
.end method

.method public onSimChanged()V
    .registers 1

    .line 1383
    return-void
.end method

.method public onTAStatusChanged(Z)V
    .registers 2
    .param p1, "state"    # Z

    .line 1372
    return-void
.end method
