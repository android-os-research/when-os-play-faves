.class Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$2;
.super Landroid/os/Handler;
.source "MotionRecognitionSensorChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/SemContextManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 588
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$2;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionSensorChecker"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_64

    goto :goto_5f

    .line 602
    :sswitch_2c
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$2;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$menableFreeFallSensorEvent(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    .line 603
    goto :goto_5f

    .line 594
    :sswitch_32
    const-string v0, "Enable free fall detection service!!"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$2;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$menableFreefreeFallDetection(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    .line 596
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$2;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmDropClassifierSensor(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 597
    const-string v0, "Enable drop classifier service!!"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$2;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$2;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmDropClassifierListener(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$2;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmDropClassifierSensor(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 607
    :cond_5f
    :goto_5f
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 608
    return-void

    nop

    :sswitch_data_64
    .sparse-switch
        0x22 -> :sswitch_32
        0x66 -> :sswitch_2c
    .end sparse-switch
.end method
