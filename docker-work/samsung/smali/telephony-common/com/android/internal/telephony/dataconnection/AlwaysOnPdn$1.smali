.class Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn$1;
.super Landroid/content/BroadcastReceiver;
.source "AlwaysOnPdn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent.getAction() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->-$$Nest$mlog(Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;Ljava/lang/String;)V

    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5c

    const-string p1, "networkInfo"

    .line 81
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 82
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;

    if-eqz p1, :cond_36

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_36

    const/4 v1, 0x1

    :cond_36
    invoke-static {p2, v1}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->-$$Nest$fputmIsWifiConnected(Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;Z)V

    .line 83
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NETWORK_STATE_CHANGED_ACTION: mIsWifiConnected="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->-$$Nest$fgetmIsWifiConnected(Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->-$$Nest$mlog(Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;Ljava/lang/String;)V

    .line 85
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->-$$Nest$monSecActionIntentNetworkStateChangedAction(Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;)V

    goto/16 :goto_12a

    :cond_5c
    const-string v0, "com.samsung.intent.action.SIMHOTSWAP"

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 88
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;

    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mIsSetAlwaysOnPdn:Z

    goto/16 :goto_12a

    :cond_6a
    const-string v0, "com.sec.epdg.action.EPDG_CONFIGURATION_UPDATED"

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_d8

    const-string p1, "phoneId"

    .line 90
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "epdg_support"

    .line 91
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_82

    return-void

    .line 94
    :cond_82
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_EPDG_CONFIGURATION_UPDATED: epdg_support="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->-$$Nest$mlog(Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;Ljava/lang/String;)V

    if-eqz p2, :cond_12a

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->-$$Nest$fgetmSupportVowifi(Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;)Z

    move-result v0

    if-nez v0, :cond_12a

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-ne p1, v0, :cond_12a

    .line 97
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->-$$Nest$fputmSupportVowifi(Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;Z)V

    .line 98
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->isAlwaysOnPdnRequiredByOperator()Z

    move-result p1

    if-nez p1, :cond_c7

    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->isAlwaysOnPdnRequiredByModem()Z

    move-result p1

    if-eqz p1, :cond_d2

    .line 99
    :cond_c7
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->-$$Nest$fgetmDct(Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object p1

    const-string v0, "default"

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setDataProfileEnabled(Ljava/lang/String;Z)V

    .line 101
    :cond_d2
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->-$$Nest$monSecActionIntentNetworkStateChangedAction(Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;)V

    goto :goto_12a

    :cond_d8
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_114

    const-string p1, "subscription"

    .line 104
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 105
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED, subId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->-$$Nest$mlog(Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;Ljava/lang/String;)V

    .line 106
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p2

    if-eqz p2, :cond_12a

    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;

    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    .line 107
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p2

    if-ne p2, p1, :cond_12a

    .line 108
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->-$$Nest$monSecActionIntentNetworkStateChangedAction(Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;)V

    goto :goto_12a

    .line 111
    :cond_114
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: Unknown action="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->-$$Nest$mlog(Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;Ljava/lang/String;)V

    :cond_12a
    :goto_12a
    return-void
.end method
