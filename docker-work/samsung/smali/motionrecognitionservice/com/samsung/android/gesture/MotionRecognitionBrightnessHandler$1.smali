.class Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler$1;
.super Ljava/lang/Object;
.source "MotionRecognitionBrightnessHandler.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;

    .line 34
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(F)V
    .registers 8
    .param p1, "brightness"    # F

    .line 37
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->-$$Nest$fgetmSensor(Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;)Landroid/hardware/Sensor;

    move-result-object v0

    const-string v1, "BrightnessHandler"

    if-nez v0, :cond_10

    .line 38
    const-string v0, "not support Light Sensor "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void

    .line 41
    :cond_10
    const/4 v0, 0x1

    new-array v0, v0, [F

    .line 42
    .local v0, "bright":[F
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 43
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->-$$Nest$fgetmBrightness(Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;)F

    move-result v2

    aget v4, v0, v3

    cmpl-float v2, v2, v4

    if-nez v2, :cond_28

    .line 44
    return-void

    .line 46
    :cond_28
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->-$$Nest$fgetmSensor(Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;)Landroid/hardware/Sensor;

    move-result-object v2

    const/high16 v4, 0x10000000

    invoke-static {v2, v4, v0}, Landroid/hardware/SensorAdditionalInfo;->createCustomInfo(Landroid/hardware/Sensor;I[F)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v2

    .line 47
    .local v2, "info":Landroid/hardware/SensorAdditionalInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inject brightness = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Brightness: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;)Landroid/hardware/SensorManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v4

    if-nez v4, :cond_67

    .line 49
    const-string v4, "brightness injectSensorData failed "

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_67
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;

    aget v3, v0, v3

    invoke-static {v1, v3}, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->-$$Nest$fputmBrightness(Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;F)V

    .line 52
    return-void
.end method
