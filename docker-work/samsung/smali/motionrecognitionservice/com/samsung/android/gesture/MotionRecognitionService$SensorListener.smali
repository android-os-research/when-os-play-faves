.class Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;
.super Ljava/lang/Object;
.source "MotionRecognitionService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionService;)V
    .registers 2

    .line 1595
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionService;Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;-><init>(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .line 1598
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 1602
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "MotionRecognitionService"

    const/4 v3, 0x0

    const v4, 0x10017

    if-ne v0, v4, :cond_48

    .line 1603
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    float-to-int v0, v0

    .line 1604
    .local v0, "v1":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSensorChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v4, v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$msendMotionEvent(Lcom/samsung/android/gesture/MotionRecognitionService;I)V

    .line 1606
    const/16 v4, 0x47

    if-eq v0, v4, :cond_42

    const/16 v4, 0x63

    if-ne v0, v4, :cond_38

    goto :goto_42

    .line 1608
    :cond_38
    const/16 v4, 0x6f

    if-eq v0, v4, :cond_47

    .line 1609
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v4, v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fputmIsFlat(Lcom/samsung/android/gesture/MotionRecognitionService;Z)V

    goto :goto_47

    .line 1607
    :cond_42
    :goto_42
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v4, v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fputmIsFlat(Lcom/samsung/android/gesture/MotionRecognitionService;Z)V

    .line 1610
    .end local v0    # "v1":I
    :cond_47
    :goto_47
    goto :goto_bb

    :cond_48
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v4, 0x10049

    if-ne v0, v4, :cond_88

    .line 1611
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    float-to-int v0, v0

    .line 1612
    .local v0, "value":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSensorChanged, SEM_TYPE_POCKET_DETECTOR : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    if-nez v0, :cond_7c

    .line 1614
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    move-result-object v4

    const/16 v5, 0x5c

    invoke-virtual {v4, v5}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    goto :goto_ba

    .line 1616
    :cond_7c
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    goto :goto_ba

    .line 1618
    .end local v0    # "value":I
    :cond_88
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v4, 0x1009f

    if-ne v0, v4, :cond_ba

    .line 1619
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v3

    float-to-int v4, v4

    invoke-static {v0, v4}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fputmFoldingState(Lcom/samsung/android/gesture/MotionRecognitionService;I)V

    .line 1620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSensorChanged, SEM_TYPE_FOLDING_STATE : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingState(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bb

    .line 1618
    :cond_ba
    :goto_ba
    nop

    .line 1623
    :goto_bb
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmEnableCalibratedLux(Lcom/samsung/android/gesture/MotionRecognitionService;)Z

    move-result v0

    if-eqz v0, :cond_166

    .line 1624
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v4, 0x10050

    if-ne v0, v4, :cond_166

    .line 1625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CalibratedLux event happens = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmMotionSettings(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->isAdaptiveBrightnessEnabled()I

    move-result v0

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40000000    # -2.0f

    if-ne v0, v1, :cond_139

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$mgetFaceStatus(Lcom/samsung/android/gesture/MotionRecognitionService;)Z

    move-result v0

    if-nez v0, :cond_139

    .line 1627
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmLastCalibratedLuxStatus(Lcom/samsung/android/gesture/MotionRecognitionService;)F

    move-result v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_12a

    .line 1628
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    cmpl-float v0, v0, v4

    if-nez v0, :cond_11c

    .line 1629
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->startAdaptiveBrightness()V

    goto :goto_12f

    .line 1630
    :cond_11c
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    cmpl-float v0, v0, v5

    if-nez v0, :cond_12f

    .line 1631
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->stopAdaptiveBrightness()V

    goto :goto_12f

    .line 1634
    :cond_12a
    const-string v0, "Status of calibratedlux is same. skip event!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    :cond_12f
    :goto_12f
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fputmLastCalibratedLuxStatus(Lcom/samsung/android/gesture/MotionRecognitionService;F)V

    goto :goto_166

    .line 1637
    :cond_139
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    cmpl-float v0, v0, v5

    const/4 v1, 0x0

    if-nez v0, :cond_15c

    .line 1638
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmLastCalibratedLuxStatus(Lcom/samsung/android/gesture/MotionRecognitionService;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_166

    .line 1639
    const-string v0, "Face unlock is enabled and sABC service is started, stop sABC service"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->stopAdaptiveBrightness()V

    .line 1641
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fputmLastCalibratedLuxStatus(Lcom/samsung/android/gesture/MotionRecognitionService;F)V

    goto :goto_166

    .line 1644
    :cond_15c
    const-string v0, "Face unlock is enabled or adaptive brightness disabled, skip to start/stop sABC"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fputmLastCalibratedLuxStatus(Lcom/samsung/android/gesture/MotionRecognitionService;F)V

    .line 1649
    :cond_166
    :goto_166
    return-void
.end method
