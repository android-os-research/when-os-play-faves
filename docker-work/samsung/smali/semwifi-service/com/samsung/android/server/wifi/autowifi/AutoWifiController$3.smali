.class Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$3;
.super Ljava/lang/Object;
.source "AutoWifiController.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V
    .registers 2

    .line 269
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$3;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLinkConfiguredChanged()V
    .registers 1

    return-void
.end method

.method public onNetworkStateChanged(Landroid/net/NetworkInfo;)V
    .registers 4

    .line 272
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$3;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Landroid/net/NetworkInfo$State;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    if-ne v0, v1, :cond_d

    return-void

    .line 275
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$3;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fputmLastNetworkState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Landroid/net/NetworkInfo$State;)V

    .line 276
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$3;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Landroid/net/NetworkInfo$State;

    move-result-object p1

    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p1, v0, :cond_52

    .line 277
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$3;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_73

    .line 279
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_73

    .line 280
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$3;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_4a

    .line 282
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$3;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$msetWifiNetworkState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;ZLjava/lang/String;)V

    goto :goto_73

    :cond_4a
    const-string p0, "AutoWifiController"

    const-string p1, "network was connected but config is null"

    .line 284
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 287
    :cond_52
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$3;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Landroid/net/NetworkInfo$State;

    move-result-object p1

    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne p1, v0, :cond_62

    .line 288
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$3;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$mnotifyConnectingState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    goto :goto_73

    .line 289
    :cond_62
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$3;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Landroid/net/NetworkInfo$State;

    move-result-object p1

    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p1, v0, :cond_73

    .line 290
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$3;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$msetWifiNetworkState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;ZLjava/lang/String;)V

    :cond_73
    :goto_73
    return-void
.end method
