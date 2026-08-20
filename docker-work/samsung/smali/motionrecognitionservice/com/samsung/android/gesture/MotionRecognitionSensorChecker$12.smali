.class Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$12;
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

    .line 3499
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$12;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 3503
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 3506
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 3507
    .local v0, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    .line 3508
    .local v1, "type":I
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_5b

    .line 3509
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$12;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v6

    if-ge v6, v2, :cond_ac

    .line 3510
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$12;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallAccelData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$12;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v6

    aget-object v2, v2, v6

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v4

    aput v6, v2, v4

    .line 3511
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$12;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallAccelData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$12;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v4

    aget-object v2, v2, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v5

    aput v4, v2, v5

    .line 3512
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$12;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallAccelData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$12;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v4

    aget-object v2, v2, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v3

    aput v4, v2, v3

    .line 3513
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$12;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v3

    add-int/2addr v3, v5

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmFreeFallAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    goto :goto_ac

    .line 3515
    :cond_5b
    const/4 v6, 0x4

    if-ne v1, v6, :cond_ac

    .line 3516
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$12;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v6

    if-ge v6, v2, :cond_ac

    .line 3517
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$12;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallGyroData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$12;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v6

    aget-object v2, v2, v6

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v4

    aput v6, v2, v4

    .line 3518
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$12;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallGyroData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$12;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v4

    aget-object v2, v2, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v5

    aput v4, v2, v5

    .line 3519
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$12;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallGyroData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$12;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v4

    aget-object v2, v2, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v3

    aput v4, v2, v3

    .line 3520
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$12;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v3

    add-int/2addr v3, v5

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmFreeFallGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 3524
    :cond_ac
    :goto_ac
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$12;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mcheckFreeFallSensorDisabled(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 3526
    const-string v2, "MotionRecognitionSensorChecker"

    const-string v3, "disable free fall sensor event1!"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3527
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$12;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mdisableFreeFallSensorEvent(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    .line 3528
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$12;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$msendFreeFallEventToBigDataServer(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    .line 3530
    :cond_c5
    return-void
.end method
