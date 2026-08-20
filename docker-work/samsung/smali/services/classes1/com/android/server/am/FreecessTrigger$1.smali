.class public Lcom/android/server/am/FreecessTrigger$1;
.super Landroid/content/BroadcastReceiver;
.source "FreecessTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/FreecessTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/FreecessTrigger;


# direct methods
.method public constructor <init>(Lcom/android/server/am/FreecessTrigger;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/android/server/am/FreecessTrigger$1;->this$0:Lcom/android/server/am/FreecessTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_46

    .line 93
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/am/FreecessController;->setScreenOnState(Z)V

    .line 94
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result p0

    if-eqz p0, :cond_10b

    .line 95
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    if-eqz p0, :cond_33

    .line 96
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    const-string/jumbo p1, "screenOn"

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessHandler;->sendUnfreezeActivePackagesMsg(Ljava/lang/String;)V

    goto :goto_3d

    .line 98
    :cond_33
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    const-string/jumbo p1, "screenOn-widget"

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessHandler;->sendUnfreezeActivePackagesMsg(Ljava/lang/String;)V

    .line 100
    :goto_3d
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler;->sendUnfreezeRequestFocusPackageMsg()V

    goto/16 :goto_10b

    :cond_46
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_78

    .line 103
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/am/FreecessController;->setScreenOnState(Z)V

    .line 104
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/FreecessController;->getScreenOnFreecessEnabled()Z

    move-result p1

    if-eqz p1, :cond_67

    .line 105
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsg()V

    .line 107
    :cond_67
    iget-object p0, p0, Lcom/android/server/am/FreecessTrigger$1;->this$0:Lcom/android/server/am/FreecessTrigger;

    invoke-static {p0}, Lcom/android/server/am/FreecessTrigger;->-$$Nest$fgetmIsRegisteredReceiverForBird(Lcom/android/server/am/FreecessTrigger;)Z

    move-result p0

    if-nez p0, :cond_10b

    .line 108
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->sendGetRestrictionFlagMsgToMainHandler()V

    goto/16 :goto_10b

    .line 110
    :cond_78
    sget-object p0, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9c

    .line 111
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/am/FreecessController;->setCarModeOnState(Z)V

    .line 113
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result p0

    if-eqz p0, :cond_10b

    .line 114
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    const-string p1, "CarMode"

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessHandler;->sendResetAllStateMsg(Ljava/lang/String;)V

    goto/16 :goto_10b

    :cond_9c
    const-string/jumbo p0, "sec.app.policy.UPDATE.ssrm_update_freecess"

    .line 116
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b7

    .line 117
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result p0

    if-eqz p0, :cond_10b

    .line 118
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler;->sendSCPMChangedPkgMsgToDBHandler()V

    goto :goto_10b

    :cond_b7
    const-string p0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 120
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e8

    const-string/jumbo p0, "reason"

    .line 123
    invoke-virtual {p2, p0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_ca

    goto :goto_cb

    :cond_ca
    move v1, v2

    .line 126
    :goto_cb
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/am/FreecessController;->setEmergencyModeOnState(Z)V

    .line 128
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result p0

    if-eqz p0, :cond_10b

    if-eqz v1, :cond_10b

    .line 129
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    const-string p1, "EmeregencyMode"

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessHandler;->sendResetAllStateMsg(Ljava/lang/String;)V

    goto :goto_10b

    :cond_e8
    const-string p0, "android.intent.action.ACTION_SHUTDOWN"

    .line 131
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f8

    const-string p0, "android.intent.action.REBOOT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10b

    .line 132
    :cond_f8
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result p0

    if-eqz p0, :cond_10b

    .line 133
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    const-string p1, "ShutDown"

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessHandler;->sendResetAllStateMsg(Ljava/lang/String;)V

    :cond_10b
    :goto_10b
    return-void
.end method
