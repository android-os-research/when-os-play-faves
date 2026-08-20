.class public Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;
.super Landroid/content/BroadcastReceiver;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V
    .registers 2

    .line 3648
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 3651
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 3653
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ae

    const-string/jumbo p1, "wifi_state"

    const/16 v0, 0xe

    .line 3654
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xb

    const-string v1, "LegacyVpnRunner"

    if-eq p1, p2, :cond_a3

    const/16 p2, 0xd

    if-eq p1, p2, :cond_2a

    if-eq p1, v0, :cond_a3

    goto/16 :goto_ae

    .line 3657
    :cond_2a
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    iget-object p1, p1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmNetworkInfo(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, p2, :cond_ae

    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    iget-object p2, p1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object p2, p2, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    if-eqz p2, :cond_ae

    iget-object p2, p2, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    if-eqz p2, :cond_ae

    .line 3659
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->-$$Nest$fgetipAddresses(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_56

    .line 3660
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->-$$Nest$fputipAddresses(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;Ljava/util/List;)V

    .line 3662
    :cond_56
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    iget-object p1, p1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object p1, p1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object p1, p1, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_62
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_ae

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/LinkAddress;

    .line 3663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addVpnRuleForTethering :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3664
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmVpnRules(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/VpnRules;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/VpnRules;->addVpnRuleForTethering(Ljava/lang/String;)V

    .line 3665
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->-$$Nest$fgetipAddresses(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_62

    .line 3672
    :cond_a3
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->-$$Nest$fputipAddresses(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;Ljava/util/List;)V

    const-string p0, "WIFI_AP_STATE_DISABLED or WIFI_AP_STATE_FAILED"

    .line 3673
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ae
    :goto_ae
    return-void
.end method
