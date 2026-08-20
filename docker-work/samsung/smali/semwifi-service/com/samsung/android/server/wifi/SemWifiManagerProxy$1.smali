.class Lcom/samsung/android/server/wifi/SemWifiManagerProxy$1;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiManagerProxy;-><init>(Landroid/content/Context;Landroid/os/HandlerExecutor;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;Landroid/net/wifi/WifiManager;Lcom/samsung/android/server/wifi/util/FeatureUtil;Lcom/samsung/android/server/wifi/util/ScanPool;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .line 163
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 164
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "received action: "

    const-string v4, "SemWifiManagerProxy"

    if-eqz v1, :cond_32

    .line 165
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->-$$Nest$monScreenStateChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Z)V

    .line 166
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    move-result p0

    if-eqz p0, :cond_20d

    .line 167
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20d

    :cond_32
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 169
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_5c

    .line 170
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-static {p1, v5}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->-$$Nest$monScreenStateChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Z)V

    .line 171
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    move-result p0

    if-eqz p0, :cond_20d

    .line 172
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20d

    :cond_5c
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 174
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v6, " state: "

    if-eqz v1, :cond_9e

    const-string p1, "wifi_state"

    const/4 v1, 0x4

    .line 175
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v2, "previous_wifi_state"

    .line 177
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 179
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-static {v1, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->-$$Nest$monWifiStateChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;II)V

    .line 180
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    move-result p0

    if-eqz p0, :cond_20d

    .line 181
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiStateByName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 181
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20d

    :cond_9e
    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 184
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v7, "networkInfo"

    if-eqz v1, :cond_dd

    .line 185
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 187
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->-$$Nest$monNetworkStateChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/net/NetworkInfo;)V

    .line 188
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    move-result p0

    if-eqz p0, :cond_20d

    .line 189
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkInfo$State;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 189
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20d

    :cond_dd
    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 192
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_115

    const/4 p1, 0x2

    const-string v1, "changeReason"

    .line 193
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 195
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->-$$Nest$monConfiguredNetworksChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;I)V

    .line 196
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    move-result p0

    if-eqz p0, :cond_20d

    .line 197
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " reason: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20d

    :cond_115
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    .line 200
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14e

    const/16 p1, -0x7f

    const-string v1, "newRssi"

    .line 201
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 203
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->-$$Nest$monRssiChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;I)V

    .line 204
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    move-result p0

    if-eqz p0, :cond_20d

    .line 205
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " rssi: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20d

    :cond_14e
    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    .line 207
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_177

    .line 208
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->-$$Nest$monLinkConfiguredChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 209
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    move-result p0

    if-eqz p0, :cond_20d

    .line 210
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20d

    :cond_177
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 212
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a7

    const-string p1, "resultsUpdated"

    .line 213
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 215
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->-$$Nest$monScanResult(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Z)V

    .line 216
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    move-result p0

    if-eqz p0, :cond_20d

    .line 217
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "received scan result. succeed: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20d

    :cond_1a7
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 219
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1db

    .line 223
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    if-eqz p1, :cond_1d2

    .line 226
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_1d2

    const-string p1, "p2pGroupInfo"

    .line 227
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz p1, :cond_1d2

    .line 231
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getFrequency()I

    move-result v5

    .line 232
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object p1

    goto :goto_1d5

    :cond_1d2
    const-string p1, ""

    move v2, v5

    .line 235
    :goto_1d5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-static {p0, v2, v5, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->-$$Nest$monP2pConnectionStateChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;ZILjava/lang/String;)V

    goto :goto_20d

    :cond_1db
    const-string v1, "android.net.wifi.aware.action.WIFI_AWARE_RESOURCE_CHANGED"

    .line 236
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20d

    const-string v0, "wifiaware"

    .line 239
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/aware/WifiAwareManager;

    .line 240
    invoke-virtual {p1}, Landroid/net/wifi/aware/WifiAwareManager;->getCharacteristics()Landroid/net/wifi/aware/Characteristics;

    move-result-object p1

    if-eqz p1, :cond_203

    .line 242
    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->getNumberOfSupportedDataPaths()I

    move-result p1

    const-string v0, "android.net.wifi.aware.extra.AWARE_RESOURCES"

    .line 243
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/aware/AwareResources;

    .line 245
    invoke-virtual {p2}, Landroid/net/wifi/aware/AwareResources;->getAvailableDataPathsCount()I

    move-result p2

    sub-int/2addr p1, p2

    goto :goto_204

    :cond_203
    move p1, v5

    .line 247
    :goto_204
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    if-lez p1, :cond_209

    goto :goto_20a

    :cond_209
    move v2, v5

    :goto_20a
    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->-$$Nest$monWifiAwareConnectionStateChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Z)V

    :cond_20d
    :goto_20d
    return-void
.end method
