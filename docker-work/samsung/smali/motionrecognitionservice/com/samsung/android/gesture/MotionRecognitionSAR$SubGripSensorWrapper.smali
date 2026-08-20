.class Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;
.super Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
.source "MotionRecognitionSAR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubGripSensorWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;)V
    .registers 4
    .param p2, "s"    # Landroid/hardware/Sensor;
    .param p3, "sarDevice"    # Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    .line 1319
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    .line 1320
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;)V

    .line 1321
    return-void
.end method


# virtual methods
.method public onHeadSetStatusChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .line 1342
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 1349
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->mSensorEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 1350
    :cond_5
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->mType:I

    if-eq v0, v1, :cond_10

    .line 1351
    return-void

    .line 1353
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->mEnabledSlots:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_4c

    .line 1354
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x3

    aget v0, v0, v2

    const/high16 v3, 0x43960000    # 300.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmIsKoreaPhoneType(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1355
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->setUnknownMode(II)V

    goto :goto_4c

    .line 1357
    :cond_33
    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->setUnknownMode(II)V

    .line 1358
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-int v0, v0

    if-nez v0, :cond_41

    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->setBackOff(I)V

    goto :goto_4c

    .line 1359
    :cond_41
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-int v0, v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_4c

    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->clearBackOff(I)V

    .line 1362
    :cond_4c
    :goto_4c
    return-void
.end method

.method public onSimChanged()V
    .registers 1

    .line 1345
    return-void
.end method

.method public onTAStatusChanged(Z)V
    .registers 6
    .param p1, "state"    # Z

    .line 1325
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->mVersion:I

    const/16 v1, 0x800

    if-ne v0, v1, :cond_6e

    .line 1326
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->mEnabledSlots:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const-string v2, "MotionRecognitionService"

    if-nez v0, :cond_28

    .line 1327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TA] Before receiving the SAR request for Return : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    return-void

    .line 1330
    :cond_28
    if-eqz p1, :cond_4d

    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->mSensorEnabled:Z

    if-eqz v0, :cond_4d

    .line 1331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TA] connected -  disabled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->mType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->clearBackOff(I)V

    .line 1333
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->disableSensor()V

    goto :goto_6e

    .line 1334
    :cond_4d
    if-nez p1, :cond_6e

    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->mSensorEnabled:Z

    if-nez v0, :cond_6e

    .line 1335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TA] disconnected -  enabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->enableSensor()V

    .line 1339
    :cond_6e
    :goto_6e
    return-void
.end method
