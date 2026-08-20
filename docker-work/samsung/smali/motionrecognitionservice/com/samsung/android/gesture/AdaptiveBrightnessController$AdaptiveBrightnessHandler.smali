.class final Lcom/samsung/android/gesture/AdaptiveBrightnessController$AdaptiveBrightnessHandler;
.super Landroid/os/Handler;
.source "AdaptiveBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/AdaptiveBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AdaptiveBrightnessHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/AdaptiveBrightnessController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gesture/AdaptiveBrightnessController;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 115
    iput-object p1, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$AdaptiveBrightnessHandler;->this$0:Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    .line 116
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 117
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 120
    if-eqz p1, :cond_59

    .line 121
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5a

    goto :goto_59

    .line 123
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 124
    .local v0, "lux":F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inject brightness form Cam "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionRecognitionService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$AdaptiveBrightnessHandler;->this$0:Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    iget-object v1, v1, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_34

    .line 127
    const-string v1, "not support physical light Sensor "

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void

    .line 130
    :cond_34
    const/4 v1, 0x1

    new-array v1, v1, [F

    .line 131
    .local v1, "luxData":[F
    const/4 v3, 0x0

    aput v0, v1, v3

    .line 132
    iget-object v3, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$AdaptiveBrightnessHandler;->this$0:Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    iget-object v3, v3, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mSensor:Landroid/hardware/Sensor;

    const v4, 0x10000001

    invoke-static {v3, v4, v1}, Landroid/hardware/SensorAdditionalInfo;->createCustomInfo(Landroid/hardware/Sensor;I[F)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v3

    .line 134
    .local v3, "info":Landroid/hardware/SensorAdditionalInfo;
    const-string v4, "Inject calibrated lux"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v4, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$AdaptiveBrightnessHandler;->this$0:Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    iget-object v4, v4, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v3}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v4

    if-nez v4, :cond_59

    .line 136
    const-string v4, "Inject calibrated lux failed "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v0    # "lux":F
    .end local v1    # "luxData":[F
    .end local v3    # "info":Landroid/hardware/SensorAdditionalInfo;
    :cond_59
    :goto_59
    return-void

    :pswitch_data_5a
    .packed-switch 0x55
        :pswitch_8
    .end packed-switch
.end method
