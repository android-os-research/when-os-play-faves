.class Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;
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

    .line 1996
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 2000
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 12
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 2004
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 2006
    .local v0, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_188

    .line 2007
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmGyroDataList(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmGyroCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    aput v2, v1, v3

    .line 2008
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmGyroDataList(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmGyroCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v2, v2, v4

    aput v2, v1, v4

    .line 2009
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmGyroDataList(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmGyroCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v2, v2, v5

    aput v2, v1, v5

    .line 2011
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmGyroCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v1

    const-string v2, "MotionRecognitionSensorChecker"

    if-nez v1, :cond_78

    .line 2012
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetSENSOR_TYPE_CNT_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v1, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputSENSOR_TYPE_CNT_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 2013
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start cheking gyro data   >>>>> SENSOR_TYPE_CNT : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetSENSOR_TYPE_CNT_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    :cond_78
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmGyroCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v1, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmGyroCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 2019
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmGyroCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v1

    const/16 v6, 0x259

    if-ne v1, v6, :cond_188

    .line 2020
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmGyroDataList(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorStuckCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[I

    move-result-object v7

    aget v7, v7, v4

    const-string v8, "Gyroscope"

    invoke-virtual {v1, v6, v8, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkDataList([[FLjava/lang/String;I)Z

    move-result v6

    invoke-static {v1, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputcheckStuckGyro(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V

    .line 2022
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkStuckGyro : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetcheckStuckGyro(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetcheckStuckGyro(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z

    move-result v1

    if-eqz v1, :cond_fc

    .line 2024
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorStuckCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[I

    move-result-object v1

    aget v1, v1, v4

    if-ne v1, v5, :cond_fc

    .line 2025
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$misDiagStuckData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fc

    .line 2026
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mgetSensorStuckData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2027
    .local v1, "result":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    const/4 v7, 0x7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v9}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmDeviceInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendMRSIData(ILjava/lang/String;)V

    .line 2032
    .end local v1    # "result":Ljava/lang/String;
    :cond_fc
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorStuckCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[I

    move-result-object v1

    aget v1, v1, v4

    const/4 v6, 0x3

    if-ne v1, v5, :cond_141

    .line 2033
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_108
    if-ge v1, v6, :cond_128

    .line 2034
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_10b
    if-ge v5, v6, :cond_125

    .line 2035
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmGyroStuckData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v7

    aget-object v7, v7, v1

    const/4 v8, 0x0

    aput v8, v7, v5

    .line 2036
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmGyroStuckAxis(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[Z

    move-result-object v7

    aget-object v7, v7, v1

    aput-boolean v3, v7, v5

    .line 2034
    add-int/lit8 v5, v5, 0x1

    goto :goto_10b

    .line 2033
    .end local v5    # "j":I
    :cond_125
    add-int/lit8 v1, v1, 0x1

    goto :goto_108

    .line 2039
    .end local v1    # "i":I
    :cond_128
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_129
    if-ge v1, v6, :cond_138

    .line 2040
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmStuckAxisData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[Z

    move-result-object v5

    aget-object v5, v5, v4

    aput-boolean v3, v5, v1

    .line 2039
    add-int/lit8 v1, v1, 0x1

    goto :goto_129

    .line 2042
    .end local v1    # "i":I
    :cond_138
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorStuckCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[I

    move-result-object v1

    aput v3, v1, v4

    goto :goto_153

    .line 2044
    :cond_141
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorStuckCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[I

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorStuckCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[I

    move-result-object v5

    aget v5, v5, v4

    add-int/2addr v5, v4

    rem-int/2addr v5, v6

    aput v5, v1, v4

    .line 2048
    :goto_153
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetSENSOR_TYPE_UNREGISTERED_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v1, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputSENSOR_TYPE_UNREGISTERED_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 2049
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finish gyro data checking <<<<< SENSOR_TYPE_CNT : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetSENSOR_TYPE_UNREGISTERED_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmGyroCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 2052
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1, v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmGyroEnabled(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V

    .line 2053
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->disableTestSensor()I

    .line 2056
    :cond_188
    return-void
.end method
