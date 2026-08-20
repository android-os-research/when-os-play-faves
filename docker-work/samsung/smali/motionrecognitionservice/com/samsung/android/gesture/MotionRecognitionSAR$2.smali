.class Lcom/samsung/android/gesture/MotionRecognitionSAR$2;
.super Ljava/lang/Object;
.source "MotionRecognitionSAR.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gesture/MotionRecognitionSAR;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionSAR;

    .line 896
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$2;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "i"    # I

    .line 907
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .line 899
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 900
    .local v0, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const v2, 0x1006d

    if-ne v1, v2, :cond_2d

    .line 901
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SAR] get notifier value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionRecognitionService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$2;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$menableGripMotionSensor(Lcom/samsung/android/gesture/MotionRecognitionSAR;)V

    .line 904
    :cond_2d
    return-void
.end method
