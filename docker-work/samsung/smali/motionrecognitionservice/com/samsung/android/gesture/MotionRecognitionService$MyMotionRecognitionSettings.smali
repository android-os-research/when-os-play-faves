.class Lcom/samsung/android/gesture/MotionRecognitionService$MyMotionRecognitionSettings;
.super Lcom/samsung/android/gesture/MotionRecognitionSettings;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMotionRecognitionSettings"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionService;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .line 2008
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$MyMotionRecognitionSettings;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    .line 2009
    invoke-static {p1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/gesture/MotionRecognitionSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 2010
    return-void
.end method


# virtual methods
.method public onChangeAdaptiveBrightnessMode(I)V
    .registers 5
    .param p1, "brightness_mode"    # I

    .line 2029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Br mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Calibrated lux status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$MyMotionRecognitionSettings;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmLastCalibratedLuxStatus(Lcom/samsung/android/gesture/MotionRecognitionService;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    if-nez p1, :cond_46

    .line 2031
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$MyMotionRecognitionSettings;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmLastCalibratedLuxStatus(Lcom/samsung/android/gesture/MotionRecognitionService;)F

    move-result v0

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_46

    .line 2032
    const-string v0, "Adaptive brightness is disabled and sABC service is started, stop sABC service!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$MyMotionRecognitionSettings;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->stopAdaptiveBrightness()V

    .line 2034
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$MyMotionRecognitionSettings;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fputmLastCalibratedLuxStatus(Lcom/samsung/android/gesture/MotionRecognitionService;F)V

    .line 2037
    :cond_46
    return-void
.end method

.method public onChangeMotionSettings(I)V
    .registers 7
    .param p1, "bitmaskSensors"    # I

    .line 2014
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2d

    .line 2015
    const/4 v1, 0x1

    shl-int v2, v1, v0

    .line 2016
    .local v2, "bit_pos_sensor":I
    and-int v3, v2, p1

    if-eqz v3, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 2018
    .local v1, "enable":Z
    :goto_d
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$MyMotionRecognitionSettings;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3, v2, v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$museSensor(Lcom/samsung/android/gesture/MotionRecognitionService;IZ)V

    .line 2019
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$MyMotionRecognitionSettings;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmLockEngine(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2020
    :try_start_19
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService$MyMotionRecognitionSettings;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmEngineInitialized(Lcom/samsung/android/gesture/MotionRecognitionService;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 2021
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService$MyMotionRecognitionSettings;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v4, v2, v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$menableSensor(Lcom/samsung/android/gesture/MotionRecognitionService;IZ)V

    .line 2023
    :cond_26
    monitor-exit v3

    .line 2014
    .end local v1    # "enable":Z
    .end local v2    # "bit_pos_sensor":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2023
    .restart local v1    # "enable":Z
    .restart local v2    # "bit_pos_sensor":I
    :catchall_2a
    move-exception v4

    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_19 .. :try_end_2c} :catchall_2a

    throw v4

    .line 2025
    .end local v0    # "i":I
    .end local v1    # "enable":Z
    .end local v2    # "bit_pos_sensor":I
    :cond_2d
    return-void
.end method
