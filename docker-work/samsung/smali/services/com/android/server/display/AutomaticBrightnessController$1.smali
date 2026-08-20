.class public Lcom/android/server/display/AutomaticBrightnessController$1;
.super Landroid/content/BroadcastReceiver;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 2

    .line 342
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 345
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 346
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string/jumbo v2, "lux"

    const/high16 v3, -0x40800000    # -1.0f

    .line 347
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v2

    .line 348
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const-string v4, "adaptive_brightness_service_start_extra"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {v3, p2}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fputonCABServiceStart(Lcom/android/server/display/AutomaticBrightnessController;Z)V

    const/4 p2, 0x0

    cmpg-float p2, v2, p2

    const-string v3, "  action: "

    const-string v4, "AutomaticBrightnessController"

    if-gez p2, :cond_41

    .line 350
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[CAB] lux value is not received lux: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 352
    :cond_41
    sget-boolean p2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_PMS_LOG:Z

    if-nez p2, :cond_49

    sget-boolean p2, Landroid/os/Build;->IS_ENG:Z

    if-eqz p2, :cond_63

    :cond_49
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CAB] onReceive lux: "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_63
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$mhandleLightSensorEvent(Lcom/android/server/display/AutomaticBrightnessController;JF)V

    :goto_68
    return-void
.end method
