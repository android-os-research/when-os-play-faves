.class public Lcom/android/server/display/WifiDisplayController$18;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .registers 2

    .line 1313
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 1316
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.p2p.STATE_CHANGED"

    .line 1317
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_20

    const-string/jumbo p1, "wifi_p2p_state"

    .line 1320
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_19

    move v1, v2

    .line 1327
    :cond_19
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0, v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mhandleStateChanged(Lcom/android/server/display/WifiDisplayController;Z)V

    goto/16 :goto_140

    :cond_20
    const-string v0, "android.net.wifi.p2p.PEERS_CHANGED"

    .line 1328
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "com.samsung.android.smartmirroring"

    if-eqz v0, :cond_5b

    .line 1333
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mhandlePeersChanged(Lcom/android/server/display/WifiDisplayController;)V

    const-string p1, "connectedDevAddress"

    .line 1335
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wifiP2pDeviceList"

    .line 1336
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 1338
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.WIFI_P2P_PEERS_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1339
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1340
    invoke-virtual {v2, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1341
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1342
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmContext(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_140

    :cond_5b
    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 1343
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "WifiDisplayController"

    if-eqz v0, :cond_c8

    const-string/jumbo v0, "networkInfo"

    .line 1344
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 1351
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmWifiDisplayConfig(Lcom/android/server/display/WifiDisplayController;)Landroid/hardware/display/SemWifiDisplayConfig;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/display/SemWifiDisplayConfig;->getConnectionType()I

    move-result v5

    if-eq v5, v2, :cond_8f

    .line 1352
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "do not handle p2p intent, action = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1355
    :cond_8f
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v2, :cond_9d

    const-string p0, "do not handle p2p CONNECTING state"

    .line 1356
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1359
    :cond_9d
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p1, v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mhandleConnectionChanged(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;)V

    const-string/jumbo p1, "wifiP2pInfo"

    .line 1362
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 1364
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.WIFI_P2P_CONNECTION_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1365
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1366
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1367
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1368
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmContext(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_140

    :cond_c8
    const-string v0, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    .line 1369
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 1370
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo p1, "wifiP2pDevice"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {p0, p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fputmThisDevice(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_140

    :cond_df
    const-string v0, "android.net.wifi.p2p.action.WIFI_P2P_REQUEST_RESPONSE_CHANGED"

    .line 1377
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_140

    const-string p1, "android.net.wifi.p2p.extra.REQUEST_RESPONSE"

    .line 1379
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 1380
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received WifiP2pManager.ACTION_WIFI_P2P_REQUEST_RESPONSE_CHANGED : requestAccepted = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p2}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmWifiDisplayCertMode(Lcom/android/server/display/WifiDisplayController;)Z

    move-result p2

    if-nez p2, :cond_140

    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p2}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmConnectingDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object p2

    if-eqz p2, :cond_140

    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p2}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmWifiDisplayConfig(Lcom/android/server/display/WifiDisplayController;)Landroid/hardware/display/SemWifiDisplayConfig;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/display/SemWifiDisplayConfig;->isPinRequest()Z

    move-result p2

    if-eqz p2, :cond_140

    if-eqz p1, :cond_136

    const-string p1, "User accepted PIN connect"

    .line 1384
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmHandler(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmConnectionTimeout(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x7530

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_140

    :cond_136
    const-string p1, "User cancelled PIN connect or timeout"

    .line 1387
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mdisconnect(Lcom/android/server/display/WifiDisplayController;)V

    :cond_140
    :goto_140
    return-void
.end method
