.class Lcom/samsung/android/gesture/AdaptiveBrightnessController$4;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/AdaptiveBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/AdaptiveBrightnessController;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/AdaptiveBrightnessController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    .line 249
    iput-object p1, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$4;->this$0:Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 266
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "values = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$4;->this$0:Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    invoke-static {v0}, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->-$$Nest$fgetmServiceStarted(Lcom/samsung/android/gesture/AdaptiveBrightnessController;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 256
    const-string v0, "Skip sending cam_lux data to sensorservice!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void

    .line 259
    :cond_2b
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    .line 260
    .local v0, "lux":F
    iget-object v1, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$4;->this$0:Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    invoke-static {v1, v0}, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->-$$Nest$msendLuxData(Lcom/samsung/android/gesture/AdaptiveBrightnessController;F)V

    .line 261
    return-void
.end method
