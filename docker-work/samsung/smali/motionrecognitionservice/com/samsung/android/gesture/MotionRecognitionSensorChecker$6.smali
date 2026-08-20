.class Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;
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

    .line 1841
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 1913
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 15
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 1844
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 1845
    .local v0, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    .line 1846
    .local v1, "type":I
    const v2, 0x10097

    if-ne v1, v2, :cond_1b0

    .line 1847
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSubAccDataList(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSubAccCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v3

    aget-object v2, v2, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v2, v4

    .line 1848
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSubAccDataList(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSubAccCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v3

    aget-object v2, v2, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v3, v3, v5

    aput v3, v2, v5

    .line 1849
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSubAccDataList(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSubAccCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v3

    aget-object v2, v2, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x2

    aget v3, v3, v6

    aput v3, v2, v6

    .line 1851
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSubAccCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v2

    const-string v3, "MotionRecognitionSensorChecker"

    if-nez v2, :cond_7a

    .line 1852
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetSENSOR_TYPE_CNT_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v7

    add-int/2addr v7, v5

    invoke-static {v2, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputSENSOR_TYPE_CNT_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 1853
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start cheking sub acc data   >>>>> SENSOR TYPE CNT : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetSENSOR_TYPE_CNT_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    :cond_7a
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSubAccCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v7

    add-int/2addr v7, v5

    invoke-static {v2, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmSubAccCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 1859
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSubAccCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v2

    const/16 v7, 0x259

    if-ne v2, v7, :cond_1c8

    .line 1860
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSubAccDataList(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorStuckCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[I

    move-result-object v8

    const/4 v9, 0x4

    aget v8, v8, v9

    const-string v10, "Sub_Accelerometer"

    invoke-virtual {v2, v7, v10, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkDataList([[FLjava/lang/String;I)Z

    move-result v7

    invoke-static {v2, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputcheckStuckSubAcc(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V

    .line 1861
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkStuckSubAcc : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetcheckStuckSubAcc(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetcheckStuckSubAcc(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z

    move-result v2

    if-eqz v2, :cond_123

    .line 1863
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorStuckCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[I

    move-result-object v2

    aget v2, v2, v9

    if-ne v2, v6, :cond_123

    .line 1864
    invoke-static {}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$sfgetmSensorProbeStatus()[I

    move-result-object v2

    const/16 v7, 0x8

    aget v2, v2, v7

    .line 1865
    .local v2, "gyroSupported":I
    if-ne v2, v5, :cond_11e

    .line 1866
    const-string v7, "Sub Gyro Sensor is supported!!"

    invoke-static {v3, v7}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmIsMovingSub(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z

    move-result v7

    if-eqz v7, :cond_118

    .line 1868
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v7, v10}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$misDiagStuckData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_123

    .line 1869
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v7, v10}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mgetSensorStuckData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1870
    .local v7, "result":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    const/16 v10, 0xe

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v12}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmDeviceInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendMRSIData(ILjava/lang/String;)V

    .line 1871
    .end local v7    # "result":Ljava/lang/String;
    goto :goto_123

    .line 1873
    :cond_118
    const-string v7, "Device is not moving! skip sub acc logging event"

    invoke-static {v3, v7}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_123

    .line 1876
    :cond_11e
    const-string v7, "Sub Gyro Sensor isn\'t supported!!"

    invoke-static {v3, v7}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    .end local v2    # "gyroSupported":I
    :cond_123
    :goto_123
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorStuckCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[I

    move-result-object v2

    aget v2, v2, v9

    const/4 v7, 0x3

    if-ne v2, v6, :cond_168

    .line 1882
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12f
    if-ge v2, v7, :cond_14f

    .line 1883
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_132
    if-ge v6, v7, :cond_14c

    .line 1884
    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSubAccStuckData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v8

    aget-object v8, v8, v2

    const/4 v10, 0x0

    aput v10, v8, v6

    .line 1885
    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSubAccStuckAxis(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[Z

    move-result-object v8

    aget-object v8, v8, v2

    aput-boolean v4, v8, v6

    .line 1883
    add-int/lit8 v6, v6, 0x1

    goto :goto_132

    .line 1882
    .end local v6    # "j":I
    :cond_14c
    add-int/lit8 v2, v2, 0x1

    goto :goto_12f

    .line 1888
    .end local v2    # "i":I
    :cond_14f
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_150
    if-ge v2, v7, :cond_15f

    .line 1889
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmStuckAxisData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[Z

    move-result-object v6

    aget-object v6, v6, v9

    aput-boolean v4, v6, v2

    .line 1888
    add-int/lit8 v2, v2, 0x1

    goto :goto_150

    .line 1891
    .end local v2    # "i":I
    :cond_15f
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorStuckCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[I

    move-result-object v2

    aput v4, v2, v9

    goto :goto_17a

    .line 1893
    :cond_168
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorStuckCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[I

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorStuckCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[I

    move-result-object v6

    aget v6, v6, v9

    add-int/2addr v6, v5

    rem-int/2addr v6, v7

    aput v6, v2, v9

    .line 1897
    :goto_17a
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetSENSOR_TYPE_UNREGISTERED_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v2, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputSENSOR_TYPE_UNREGISTERED_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 1898
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finish sub acc data checking <<<<< SENSOR TYPE CNT : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetSENSOR_TYPE_UNREGISTERED_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2, v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmSubAccCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 1901
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmSubAccEnabled(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V

    .line 1902
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->disableTestSensor()I

    goto :goto_1c8

    .line 1904
    :cond_1b0
    const v2, 0x10099

    if-ne v1, v2, :cond_1c8

    .line 1905
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmIsMovingSub(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z

    move-result v2

    if-nez v2, :cond_1c8

    .line 1906
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$misMoving(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;[F)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmIsMovingSub(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V

    .line 1909
    :cond_1c8
    :goto_1c8
    return-void
.end method
