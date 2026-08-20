.class Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;
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

    .line 2133
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 2137
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 13
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 2141
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 2143
    .local v0, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_155

    .line 2144
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmBaroDataList(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmBaroCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v1, v2

    .line 2146
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmBaroCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v1

    const-string v2, "MotionRecognitionSensorChecker"

    const/4 v3, 0x1

    if-nez v1, :cond_4d

    .line 2147
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetSENSOR_TYPE_CNT_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v1, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputSENSOR_TYPE_CNT_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 2148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start checking barometer data   >>>>> SENSOR_TYPE_CNT : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetSENSOR_TYPE_CNT_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    :cond_4d
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmBaroCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v1, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmBaroCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 2154
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmBaroCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v1

    const/16 v5, 0x3d

    if-ne v1, v5, :cond_155

    .line 2156
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmBaroDataList(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[F

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorStuckCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[I

    move-result-object v6

    const/4 v7, 0x3

    aget v6, v6, v7

    const-string v8, "Barometer"

    invoke-virtual {v1, v5, v8, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkDataList([FLjava/lang/String;I)Z

    move-result v5

    invoke-static {v1, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputcheckStuckBaro(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V

    .line 2158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkStuckBaro : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetcheckStuckBaro(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetcheckStuckBaro(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z

    move-result v1

    const/4 v5, 0x2

    if-eqz v1, :cond_d4

    .line 2160
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorStuckCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[I

    move-result-object v1

    aget v1, v1, v7

    if-ne v1, v5, :cond_d4

    .line 2161
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$misDiagStuckData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 2162
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mgetSensorStuckData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2163
    .local v1, "result":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    const/16 v8, 0x9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v10}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmDeviceInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendMRSIData(ILjava/lang/String;)V

    .line 2167
    .end local v1    # "result":Ljava/lang/String;
    :cond_d4
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorStuckCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[I

    move-result-object v1

    aget v1, v1, v7

    if-ne v1, v5, :cond_10e

    .line 2168
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_df
    if-ge v1, v7, :cond_f5

    .line 2169
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmBaroStuckData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[F

    move-result-object v5

    const/4 v6, 0x0

    aput v6, v5, v1

    .line 2170
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmBaroStuckAxis(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[Z

    move-result-object v5

    aput-boolean v4, v5, v1

    .line 2168
    add-int/lit8 v1, v1, 0x1

    goto :goto_df

    .line 2172
    .end local v1    # "i":I
    :cond_f5
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_f6
    if-ge v1, v7, :cond_105

    .line 2173
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmStuckAxisData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[Z

    move-result-object v5

    aget-object v5, v5, v7

    aput-boolean v4, v5, v1

    .line 2172
    add-int/lit8 v1, v1, 0x1

    goto :goto_f6

    .line 2175
    .end local v1    # "i":I
    :cond_105
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorStuckCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[I

    move-result-object v1

    aput v4, v1, v7

    goto :goto_120

    .line 2177
    :cond_10e
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorStuckCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[I

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorStuckCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[I

    move-result-object v5

    aget v5, v5, v7

    add-int/2addr v5, v3

    rem-int/2addr v5, v7

    aput v5, v1, v7

    .line 2180
    :goto_120
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetSENSOR_TYPE_UNREGISTERED_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v1, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputSENSOR_TYPE_UNREGISTERED_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 2181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finish pressure data checking   <<<<< SENSOR_TYPE_CNT : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetSENSOR_TYPE_UNREGISTERED_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1, v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmBaroCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 2184
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmPressureEnabled(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V

    .line 2185
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->disableTestSensor()I

    .line 2188
    :cond_155
    return-void
.end method
