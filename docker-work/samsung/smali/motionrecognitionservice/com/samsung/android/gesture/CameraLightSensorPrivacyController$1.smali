.class Lcom/samsung/android/gesture/CameraLightSensorPrivacyController$1;
.super Ljava/lang/Object;
.source "CameraLightSensorPrivacyController.java"

# interfaces
.implements Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;

    .line 45
    iput-object p1, p0, Lcom/samsung/android/gesture/CameraLightSensorPrivacyController$1;->this$0:Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSensorPrivacyChanged(IZ)V
    .registers 8
    .param p1, "sensor"    # I
    .param p2, "enabled"    # Z

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "privacy enabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraLightSensorPrivacyController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v0, "screen_brightness_mode"

    if-eqz p2, :cond_52

    .line 51
    iget-object v2, p0, Lcom/samsung/android/gesture/CameraLightSensorPrivacyController$1;->this$0:Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;

    invoke-static {v2}, Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;->-$$Nest$fgetmContext(Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 53
    .local v2, "lastBrightness":I
    invoke-static {v2}, Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;->-$$Nest$sfputlastSavedBrightness(I)V

    .line 54
    iget-object v4, p0, Lcom/samsung/android/gesture/CameraLightSensorPrivacyController$1;->this$0:Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;

    invoke-static {v4}, Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;->-$$Nest$fgetmContext(Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Brightness before policy applied : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .end local v2    # "lastBrightness":I
    goto :goto_7d

    .line 59
    :cond_52
    iget-object v2, p0, Lcom/samsung/android/gesture/CameraLightSensorPrivacyController$1;->this$0:Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;

    invoke-static {v2}, Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;->-$$Nest$fgetmContext(Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;->-$$Nest$sfgetlastSavedBrightness()I

    move-result v3

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Brightness resumed after policy : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;->-$$Nest$sfgetlastSavedBrightness()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_7d
    return-void
.end method
