.class Lcom/samsung/android/gesture/CheckProximitySensor$1;
.super Ljava/lang/Object;
.source "CheckProximitySensor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/CheckProximitySensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/CheckProximitySensor;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/CheckProximitySensor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/gesture/CheckProximitySensor;

    .line 45
    iput-object p1, p0, Lcom/samsung/android/gesture/CheckProximitySensor$1;->this$0:Lcom/samsung/android/gesture/CheckProximitySensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "event"    # I

    .line 48
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 52
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x1003b

    if-ne v0, v1, :cond_a3

    .line 54
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v0, v0, v2

    const-string v2, "MotionRecognitionService"

    if-nez v0, :cond_54

    .line 55
    const-string v0, "add or remove listener "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/samsung/android/gesture/CheckProximitySensor$1;->this$0:Lcom/samsung/android/gesture/CheckProximitySensor;

    invoke-static {v0}, Lcom/samsung/android/gesture/CheckProximitySensor;->-$$Nest$fgetmSARmotion(Lcom/samsung/android/gesture/CheckProximitySensor;)Lcom/samsung/android/gesture/MotionRecognitionSAR;

    move-result-object v0

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/samsung/android/gesture/CheckProximitySensor$1;->this$0:Lcom/samsung/android/gesture/CheckProximitySensor;

    invoke-static {v0}, Lcom/samsung/android/gesture/CheckProximitySensor;->-$$Nest$fgetmAudioPathPollingHandler(Lcom/samsung/android/gesture/CheckProximitySensor;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_a3

    .line 57
    iget-object v0, p0, Lcom/samsung/android/gesture/CheckProximitySensor$1;->this$0:Lcom/samsung/android/gesture/CheckProximitySensor;

    invoke-static {v0}, Lcom/samsung/android/gesture/CheckProximitySensor;->-$$Nest$fgetmAudioPathPollingHandler(Lcom/samsung/android/gesture/CheckProximitySensor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/gesture/CheckProximitySensor$1;->this$0:Lcom/samsung/android/gesture/CheckProximitySensor;

    invoke-static {v2}, Lcom/samsung/android/gesture/CheckProximitySensor;->-$$Nest$fgetmRunableCheckAudioPath(Lcom/samsung/android/gesture/CheckProximitySensor;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_a3

    .line 58
    iget-object v0, p0, Lcom/samsung/android/gesture/CheckProximitySensor$1;->this$0:Lcom/samsung/android/gesture/CheckProximitySensor;

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/CheckProximitySensor;->-$$Nest$fputmTerminateThread(Lcom/samsung/android/gesture/CheckProximitySensor;Z)V

    .line 59
    iget-object v0, p0, Lcom/samsung/android/gesture/CheckProximitySensor$1;->this$0:Lcom/samsung/android/gesture/CheckProximitySensor;

    invoke-static {v0}, Lcom/samsung/android/gesture/CheckProximitySensor;->-$$Nest$fgetmAudioPathPollingHandler(Lcom/samsung/android/gesture/CheckProximitySensor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/CheckProximitySensor$1;->this$0:Lcom/samsung/android/gesture/CheckProximitySensor;

    invoke-static {v1}, Lcom/samsung/android/gesture/CheckProximitySensor;->-$$Nest$fgetmRunableCheckAudioPath(Lcom/samsung/android/gesture/CheckProximitySensor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a3

    .line 62
    :cond_54
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    const/high16 v3, 0x40800000    # 4.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_a3

    .line 64
    iget-object v0, p0, Lcom/samsung/android/gesture/CheckProximitySensor$1;->this$0:Lcom/samsung/android/gesture/CheckProximitySensor;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/samsung/android/gesture/CheckProximitySensor;->-$$Nest$fputmTerminateThread(Lcom/samsung/android/gesture/CheckProximitySensor;Z)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/gesture/CheckProximitySensor$1;->this$0:Lcom/samsung/android/gesture/CheckProximitySensor;

    invoke-static {v0}, Lcom/samsung/android/gesture/CheckProximitySensor;->-$$Nest$fgetmAudioPathPollingHandler(Lcom/samsung/android/gesture/CheckProximitySensor;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_8d

    .line 66
    iget-object v0, p0, Lcom/samsung/android/gesture/CheckProximitySensor$1;->this$0:Lcom/samsung/android/gesture/CheckProximitySensor;

    invoke-static {v0}, Lcom/samsung/android/gesture/CheckProximitySensor;->-$$Nest$fgetmAudioPathPollingHandler(Lcom/samsung/android/gesture/CheckProximitySensor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/gesture/CheckProximitySensor$1;->this$0:Lcom/samsung/android/gesture/CheckProximitySensor;

    invoke-static {v3}, Lcom/samsung/android/gesture/CheckProximitySensor;->-$$Nest$fgetmRunableCheckAudioPath(Lcom/samsung/android/gesture/CheckProximitySensor;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 67
    iget-object v0, p0, Lcom/samsung/android/gesture/CheckProximitySensor$1;->this$0:Lcom/samsung/android/gesture/CheckProximitySensor;

    invoke-static {v0}, Lcom/samsung/android/gesture/CheckProximitySensor;->-$$Nest$fgetmAudioPathPollingHandler(Lcom/samsung/android/gesture/CheckProximitySensor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/gesture/CheckProximitySensor$1;->this$0:Lcom/samsung/android/gesture/CheckProximitySensor;

    invoke-static {v3}, Lcom/samsung/android/gesture/CheckProximitySensor;->-$$Nest$fgetmRunableCheckAudioPath(Lcom/samsung/android/gesture/CheckProximitySensor;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69
    :cond_8d
    const-string v0, "no more listener "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/samsung/android/gesture/CheckProximitySensor$1;->this$0:Lcom/samsung/android/gesture/CheckProximitySensor;

    invoke-static {v0}, Lcom/samsung/android/gesture/CheckProximitySensor;->-$$Nest$fgetmSARmotion(Lcom/samsung/android/gesture/CheckProximitySensor;)Lcom/samsung/android/gesture/MotionRecognitionSAR;

    move-result-object v0

    if-eqz v0, :cond_a3

    .line 71
    iget-object v0, p0, Lcom/samsung/android/gesture/CheckProximitySensor$1;->this$0:Lcom/samsung/android/gesture/CheckProximitySensor;

    invoke-static {v0}, Lcom/samsung/android/gesture/CheckProximitySensor;->-$$Nest$fgetmSARmotion(Lcom/samsung/android/gesture/CheckProximitySensor;)Lcom/samsung/android/gesture/MotionRecognitionSAR;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->updateSpeakerStatus(Z)V

    .line 75
    :cond_a3
    :goto_a3
    return-void
.end method
