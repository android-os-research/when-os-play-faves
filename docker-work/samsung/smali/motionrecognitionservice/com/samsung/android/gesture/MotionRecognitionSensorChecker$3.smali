.class Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;
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

    .line 623
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SensorCheckingHandler : event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionSensorChecker"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_40

    goto :goto_3c

    .line 640
    :sswitch_20
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mdisableFreeFallSensorEvent(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    .line 641
    goto :goto_3c

    .line 637
    :sswitch_26
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mForceStopSensor(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    .line 638
    goto :goto_3c

    .line 633
    :sswitch_2c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 634
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1, v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mcheckSensorHubResetStatus(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Landroid/os/Bundle;)V

    .line 635
    goto :goto_3c

    .line 630
    .end local v0    # "bundle":Landroid/os/Bundle;
    :sswitch_36
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->enableTestSensor()I

    .line 631
    nop

    .line 645
    :goto_3c
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 646
    return-void

    :sswitch_data_40
    .sparse-switch
        0x33 -> :sswitch_36
        0x44 -> :sswitch_2c
        0x55 -> :sswitch_26
        0x77 -> :sswitch_20
    .end sparse-switch
.end method
