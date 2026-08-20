.class Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$13;
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

    .line 3533
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$13;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 3537
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 3540
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 3541
    .local v0, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    .line 3542
    .local v1, "type":I
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0x10097

    if-ne v1, v6, :cond_5e

    .line 3543
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$13;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v6

    if-ge v6, v2, :cond_b1

    .line 3544
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$13;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubAccelData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$13;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v6

    aget-object v2, v2, v6

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v4

    aput v6, v2, v4

    .line 3545
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$13;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubAccelData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$13;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v4

    aget-object v2, v2, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v5

    aput v4, v2, v5

    .line 3546
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$13;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubAccelData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$13;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v4

    aget-object v2, v2, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v3

    aput v4, v2, v3

    .line 3547
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$13;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v3

    add-int/2addr v3, v5

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmFreeFallSubAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    goto :goto_b1

    .line 3549
    :cond_5e
    const v6, 0x10099

    if-ne v1, v6, :cond_b1

    .line 3550
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$13;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v6

    if-ge v6, v2, :cond_b1

    .line 3551
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$13;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubGyroData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$13;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v6

    aget-object v2, v2, v6

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v4

    aput v6, v2, v4

    .line 3552
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$13;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubGyroData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$13;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v4

    aget-object v2, v2, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v5

    aput v4, v2, v5

    .line 3553
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$13;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubGyroData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$13;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v4

    aget-object v2, v2, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v3

    aput v4, v2, v3

    .line 3554
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$13;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v3

    add-int/2addr v3, v5

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmFreeFallSubGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 3558
    :cond_b1
    :goto_b1
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$13;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mcheckFreeFallSensorDisabled(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 3559
    const-string v2, "MotionRecognitionSensorChecker"

    const-string v3, "disable free fall sensor event2!"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3560
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$13;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mdisableFreeFallSensorEvent(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    .line 3561
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$13;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$msendFreeFallEventToBigDataServer(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    .line 3563
    :cond_ca
    return-void
.end method
