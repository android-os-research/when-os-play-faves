.class public Lcom/android/server/am/MARsTrigger$2;
.super Landroid/content/BroadcastReceiver;
.source "MARsTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/MARsTrigger;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsTrigger;)V
    .registers 2

    .line 392
    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    if-eqz p2, :cond_5f

    .line 395
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_5f

    .line 397
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 398
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 400
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_50

    .line 401
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/am/MARsPolicyManager;->setScreenOnState(Z)V

    .line 402
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/FreecessController;->getIsDumpstateWorking()Z

    move-result p1

    if-nez p1, :cond_5f

    .line 403
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/MARsPolicyManager;->getCarModeOnState()Z

    move-result p1

    if-nez p1, :cond_5f

    .line 404
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 406
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/MARsHandler;->sendFirstTriggerMsgToMainHandler()V

    goto :goto_5f

    .line 409
    :cond_46
    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    const-wide/16 p1, 0x1388

    const-string v0, "FIRST_ALARM_TRIGGER_ACTION"

    invoke-static {p0, v0, p1, p2}, Lcom/android/server/am/MARsTrigger;->-$$Nest$msetAlarm(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    goto :goto_5f

    .line 412
    :cond_50
    sget-object p0, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5f

    .line 413
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->setCarModeOnState(Z)V

    :cond_5f
    :goto_5f
    return-void
.end method
