.class Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$2;
.super Ljava/lang/Object;
.source "WifiProfileAndQoSProvider.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->checkAndStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)V
    .registers 2

    .line 186
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$2;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLinkConfiguredChanged()V
    .registers 1

    return-void
.end method

.method public onNetworkStateChanged(Landroid/net/NetworkInfo;)V
    .registers 5

    .line 189
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    .line 190
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$2;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Landroid/net/NetworkInfo$State;

    move-result-object v0

    if-ne v0, p1, :cond_d

    return-void

    .line 193
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$2;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fputmLastNetworkState(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;Landroid/net/NetworkInfo$State;)V

    .line 194
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$2;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Landroid/net/NetworkInfo$State;

    move-result-object p1

    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p1, v0, :cond_65

    .line 195
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$2;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    const-string v0, "WifiProfileShare"

    if-nez p1, :cond_30

    const-string p0, "couldn\'t get wifi connection info"

    .line 197
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 200
    :cond_30
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3d

    const-string p0, "connected but network id is -1"

    .line 202
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 205
    :cond_3d
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$2;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-nez v2, :cond_5e

    .line 207
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "connected but config is null, networkId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 210
    :cond_5e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$2;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    const/4 v0, 0x1

    invoke-static {p0, v0, p1, v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$mnotifyWifiNetworkState(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;ZLandroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_76

    .line 211
    :cond_65
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$2;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Landroid/net/NetworkInfo$State;

    move-result-object p1

    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p1, v0, :cond_76

    .line 212
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$2;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$mnotifyWifiNetworkState(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;ZLandroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiConfiguration;)V

    :cond_76
    :goto_76
    return-void
.end method
