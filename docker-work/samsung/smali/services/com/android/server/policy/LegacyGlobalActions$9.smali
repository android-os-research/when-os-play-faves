.class public Lcom/android/server/policy/LegacyGlobalActions$9;
.super Landroid/content/BroadcastReceiver;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .registers 2

    .line 740
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 743
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 744
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3a

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 745
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_3a

    :cond_16
    const-string v0, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    .line 750
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_53

    const-string p1, "android.telephony.extra.PHONE_IN_ECM_STATE"

    .line 753
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_53

    iget-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {p1}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$fgetmIsWaitingForEcmExit(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result p1

    if-eqz p1, :cond_53

    .line 755
    iget-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {p1, v1}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$fputmIsWaitingForEcmExit(Lcom/android/server/policy/LegacyGlobalActions;Z)V

    .line 756
    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$mchangeAirplaneModeSystemSetting(Lcom/android/server/policy/LegacyGlobalActions;Z)V

    goto :goto_53

    :cond_3a
    :goto_3a
    const-string/jumbo p1, "reason"

    .line 746
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "globalactions"

    .line 747
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_53

    .line 748
    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {p0}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$fgetmHandler(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_53
    :goto_53
    return-void
.end method
