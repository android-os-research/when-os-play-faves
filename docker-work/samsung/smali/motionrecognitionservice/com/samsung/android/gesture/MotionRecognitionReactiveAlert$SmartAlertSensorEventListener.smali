.class Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$SmartAlertSensorEventListener;
.super Ljava/lang/Object;
.source "MotionRecognitionReactiveAlert.java"

# interfaces
.implements Landroid/hardware/SensorEventListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartAlertSensorEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;


# direct methods
.method private constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$SmartAlertSensorEventListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$SmartAlertSensorEventListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$SmartAlertSensorEventListener;-><init>(Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 159
    return-void
.end method

.method public onFlushCompleted(Landroid/hardware/Sensor;)V
    .registers 2
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 163
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SMART_ALERT] onSensorChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

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

    .line 154
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$SmartAlertSensorEventListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->sendMotionReactiveAlert(I)V

    .line 155
    return-void
.end method
