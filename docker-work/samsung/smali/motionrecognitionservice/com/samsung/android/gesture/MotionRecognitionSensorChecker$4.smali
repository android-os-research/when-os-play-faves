.class Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;
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

    .line 1644
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 1648
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 14
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 1652
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 1653
    .local v0, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    .line 1654
    .local v1, "type":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a9

    .line 1662
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmAccDataList(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmAccCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v4

    aget-object v3, v3, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v3, v5

    .line 1663
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmAccDataList(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmAccCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v4

    aget-object v3, v3, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v2

    aput v4, v3, v2

    .line 1664
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmAccDataList(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmAccCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v4

    aget-object v3, v3, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x2

    aget v4, v4, v6

    aput v4, v3, v6

    .line 1666
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmAccCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v3

    const-string v4, "MotionRecognitionSensorChecker"

    if-nez v3, :cond_77

    .line 1667
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetSENSOR_TYPE_CNT_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v3, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputSENSOR_TYPE_CNT_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 1668
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start cheking acc data   >>>>> SENSOR TYPE CNT : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetSENSOR_TYPE_CNT_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    :cond_77
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmAccCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v3, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmAccCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 1674
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmAccCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v3

    const/16 v7, 0x259

    if-ne v3, v7, :cond_1bf

    .line 1675
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmAccDataList(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorStuckCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[I

    move-result-object v8

    aget v8, v8, v5

    const-string v9, "Accelerometer"

    invoke-virtual {v3, v7, v9, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkDataList([[FLjava/lang/String;I)Z

    move-result v7

    invoke-static {v3, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputcheckStuckAcc(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V

    .line 1676
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkStuckAcc : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetcheckStuckAcc(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetcheckStuckAcc(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z

    move-result v3

    if-eqz v3, :cond_11c

    .line 1678
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorStuckCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[I

    move-result-object v3

    aget v3, v3, v5

    if-ne v3, v6, :cond_11c

    .line 1679
    invoke-static {}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$sfgetmSensorProbeStatus()[I

    move-result-object v3

    aget v3, v3, v2

    .line 1680
    .local v3, "gyroSupported":I
    if-ne v3, v2, :cond_117

    .line 1681
    const-string v7, "Gyro Sensor is supported!!"

    invoke-static {v4, v7}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmIsMoving(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z

    move-result v7

    if-eqz v7, :cond_111

    .line 1683
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v7, v9}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$misDiagStuckData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11c

    .line 1684
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v7, v9}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mgetSensorStuckData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1685
    .local v7, "result":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    const/4 v9, 0x6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v11}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmDeviceInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendMRSIData(ILjava/lang/String;)V

    .line 1686
    .end local v7    # "result":Ljava/lang/String;
    goto :goto_11c

    .line 1688
    :cond_111
    const-string v7, "Device is not moving! skip acc logging event"

    invoke-static {v4, v7}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11c

    .line 1691
    :cond_117
    const-string v7, "Gyro Sensor isn\'t supported!!"

    invoke-static {v4, v7}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    .end local v3    # "gyroSupported":I
    :cond_11c
    :goto_11c
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorStuckCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[I

    move-result-object v3

    aget v3, v3, v5

    const/4 v7, 0x3

    if-ne v3, v6, :cond_161

    .line 1697
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_128
    if-ge v3, v7, :cond_148

    .line 1698
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_12b
    if-ge v6, v7, :cond_145

    .line 1699
    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmAccStuckData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v8

    aget-object v8, v8, v3

    const/4 v9, 0x0

    aput v9, v8, v6

    .line 1700
    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmAccStuckAxis(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[Z

    move-result-object v8

    aget-object v8, v8, v3

    aput-boolean v5, v8, v6

    .line 1698
    add-int/lit8 v6, v6, 0x1

    goto :goto_12b

    .line 1697
    .end local v6    # "j":I
    :cond_145
    add-int/lit8 v3, v3, 0x1

    goto :goto_128

    .line 1703
    .end local v3    # "i":I
    :cond_148
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_149
    if-ge v3, v7, :cond_158

    .line 1704
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmStuckAxisData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[Z

    move-result-object v6

    aget-object v6, v6, v5

    aput-boolean v5, v6, v3

    .line 1703
    add-int/lit8 v3, v3, 0x1

    goto :goto_149

    .line 1706
    .end local v3    # "i":I
    :cond_158
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorStuckCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[I

    move-result-object v3

    aput v5, v3, v5

    goto :goto_173

    .line 1708
    :cond_161
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorStuckCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[I

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorStuckCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[I

    move-result-object v6

    aget v6, v6, v5

    add-int/2addr v6, v2

    rem-int/2addr v6, v7

    aput v6, v3, v5

    .line 1712
    :goto_173
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetSENSOR_TYPE_UNREGISTERED_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v6

    add-int/2addr v6, v2

    invoke-static {v3, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputSENSOR_TYPE_UNREGISTERED_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 1713
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finish acc data checking <<<<< SENSOR TYPE CNT : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetSENSOR_TYPE_UNREGISTERED_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmAccCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 1716
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmAccEnabled(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V

    .line 1717
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->disableTestSensor()I

    goto :goto_1bf

    .line 1719
    :cond_1a9
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1bf

    .line 1720
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmIsMoving(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z

    move-result v2

    if-nez v2, :cond_1bf

    .line 1721
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$misMoving(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;[F)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmIsMoving(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V

    .line 1724
    :cond_1bf
    :goto_1bf
    return-void
.end method
