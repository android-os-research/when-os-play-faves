.class Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiTwtMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V
    .registers 2

    .line 305
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    if-nez p2, :cond_3

    return-void

    .line 311
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 312
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_47

    const-string p1, "networkInfo"

    .line 313
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    if-eqz p1, :cond_3d

    .line 314
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_3d

    const-string p1, "p2pGroupInfo"

    .line 315
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz p1, :cond_7b

    .line 316
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getFrequency()I

    move-result p1

    const/16 p2, 0x1388

    if-le p1, p2, :cond_7b

    .line 317
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetp2pConnected(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_7b

    .line 320
    :cond_3d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetp2pConnected(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_7b

    :cond_47
    const-string v1, "android.net.wifi.aware.action.WIFI_AWARE_RESOURCE_CHANGED"

    .line 322
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    const-string v0, "wifiaware"

    .line 324
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/aware/WifiAwareManager;

    .line 325
    invoke-virtual {p1}, Landroid/net/wifi/aware/WifiAwareManager;->getCharacteristics()Landroid/net/wifi/aware/Characteristics;

    move-result-object p1

    if-eqz p1, :cond_7b

    .line 327
    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->getNumberOfSupportedDataPaths()I

    move-result p1

    const-string v0, "android.net.wifi.aware.extra.AWARE_RESOURCES"

    .line 328
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/aware/AwareResources;

    .line 330
    invoke-virtual {p2}, Landroid/net/wifi/aware/AwareResources;->getAvailableDataPathsCount()I

    move-result p2

    sub-int/2addr p1, p2

    .line 331
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetawareConnected(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    if-lez p1, :cond_77

    goto :goto_78

    :cond_77
    move v2, v3

    :goto_78
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_7b
    :goto_7b
    return-void
.end method
