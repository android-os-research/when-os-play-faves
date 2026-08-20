.class Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;
.super Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
.source "MotionRecognitionSAR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Sub1GripSensorWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;)V
    .registers 4
    .param p2, "s"    # Landroid/hardware/Sensor;
    .param p3, "sarDevice"    # Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    .line 1253
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    .line 1254
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;)V

    .line 1255
    return-void
.end method


# virtual methods
.method public onHeadSetStatusChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .line 1277
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 11
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 1284
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->mSensorEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 1285
    :cond_5
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x10064

    if-eq v0, v1, :cond_11

    .line 1286
    return-void

    .line 1288
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->mEnabledSlots:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x5

    const/high16 v3, 0x40a00000    # 5.0f

    const/16 v4, 0x12c

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x43960000    # 300.0f

    if-eqz v0, :cond_5d

    .line 1289
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x3

    aget v0, v0, v7

    cmpl-float v0, v0, v6

    if-nez v0, :cond_2e

    .line 1290
    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->setUnknownMode(II)V

    goto :goto_5d

    .line 1291
    :cond_2e
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    cmpl-float v0, v0, v5

    if-nez v0, :cond_45

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v7

    cmpl-float v0, v0, v3

    if-nez v0, :cond_45

    .line 1292
    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->setUnknownMode(II)V

    .line 1293
    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->clearBackOff(I)V

    goto :goto_5d

    .line 1295
    :cond_45
    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->setUnknownMode(II)V

    .line 1296
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-int v0, v0

    if-nez v0, :cond_53

    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->setBackOff(I)V

    goto :goto_5d

    .line 1297
    :cond_53
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-int v0, v0

    if-ne v0, v2, :cond_5d

    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->clearBackOff(I)V

    .line 1301
    :cond_5d
    :goto_5d
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->mEnabledSlots:[I

    const/4 v7, 0x1

    aget v0, v0, v7

    if-eqz v0, :cond_a0

    .line 1303
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x4

    aget v0, v0, v8

    cmpl-float v0, v0, v6

    if-nez v0, :cond_71

    .line 1304
    invoke-virtual {p0, v7, v4}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->setUnknownMode(II)V

    goto :goto_a0

    .line 1305
    :cond_71
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v7

    cmpl-float v0, v0, v5

    if-nez v0, :cond_88

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v8

    cmpl-float v0, v0, v3

    if-nez v0, :cond_88

    .line 1306
    invoke-virtual {p0, v7, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->setUnknownMode(II)V

    .line 1307
    invoke-virtual {p0, v7}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->clearBackOff(I)V

    goto :goto_a0

    .line 1309
    :cond_88
    invoke-virtual {p0, v7, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->setUnknownMode(II)V

    .line 1310
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v7

    float-to-int v0, v0

    if-nez v0, :cond_96

    invoke-virtual {p0, v7}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->setBackOff(I)V

    goto :goto_a0

    .line 1311
    :cond_96
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v7

    float-to-int v0, v0

    if-ne v0, v2, :cond_a0

    invoke-virtual {p0, v7}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->clearBackOff(I)V

    .line 1314
    :cond_a0
    :goto_a0
    return-void
.end method

.method public onSimChanged()V
    .registers 1

    .line 1280
    return-void
.end method

.method public onTAStatusChanged(Z)V
    .registers 7
    .param p1, "state"    # Z

    .line 1259
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->mVersion:I

    const/16 v1, 0x800

    if-ne v0, v1, :cond_78

    .line 1260
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->mEnabledSlots:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x1

    const-string v3, "MotionRecognitionService"

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->mEnabledSlots:[I

    aget v0, v0, v2

    if-nez v0, :cond_2f

    .line 1261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TA] Before receiving the SAR request for Return : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    return-void

    .line 1264
    :cond_2f
    if-eqz p1, :cond_57

    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->mSensorEnabled:Z

    if-eqz v0, :cond_57

    .line 1265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TA] connected -  disabled : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->mType:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->clearBackOff(I)V

    .line 1267
    invoke-virtual {p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->clearBackOff(I)V

    .line 1268
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->disableSensor()V

    goto :goto_78

    .line 1269
    :cond_57
    if-nez p1, :cond_78

    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->mSensorEnabled:Z

    if-nez v0, :cond_78

    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TA] disconnected -  enabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->enableSensor()V

    .line 1274
    :cond_78
    :goto_78
    return-void
.end method
