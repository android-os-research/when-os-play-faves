.class Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;
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

    .line 2064
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 2124
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 13
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 2067
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 2069
    .local v0, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const v2, 0x10099

    if-ne v1, v2, :cond_18c

    .line 2070
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSubGyroDataList(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSubGyroCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    aput v2, v1, v3

    .line 2071
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSubGyroDataList(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSubGyroCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v2, v2, v4

    aput v2, v1, v4

    .line 2072
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSubGyroDataList(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSubGyroCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v2, v2, v5

    aput v2, v1, v5

    .line 2074
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSubGyroCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v1

    const-string v2, "MotionRecognitionSensorChecker"

    if-nez v1, :cond_7a

    .line 2075
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetSENSOR_TYPE_CNT_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v1, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputSENSOR_TYPE_CNT_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 2076
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start cheking sub gyro data   >>>>> SENSOR_TYPE_CNT : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetSENSOR_TYPE_CNT_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    :cond_7a
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSubGyroCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v1, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmSubGyroCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 2082
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSubGyroCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v1

    const/16 v6, 0x259

    if-ne v1, v6, :cond_18c

    .line 2083
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSubGyroDataList(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorStuckCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[I

    move-result-object v7

    const/4 v8, 0x5

    aget v7, v7, v8

    const-string v9, "Sub_Gyroscope"

    invoke-virtual {v1, v6, v9, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkDataList([[FLjava/lang/String;I)Z

    move-result v6

    invoke-static {v1, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputcheckStuckSubGyro(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V

    .line 2085
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkStuckSubGyro : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetcheckStuckSubGyro(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetcheckStuckSubGyro(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z

    move-result v1

    if-eqz v1, :cond_100

    .line 2087
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorStuckCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[I

    move-result-object v1

    aget v1, v1, v8

    if-ne v1, v5, :cond_100

    .line 2088
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1, v9}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$misDiagStuckData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_100

    .line 2089
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1, v9}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mgetSensorStuckData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2090
    .local v1, "result":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    const/16 v7, 0xf

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v10}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmDeviceInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendMRSIData(ILjava/lang/String;)V

    .line 2095
    .end local v1    # "result":Ljava/lang/String;
    :cond_100
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorStuckCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[I

    move-result-object v1

    aget v1, v1, v8

    const/4 v6, 0x3

    if-ne v1, v5, :cond_145

    .line 2096
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10c
    if-ge v1, v6, :cond_12c

    .line 2097
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_10f
    if-ge v5, v6, :cond_129

    .line 2098
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSubGyroStuckData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v7

    aget-object v7, v7, v1

    const/4 v9, 0x0

    aput v9, v7, v5

    .line 2099
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSubGyroStuckAxis(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[Z

    move-result-object v7

    aget-object v7, v7, v1

    aput-boolean v3, v7, v5

    .line 2097
    add-int/lit8 v5, v5, 0x1

    goto :goto_10f

    .line 2096
    .end local v5    # "j":I
    :cond_129
    add-int/lit8 v1, v1, 0x1

    goto :goto_10c

    .line 2102
    .end local v1    # "i":I
    :cond_12c
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_12d
    if-ge v1, v6, :cond_13c

    .line 2103
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmStuckAxisData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[Z

    move-result-object v5

    aget-object v5, v5, v8

    aput-boolean v3, v5, v1

    .line 2102
    add-int/lit8 v1, v1, 0x1

    goto :goto_12d

    .line 2105
    .end local v1    # "i":I
    :cond_13c
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorStuckCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[I

    move-result-object v1

    aput v3, v1, v8

    goto :goto_157

    .line 2107
    :cond_145
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorStuckCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[I

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorStuckCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[I

    move-result-object v5

    aget v5, v5, v8

    add-int/2addr v5, v4

    rem-int/2addr v5, v6

    aput v5, v1, v8

    .line 2111
    :goto_157
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetSENSOR_TYPE_UNREGISTERED_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v1, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputSENSOR_TYPE_UNREGISTERED_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 2112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finish sub gyro data checking <<<<< SENSOR_TYPE_CNT : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetSENSOR_TYPE_UNREGISTERED_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmSubGyroCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 2115
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1, v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmSubGyroEnabled(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V

    .line 2116
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->disableTestSensor()I

    .line 2119
    :cond_18c
    return-void
.end method
