.class Lcom/samsung/android/gesture/MotionRecognitionSAR$3;
.super Landroid/hardware/TriggerEventListener;
.source "MotionRecognitionSAR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSAR;
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

    .line 996
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onTrigger$0$com-samsung-android-gesture-MotionRecognitionSAR$3()V
    .registers 7

    .line 1001
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/hardware/SensorManager;

    move-result-object v0

    const v1, 0x10018

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 1002
    .local v0, "gripSensor":Landroid/hardware/Sensor;
    const-string v1, "MotionRecognitionService"

    if-nez v0, :cond_23

    .line 1003
    const-string v2, "[SAR] Main Grip sensor is null "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/hardware/SensorManager;

    move-result-object v2

    const v3, 0x10066

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 1006
    :cond_23
    if-nez v0, :cond_37

    .line 1007
    const-string v2, "[SAR] Sub3 Grip sensor is null "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/hardware/SensorManager;

    move-result-object v2

    const v3, 0x10027

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 1010
    :cond_37
    if-nez v0, :cond_3f

    .line 1011
    const-string v2, "[SAR] Wifi Grip sensor is null "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    return-void

    .line 1015
    :cond_3f
    const/4 v2, 0x1

    new-array v2, v2, [F

    .line 1016
    .local v2, "data":[F
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmGripMotionSensor(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const v4, 0x1006b

    const/4 v5, 0x0

    if-ne v3, v4, :cond_57

    .line 1017
    const/high16 v3, 0x43480000    # 200.0f

    aput v3, v2, v5

    goto :goto_5b

    .line 1019
    :cond_57
    const/high16 v3, 0x42c80000    # 100.0f

    aput v3, v2, v5

    .line 1021
    :goto_5b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SAR] inject - grip is triggered by motion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const/high16 v3, 0x10000000

    invoke-static {v0, v3, v2}, Landroid/hardware/SensorAdditionalInfo;->createCustomInfo(Landroid/hardware/Sensor;I[F)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v3

    .line 1023
    .local v3, "info":Landroid/hardware/SensorAdditionalInfo;
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/hardware/SensorManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v4

    if-nez v4, :cond_8a

    .line 1024
    const-string v4, "[SAR] injectSensorData failed "

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :cond_8a
    return-void
.end method

.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/hardware/TriggerEvent;

    .line 998
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fputmEnabledGripMotion(Lcom/samsung/android/gesture/MotionRecognitionSAR;Z)V

    .line 999
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionSAR$3$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$3$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR$3;)V

    .line 1027
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1028
    return-void
.end method
