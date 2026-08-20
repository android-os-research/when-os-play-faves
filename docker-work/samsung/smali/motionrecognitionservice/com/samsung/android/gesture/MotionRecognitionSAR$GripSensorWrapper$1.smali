.class Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper$1;
.super Ljava/lang/Object;
.source "MotionRecognitionSAR.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;

.field final synthetic val$this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;Lcom/samsung/android/gesture/MotionRecognitionSAR;)V
    .registers 3
    .param p1, "this$1"    # Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;

    .line 328
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper$1;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;

    iput-object p2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper$1;->val$this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 340
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SAR] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper$1;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;

    iget-object v1, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onSensorChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper$1;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 338
    return-void
.end method
