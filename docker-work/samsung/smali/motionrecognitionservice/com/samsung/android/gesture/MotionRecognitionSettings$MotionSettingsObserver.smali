.class final Lcom/samsung/android/gesture/MotionRecognitionSettings$MotionSettingsObserver;
.super Landroid/database/ContentObserver;
.source "MotionRecognitionSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MotionSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSettings;Landroid/os/Handler;)V
    .registers 4
    .param p2, "handler"    # Landroid/os/Handler;

    .line 147
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings$MotionSettingsObserver;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSettings;

    .line 148
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 149
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->-$$Nest$fputmBitmaskMotionSystemSettingsActivated(Lcom/samsung/android/gesture/MotionRecognitionSettings;I)V

    .line 150
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 157
    const-string v0, "MotionRecognitionService"

    if-nez p2, :cond_a

    .line 158
    const-string v1, "onChange(): Uri is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void

    .line 162
    :cond_a
    const-string v1, "motion_pick_up"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange(): SEM_MOTION_PICK_UP = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b9

    .line 164
    :cond_2e
    const-string v1, "motion_overturn"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange(): SEM_MOTION_OVERTURN = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b9

    .line 166
    :cond_51
    const-string v1, "motion_merged_mute_pause"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange(): SEM_MOTION_MUTE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b9

    .line 168
    :cond_74
    const-string v1, "motion_pick_up_to_call_out"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange(): SEM_MOTION_PICK_UP_TO_CALL_OUT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b9

    .line 170
    :cond_97
    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange(): SCREEN_BRIGHTNESS_MODE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_b9
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings$MotionSettingsObserver;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSettings;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->updateFromMotionSystemSettings()V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings$MotionSettingsObserver;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSettings;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->getBitmaskSensorsActivated()I

    move-result v0

    .line 185
    .local v0, "bitmaskSensorsForMotion":I
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings$MotionSettingsObserver;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSettings;

    invoke-virtual {v1, v0}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->onChangeMotionSettings(I)V

    .line 187
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings$MotionSettingsObserver;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSettings;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->isAdaptiveBrightnessEnabled()I

    move-result v1

    .line 188
    .local v1, "adaptiveBrightnessMode":I
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSettings$MotionSettingsObserver;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSettings;

    invoke-virtual {v2, v1}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->onChangeAdaptiveBrightnessMode(I)V

    .line 189
    return-void

    .line 173
    .end local v0    # "bitmaskSensorsForMotion":I
    .end local v1    # "adaptiveBrightnessMode":I
    :cond_d5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange(): No Match = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method
