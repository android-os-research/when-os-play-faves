.class Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$11;
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

    .line 3304
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$11;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 3308
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 13
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 3311
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 3312
    .local v0, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    .line 3313
    .local v1, "type":I
    const v2, 0x1006c

    if-ne v1, v2, :cond_143

    .line 3314
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v2, v2

    .line 3315
    .local v2, "dropTypeInfo":I
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v4, v4

    .line 3316
    .local v4, "height":I
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$11;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mgetFreeFallTime(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;J)Ljava/lang/String;

    move-result-object v6

    .line 3317
    .local v6, "time":Ljava/lang/String;
    if-ltz v2, :cond_143

    .line 3319
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$11;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    const-string v8, ""

    invoke-static {v7, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmFreeFallInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)V

    .line 3320
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$11;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$11;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v9}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mgetDeviceInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmFreeFallInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)V

    .line 3321
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$11;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$misSensorHubSupported(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z

    move-result v7

    if-eqz v7, :cond_72

    .line 3322
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$11;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$11;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v9}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mgetMcuInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmFreeFallInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)V

    .line 3324
    :cond_72
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DropTypeInfo = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Height = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MotionRecognitionSensorChecker"

    invoke-static {v8, v7}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3325
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$11;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$11;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$sfgetsEventType()[Ljava/lang/String;

    move-result-object v10

    aget-object v3, v10, v3

    const-string v10, "EVENT_TYPE"

    invoke-static {v9, v10, v3, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$maddSensorCheckLog(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmFreeFallInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)V

    .line 3326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$11;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$11;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "FF_HEIGHT"

    invoke-static {v8, v10, v9, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$maddSensorCheckLog(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmFreeFallInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)V

    .line 3327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$11;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$11;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    const-string v9, "FF_TIME"

    invoke-static {v8, v9, v6, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$maddSensorCheckLog(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmFreeFallInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)V

    .line 3328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$11;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$11;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-virtual {v8, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getDropInfo(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "FF_DROP_TYPE"

    invoke-static {v8, v10, v9, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$maddSensorCheckLog(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmFreeFallInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)V

    .line 3329
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$11;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    int-to-long v7, v4

    invoke-static {v3, v7, v8, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mwriteFreeFallLoggingData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;JI)V

    .line 3330
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$11;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_143

    .line 3331
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$11;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0x66

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3336
    .end local v2    # "dropTypeInfo":I
    .end local v4    # "height":I
    .end local v6    # "time":Ljava/lang/String;
    :cond_143
    return-void
.end method
