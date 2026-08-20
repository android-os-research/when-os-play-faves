.class Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;
.super Ljava/lang/Object;
.source "MotionRecognitionSensorChecker.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    .line 1770
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 1832
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 13
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 1773
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 1774
    .local v0, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    .line 1775
    .local v1, "type":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d8

    .line 1777
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmAccWrongRangeEnabled(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V

    .line 1778
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmIsMovingForVectorSum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v3

    if-nez v3, :cond_21

    .line 1779
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$misMovingForVectorSum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;[F)I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmIsMovingForVectorSum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 1781
    :cond_21
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmIsMovingForVectorSum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v3

    const-string v4, "MotionRecognitionSensorChecker"

    if-nez v3, :cond_4b

    .line 1782
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmIsMovingForVectorSumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v3, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmIsMovingForVectorSumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 1783
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmIsMovingForVectorSumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_1d8

    .line 1784
    const-string v2, "AccWrongRange : EVENT_NONE"

    invoke-static {v4, v2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$munregisterAccWrongRangeListner(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    goto/16 :goto_1d8

    .line 1787
    :cond_4b
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmIsMovingForVectorSum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1ce

    .line 1788
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmAccVectorSumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v3, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmAccVectorSumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 1789
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v6

    mul-float/2addr v5, v7

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v2

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v2

    mul-float/2addr v7, v8

    add-float/2addr v5, v7

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v9, v9, v8

    mul-float/2addr v7, v9

    add-float/2addr v5, v7

    invoke-static {v3, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmAccVectorsum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;F)V

    .line 1791
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmAccVectorsum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)F

    move-result v3

    float-to-double v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v3, v9

    const/high16 v5, 0x40e00000    # 7.0f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_9f

    .line 1792
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmAccWrongVectorsumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v3, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmAccWrongVectorsumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    goto :goto_a4

    .line 1794
    :cond_9f
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmAccWrongVectorsumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 1796
    :goto_a4
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmAccWrongVectorsumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v3

    const/16 v5, 0xa

    if-ne v3, v5, :cond_b3

    .line 1797
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputWrongVectorSum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V

    .line 1800
    :cond_b3
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmAccVectorSumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v3

    if-ne v3, v5, :cond_1d8

    .line 1801
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetWrongVectorSum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z

    move-result v3

    if-eqz v3, :cond_1c3

    .line 1802
    const-string v3, "AccWrongRange : TEST DONE! FAIL"

    invoke-static {v4, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    const-string v3, ""

    .line 1805
    .local v3, "result":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    const-string v7, "SENSOR_TYPE"

    const-string v9, "Accelerometer"

    invoke-static {v5, v7, v9, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$maddSensorCheckLog(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1806
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmAccName(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "CHIP_ID"

    invoke-static {v5, v10, v7, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$maddSensorCheckLog(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1807
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$sfgetsErrorType()[Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x4

    aget-object v7, v7, v10

    const-string v10, "ERROR_TYPE"

    invoke-static {v5, v10, v7, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$maddSensorCheckLog(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1808
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v5, v9}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mgetStuckAxisData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "STUCK AXIS"

    invoke-static {v5, v9, v7, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$maddSensorCheckLog(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1809
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v6

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    const-string v9, "DATA1"

    invoke-static {v5, v9, v7, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$maddSensorCheckLog(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1810
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    const-string v9, "DATA2"

    invoke-static {v5, v9, v7, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$maddSensorCheckLog(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1811
    .end local v3    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    const-string v7, "DATA3"

    invoke-static {v4, v7, v5, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$maddSensorCheckLog(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1812
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmDeviceInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1814
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    const-string v4, "MRSI"

    const-string v5, "sm"

    invoke-static {v3, v4, v2, v6, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$msendHWParamServer(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1816
    .end local v2    # "result":Ljava/lang/String;
    goto :goto_1c8

    .line 1818
    :cond_1c3
    const-string v2, "AccWrongRange : TEST DONE! PASS!"

    invoke-static {v4, v2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    :goto_1c8
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$munregisterAccWrongRangeListner(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    goto :goto_1d8

    .line 1823
    :cond_1ce
    const-string v2, "AccWrongRange : EVENT_MOVE"

    invoke-static {v4, v2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$munregisterAccWrongRangeListner(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    .line 1827
    :cond_1d8
    :goto_1d8
    return-void
.end method
