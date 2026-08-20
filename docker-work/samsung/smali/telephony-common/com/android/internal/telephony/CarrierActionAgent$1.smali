.class Lcom/android/internal/telephony/CarrierActionAgent$1;
.super Landroid/content/BroadcastReceiver;
.source "CarrierActionAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierActionAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CarrierActionAgent;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/CarrierActionAgent;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent$1;->this$0:Lcom/android/internal/telephony/CarrierActionAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ss"

    .line 90
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 91
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x0

    const-string v1, "rebroadcastOnUnlock"

    .line 92
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1c

    return-void

    .line 96
    :cond_1c
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierActionAgent$1;->this$0:Lcom/android/internal/telephony/CarrierActionAgent;

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_26
    return-void
.end method
