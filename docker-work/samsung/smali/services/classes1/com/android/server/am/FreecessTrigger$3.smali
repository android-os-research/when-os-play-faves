.class public Lcom/android/server/am/FreecessTrigger$3;
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

    .line 158
    iput-object p1, p0, Lcom/android/server/am/FreecessTrigger$3;->this$0:Lcom/android/server/am/FreecessTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 161
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    const-string p1, "com.samsung.android.intent.action.SMARTSWITCH_WORK_START"

    .line 165
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_18

    .line 166
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/am/FreecessController;->setFreecessEnableForSmartSwitch(Z)V

    goto :goto_66

    :cond_18
    const-string p1, "com.samsung.android.intent.action.SMARTSWITCH_WORK_ONGOING"

    .line 167
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3c

    .line 168
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    const-string p1, "FRZ"

    const-string p2, "OFF by SmartSwitch-Ongoing"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->setIsSmartSwitchWorking(Z)V

    .line 170
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessHandler;->sendSetFreecessEnableDelayedMsg(I)V

    goto :goto_66

    :cond_3c
    const-string p1, "com.samsung.android.intent.action.SMARTSWITCH_WORK_FINISH"

    .line 171
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_66

    .line 172
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getIsDumpstateWorking()Z

    move-result p0

    if-nez p0, :cond_66

    .line 173
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    const/16 p1, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 174
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/am/FreecessController;->setIsSmartSwitchWorking(Z)V

    .line 175
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->setFreecessEnableForSmartSwitch(Z)V

    :cond_66
    :goto_66
    return-void
.end method
