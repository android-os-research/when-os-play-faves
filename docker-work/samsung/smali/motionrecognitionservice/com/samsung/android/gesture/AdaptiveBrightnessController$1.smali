.class Lcom/samsung/android/gesture/AdaptiveBrightnessController$1;
.super Landroid/content/BroadcastReceiver;
.source "AdaptiveBrightnessController.java"


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

    .line 146
    iput-object p1, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$1;->this$0:Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 149
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntentReceiver adaptivebrightnessgo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionRecognitionService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v1, "com.samsung.adaptivebrightnessgo.action.SET_LUX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 152
    iget-object v1, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$1;->this$0:Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    invoke-static {v1}, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->-$$Nest$fgetmServiceStarted(Lcom/samsung/android/gesture/AdaptiveBrightnessController;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 153
    const-string v1, "Skip sending cam_lux data to sensorservice!"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void

    .line 156
    :cond_32
    const/high16 v1, -0x40800000    # -1.0f

    const-string v2, "lux"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    .line 157
    .local v1, "lux":F
    iget-object v2, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$1;->this$0:Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    invoke-static {v2, v1}, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->-$$Nest$msendLuxData(Lcom/samsung/android/gesture/AdaptiveBrightnessController;F)V

    .line 159
    .end local v1    # "lux":F
    :cond_3f
    return-void
.end method
