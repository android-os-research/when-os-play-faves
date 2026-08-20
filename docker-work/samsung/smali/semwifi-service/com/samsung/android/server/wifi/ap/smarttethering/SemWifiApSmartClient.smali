.class public Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;
.super Ljava/lang/Object;
.source "SemWifiApSmartClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$SortList;,
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$BleWorkHandler;,
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$SemWifiApSmartClientReceiver;
    }
.end annotation


# static fields
.field private static final REDUCE_DEVICE_NAME_POLICY_BRAND_GALAXY:Ljava/lang/String; = "Galaxy"

.field private static final REDUCE_DEVICE_NAME_POLICY_NETWORK_5G:Ljava/lang/String; = "5G"

.field private static final REDUCE_DEVICE_NAME_POLICY_NETWORK_LTE:Ljava/lang/String; = "LTE"

.field private static final REDUCE_DEVICE_NAME_POLICY_NETWORK_LTE_BRACKET:Ljava/lang/String; = "(LTE)"

.field private static final START_ADVERTISE:I = 0xa

.field private static final START_ADVERTISE_TIMEOUT:I = 0xc

.field private static final STOP_ADVERTISE:I = 0xb

.field private static TAG:Ljava/lang/String; = "SemWifiApSmartClient"

.field private static final UPDATE_BLE_SCAN_RESULT:I = 0xd

.field private static final WIFIAP_WARNING_STOP_DIALOG:Ljava/lang/String; = "com.samsung.android.settings.wifi.mobileap.wifiapwarning.finish"

.field private static mWifiApSmartClientIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private CLIENT_BLE_UPDATE_SCAN_DATA_INTERVAL:I

.field private isAdvRunning:Z

.field private isJDMDevice:Z

.field private isStartAdvPending:Z

.field private mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

.field mBLEPairingFailedHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$BleWorkHandler;

.field private mBleWorkThread:Landroid/os/HandlerThread;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field private mContext:Landroid/content/Context;

.field private mHashBasedD2DFamilyID:Ljava/lang/Long;

.field private mHashBasedFamilyID:Ljava/lang/Long;

.field private mHashBasedGuid:Ljava/lang/Long;

.field private mIsLcdOn:Z

.field private mLocalLog:Landroid/util/LocalLog;

.field private mNeedAdvertisement:Z

.field private mSmartMHSDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiApBleScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiApSmartClientReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$SemWifiApSmartClientReceiver;

.field private mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field mlowBatteryHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mwifiInfo:Landroid/net/wifi/WifiInfo;


# direct methods
.method public static synthetic $r8$lambda$l3-GzElF366aORz_28XuVKTVe5o(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->lambda$new$0(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetCLIENT_BLE_UPDATE_SCAN_DATA_INTERVAL(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->CLIENT_BLE_UPDATE_SCAN_DATA_INTERVAL:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisAdvRunning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->isAdvRunning:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisStartAdvPending(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->isStartAdvPending:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$BleWorkHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$BleWorkHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;)Landroid/util/LocalLog;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mLocalLog:Landroid/util/LocalLog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApBleScanResults(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApBleScanResults:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisAdvRunning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->isAdvRunning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisStartAdvPending(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->isStartAdvPending:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmwifiInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;Landroid/net/wifi/WifiInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mwifiInfo:Landroid/net/wifi/WifiInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetRssiRoundOffValue(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;Lcom/samsung/android/wifi/SemWifiApBleScanResult;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->getRssiRoundOffValue(Lcom/samsung/android/wifi/SemWifiApBleScanResult;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateLocalResults(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->updateLocalResults()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartClientIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartClientIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartClientIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartClientIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartClientIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartClientIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartClientIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.familyid"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartClientIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.d2dfamilyid"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartClientIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/util/LocalLog;)V
    .registers 6

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mlowBatteryHashMap:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mBLEPairingFailedHashMap:Ljava/util/Map;

    const/16 v0, 0x4e20

    .line 89
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->CLIENT_BLE_UPDATE_SCAN_DATA_INTERVAL:I

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$BleWorkHandler;

    .line 91
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mSmartMHSDevices:Ljava/util/Set;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApBleScanResults:Ljava/util/List;

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mIsLcdOn:Z

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->isJDMDevice:Z

    .line 716
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$1;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 118
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mContext:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 120
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 121
    new-instance p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$SemWifiApSmartClientReceiver;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$SemWifiApSmartClientReceiver;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartClientReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$SemWifiApSmartClientReceiver;

    .line 122
    iput-object p4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mLocalLog:Landroid/util/LocalLog;

    .line 123
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isFactoryBinary()Z

    move-result p1

    if-nez p1, :cond_5c

    .line 124
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartClientReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$SemWifiApSmartClientReceiver;

    sget-object p4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartClientIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_63

    .line 126
    :cond_5c
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    const-string p2, "This devices\'s binary is a factory binary"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_63
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScreenOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mIsLcdOn:Z

    .line 129
    new-instance p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;)V

    invoke-virtual {p3, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    return-void
.end method

.method private addScanResults(Lcom/samsung/android/wifi/SemWifiApBleScanResult;)V
    .registers 3

    .line 883
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApBleScanResults:Ljava/util/List;

    monitor-enter v0

    .line 884
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApBleScanResults:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 885
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private getBssid()Ljava/lang/String;
    .registers 2

    .line 769
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mwifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 770
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mwifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p0

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return-object p0
.end method

.method private getNewUXSSID(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 15

    const-string v0, "\'s"

    const-string v1, " "

    .line 427
    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 430
    :try_start_a
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_47

    .line 432
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 433
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_24} :catch_47

    if-nez v6, :cond_28

    move v6, v3

    goto :goto_29

    :cond_28
    move v6, v4

    .line 436
    :goto_29
    :try_start_29
    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 437
    array-length v7, v2

    move v8, v4

    :goto_31
    if-ge v8, v7, :cond_48

    aget-object v9, v2, v8

    .line 438
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_41} :catch_48

    if-nez v9, :cond_44

    move v6, v3

    :cond_44
    add-int/lit8 v8, v8, 0x1

    goto :goto_31

    :catch_47
    :cond_47
    move v6, v4

    :catch_48
    :cond_48
    const-string v2, "Galaxy"

    .line 446
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const-string v7, "(LTE)"

    const-string v8, "LTE"

    const-string v9, "5G"

    const/4 v10, -0x1

    if-ne v5, v10, :cond_6c

    .line 447
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v10, :cond_6c

    .line 448
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v10, :cond_6c

    .line 449
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v10, :cond_6a

    goto :goto_6c

    :cond_6a
    move v3, v4

    goto :goto_82

    :cond_6c
    :goto_6c
    const-string v4, ""

    .line 451
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 452
    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 453
    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 454
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 455
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 457
    :goto_82
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",isUserNamePresent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",mMHSdeviceType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",OtherStringspresent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    if-ne p2, v2, :cond_fc

    const p2, 0x10403d7

    if-nez v6, :cond_d5

    .line 461
    :try_start_b8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_12a

    .line 463
    :cond_d5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_12a

    :cond_fc
    if-nez v6, :cond_117

    .line 467
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'s "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_12a

    :cond_117
    if-eqz v6, :cond_14c

    if-nez v3, :cond_14c

    .line 471
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    array-length p2, p2

    const/16 p3, 0x20

    if-lt p2, p3, :cond_12c

    .line 472
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->getTruncatedSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_12a
    move-object p1, p0

    goto :goto_14c

    .line 474
    :cond_12c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mContext:Landroid/content/Context;

    const p3, 0x1040e0a

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_14b} :catch_14c

    goto :goto_12a

    :catch_14c
    :cond_14c
    :goto_14c
    return-object p1
.end method

.method private getRssiRoundOffValue(Lcom/samsung/android/wifi/SemWifiApBleScanResult;)I
    .registers 6

    .line 670
    iget p0, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBLERssi:I

    const/16 v0, -0x5a

    const/16 v1, -0x50

    const/16 v2, -0x46

    const/16 v3, -0x3c

    if-lt p0, v3, :cond_e

    move v0, v3

    goto :goto_21

    .line 672
    :cond_e
    iget p0, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBLERssi:I

    if-lt p0, v2, :cond_14

    move v0, v2

    goto :goto_21

    .line 674
    :cond_14
    iget p0, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBLERssi:I

    if-lt p0, v1, :cond_1a

    move v0, v1

    goto :goto_21

    .line 676
    :cond_1a
    iget p0, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBLERssi:I

    if-lt p0, v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/16 v0, -0x64

    .line 681
    :goto_21
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRssiRoundOffValue() - SSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "`s BLERssi value internally is set from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBLERssi:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getclientAdvManufactureData()[B
    .registers 16

    const/16 v0, 0x18

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_d

    .line 736
    aput-byte v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    const/4 v0, 0x1

    aput-byte v0, v1, v2

    const/16 v3, 0x12

    aput-byte v3, v1, v0

    .line 741
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonGuid()J

    move-result-wide v3

    .line 742
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonFamilyId()J

    move-result-wide v5

    .line 743
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonD2DFamilyid()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v3, v9

    const/4 v12, 0x4

    if-eqz v11, :cond_41

    .line 745
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->bytesFromLong(Ljava/lang/Long;)[B

    move-result-object v3

    move v4, v2

    :goto_36
    if-ge v4, v12, :cond_41

    add-int/lit8 v13, v4, 0x2

    .line 747
    aget-byte v14, v3, v4

    aput-byte v14, v1, v13

    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    :cond_41
    cmp-long v3, v5, v9

    if-eqz v3, :cond_59

    .line 751
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->bytesFromLong(Ljava/lang/Long;)[B

    move-result-object v3

    :goto_4d
    if-ge v2, v12, :cond_73

    add-int/lit8 v4, v2, 0x2

    add-int/2addr v4, v12

    .line 753
    aget-byte v5, v3, v2

    aput-byte v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    :cond_59
    if-nez v11, :cond_73

    cmp-long v3, v7, v9

    if-eqz v3, :cond_73

    .line 757
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->bytesFromLong(Ljava/lang/Long;)[B

    move-result-object v3

    :goto_67
    if-ge v2, v12, :cond_73

    add-int/lit8 v4, v2, 0x2

    add-int/2addr v4, v12

    .line 759
    aget-byte v5, v3, v2

    aput-byte v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    :cond_73
    const/16 v2, 0xa

    aput-byte v0, v1, v2

    const/16 v0, 0xb

    .line 763
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->Check_MHS_AES_Key()Z

    move-result p0

    aput-byte p0, v1, v0

    return-object v1
.end method

.method private islegacy(Ljava/lang/String;)Z
    .registers 5

    .line 775
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mContext:Landroid/content/Context;

    const-string v0, "sem_wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz p0, :cond_35

    if-eqz p1, :cond_35

    .line 779
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_35

    .line 781
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "islegacy state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ScanResultMAC "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_36

    :cond_35
    const/4 p0, 0x1

    :goto_36
    return p0
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 3

    .line 130
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mIsLcdOn:Z

    if-nez p1, :cond_f

    .line 132
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    const-string v0, "LCD is OFF,so stop client advertize"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 133
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->setWifiApSmartClient(Z)Z

    :cond_f
    return-void
.end method

.method private updateLocalResults()V
    .registers 11

    .line 796
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApBleScanResults:Ljava/util/List;

    monitor-enter v0

    .line 797
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 799
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 800
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApBleScanResults:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_33

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    .line 801
    iget-wide v6, v6, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mTimeStamp:J

    sub-long v6, v3, v6

    const-wide/16 v8, 0x4e20

    cmp-long v6, v6, v8

    if-lez v6, :cond_30

    .line 802
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_91

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 807
    :cond_33
    :try_start_33
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 808
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApBleScanResults:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iget-object v3, v3, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    if-eqz v3, :cond_89

    .line 810
    sget-object v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removed BLE scan result data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":\tremoved BLE scan result data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 812
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mSmartMHSDevices:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 814
    :cond_89
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApBleScanResults:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_8e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_33 .. :try_end_8e} :catch_8f
    .catchall {:try_start_33 .. :try_end_8e} :catchall_91

    goto :goto_37

    .line 818
    :catch_8f
    :cond_8f
    :try_start_8f
    monitor-exit v0

    return-void

    :catchall_91
    move-exception p0

    monitor-exit v0
    :try_end_93
    .catchall {:try_start_8f .. :try_end_93} :catchall_91

    throw p0
.end method


# virtual methods
.method checkPreConditions()I
    .registers 5

    .line 888
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_29

    .line 890
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    const-string v1, "mBluetoothAdapter==null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\t mBluetoothAdapter==null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const/4 p0, -0x7

    return p0

    .line 894
    :cond_29
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->isJDMDevice:Z

    if-eqz v0, :cond_58

    .line 895
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->getInstance()Lcom/samsung/android/wifi/SemWifiApMacInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->readWifiMacInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_58

    .line 896
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    const-string v1, "JDM MAC address is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\t JDM MAC address is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const/4 p0, -0x6

    return p0

    .line 901
    :cond_58
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    const-string v1, "com.sec.mhs.smarttethering"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isPackageExists(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6f

    .line 903
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    const-string v2, "isPackageExists smarttethering == null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->setWifiApSmartClient(Z)Z

    const/4 p0, -0x1

    return p0

    .line 907
    :cond_6f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_81

    .line 908
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    const-string v0, "not starting scanning ,due to Wi-Fi is OFF"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x3

    return p0

    .line 911
    :cond_81
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 912
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    const-string v0, "Preconditions standalonemode is ON"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 915
    :cond_91
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\t  Preconditions standalonemode is OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 916
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    const-string v2, "Preconditions standalonemode is OFF"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    if-eqz v0, :cond_c7

    .line 919
    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 920
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    const-string v0, "Do not setWifiApSmartClient in EmergencyMode"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x4

    return p0

    .line 923
    :cond_c7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_d7

    const/4 v0, 0x1

    goto :goto_d8

    :cond_d7
    move v0, v1

    :goto_d8
    if-eqz v0, :cond_f2

    .line 925
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAirplaneMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x5

    return p0

    .line 928
    :cond_f2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isNearByAutohotspotEnabled()Z

    move-result v0

    if-nez v0, :cond_11b

    .line 929
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    const-string v1, "not isNearByAutohotspotEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\t not isNearByAutohotspotEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const/4 p0, -0x8

    return p0

    :cond_11b
    return v1
.end method

.method public clearLocalResults()V
    .registers 3

    .line 789
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    const-string v1, "clearLocalResults()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApBleScanResults:Ljava/util/List;

    monitor-enter v0

    .line 791
    :try_start_a
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApBleScanResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 792
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mSmartMHSDevices:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 793
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_16

    throw p0
.end method

.method getBLEPairingFailedHistory(Ljava/lang/String;)Z
    .registers 6

    .line 826
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mBLEPairingFailedHashMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 830
    :goto_d
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBLEPairingFailedHistory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v3, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t:getBLEPairingFailedHistory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return v0
.end method

.method getTruncatedSSID(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 412
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_7
    if-ge v1, p0, :cond_22

    add-int/lit8 v3, v1, 0x1

    .line 414
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v2, v4

    const/16 v4, 0x1f

    if-le v2, v4, :cond_20

    .line 417
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_22

    :cond_20
    move v1, v3

    goto :goto_7

    :cond_22
    :goto_22
    return-object p1
.end method

.method public declared-synchronized getWifiApBleScanResults()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 686
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApBleScanResults:Ljava/util/List;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_93

    .line 687
    :try_start_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 688
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 693
    new-instance v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$SortList;

    invoke-direct {v3, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$SortList;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;)V

    .line 696
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApBleScanResults:Ljava/util/List;

    invoke-static {v4, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 701
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApBleScanResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    .line 702
    iget v5, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    const/16 v6, 0xf

    if-gt v5, v6, :cond_56

    .line 703
    sget-object v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getWifiApBleScanResults() - adding ble to lowBatteryAccessPoints, wifiMac: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", SSID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 706
    :cond_56
    sget-object v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getWifiApBleScanResults() - adding ble to normalAccessPoints, wifiMac: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", SSID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 710
    :cond_7c
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApBleScanResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 711
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApBleScanResults:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 712
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApBleScanResults:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 713
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApBleScanResults:Ljava/util/List;

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_4 .. :try_end_8e} :catchall_90

    monitor-exit p0

    return-object v1

    :catchall_90
    move-exception v1

    .line 714
    :try_start_91
    monitor-exit v0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    :try_start_92
    throw v1
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_93

    :catchall_93
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public geth()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$BleWorkHandler;
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$BleWorkHandler;

    return-object p0
.end method

.method public handleBootCompleted()V
    .registers 4

    .line 506
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    const-string v1, "handleBootCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":\t handleBootCompleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 508
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SemWifiApSmartClientBleHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 509
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 510
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$BleWorkHandler;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mBleWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$BleWorkHandler;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$BleWorkHandler;

    .line 511
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mNeedAdvertisement:Z

    if-eqz v0, :cond_48

    .line 512
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    const-string v1, "need to advertise client packets"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    .line 513
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->sendEmptyMessage(I)V

    :cond_48
    return-void
.end method

.method removeFromScanResults(ILjava/lang/String;)V
    .registers 11

    .line 837
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApBleScanResults:Ljava/util/List;

    monitor-enter v0

    .line 840
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApBleScanResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    add-int/lit8 v3, v3, 0x1

    if-ne p1, v6, :cond_27

    .line 842
    iget-object v7, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    invoke-virtual {v7, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_27

    :goto_25
    move v2, v6

    goto :goto_32

    :cond_27
    if-ne p1, v5, :cond_b

    .line 846
    iget-object v4, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_90

    if-eqz v4, :cond_b

    goto :goto_25

    :cond_32
    :goto_32
    if-eqz v2, :cond_8e

    if-ne p1, v5, :cond_3b

    .line 854
    :try_start_36
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mSmartMHSDevices:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 855
    :cond_3b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApBleScanResults:Ljava/util/List;

    sub-int/2addr v3, v6

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 856
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removed at index:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mWifiApBleScanResults.size():"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApBleScanResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t:removed at index:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mWifiApBleScanResults.size():"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApBleScanResults:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_8e} :catch_8e
    .catchall {:try_start_36 .. :try_end_8e} :catchall_90

    .line 861
    :catch_8e
    :cond_8e
    :try_start_8e
    monitor-exit v0

    return-void

    :catchall_90
    move-exception p0

    monitor-exit v0
    :try_end_92
    .catchall {:try_start_8e .. :try_end_92} :catchall_90

    throw p0
.end method

.method public sendEmptyMessage(I)V
    .registers 5

    .line 138
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$BleWorkHandler;

    if-eqz v0, :cond_a

    const-wide/16 v1, 0xa

    .line 139
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2b

    :cond_a
    if-nez v0, :cond_1b

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1b

    .line 141
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    const-string v0, "START_ADVERTISE with null bleworker"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 142
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mNeedAdvertisement:Z

    goto :goto_2b

    :cond_1b
    if-nez v0, :cond_2b

    const/16 v0, 0xb

    if-ne p1, v0, :cond_2b

    .line 144
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    const-string v0, "STOP_ADVERTISE with null bleworker"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 145
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mNeedAdvertisement:Z

    :cond_2b
    :goto_2b
    return-void
.end method

.method public sendScanResultFromScanner(ILandroid/bluetooth/le/ScanResult;)V
    .registers 52

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 153
    :try_start_4
    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    const-string v4, "sendScanResultFromScanner start"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v3

    const/16 v4, 0x75

    .line 155
    invoke-virtual {v3, v4}, Landroid/bluetooth/le/ScanRecord;->getManufacturerSpecificData(I)[B

    move-result-object v3

    if-nez v3, :cond_1f

    .line 157
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    const-string v2, "mScanResultData is null, therefore returning"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 161
    :cond_1f
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v14

    const/4 v15, 0x1

    if-ne v2, v15, :cond_2d

    .line 170
    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSameUserName()Ljava/lang/String;

    move-result-object v5

    goto :goto_2e

    :cond_2d
    const/4 v5, 0x0

    :goto_2e
    const/4 v6, 0x2

    if-ne v2, v6, :cond_4f

    .line 173
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    move-result v2

    if-nez v2, :cond_46

    const/4 v2, 0x3

    .line 175
    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mContext:Landroid/content/Context;

    const v7, 0x10403d7

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v10, v5

    move v5, v2

    goto :goto_51

    .line 178
    :cond_46
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getUserNameFromFamily([B)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    move v5, v6

    goto :goto_51

    :cond_4f
    move-object v10, v5

    move v5, v15

    :goto_51
    const/16 v2, 0xc

    move v7, v2

    :goto_54
    const/16 v8, 0xf

    if-ge v7, v8, :cond_60

    .line 182
    aget-byte v9, v3, v7

    if-eqz v9, :cond_5d

    goto :goto_60

    :cond_5d
    add-int/lit8 v7, v7, 0x1

    goto :goto_54

    :cond_60
    :goto_60
    if-ne v7, v8, :cond_63

    return-void

    .line 186
    :cond_63
    sget-object v7, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendScanResultFromScanner mUserName :"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    aget-byte v7, v3, v2

    and-int/lit16 v7, v7, 0xf0

    const/4 v9, 0x4

    shr-int/2addr v7, v9

    const/16 v11, 0x10

    invoke-static {v7, v11}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    .line 188
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v3, v2

    and-int/2addr v2, v8

    invoke-static {v2, v11}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 189
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 191
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xd

    aget-byte v12, v3, v2

    and-int/lit16 v12, v12, 0xf0

    shr-int/2addr v12, v9

    invoke-static {v12, v11}, Ljava/lang/Character;->forDigit(II)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 192
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v3, v2

    and-int/2addr v2, v8

    invoke-static {v2, v11}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 193
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    aget-byte v12, v3, v2

    and-int/lit16 v12, v12, 0xf0

    shr-int/2addr v12, v9

    invoke-static {v12, v11}, Ljava/lang/Character;->forDigit(II)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 196
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v3, v2

    and-int/2addr v2, v8

    invoke-static {v2, v11}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 199
    iget-object v7, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    move-result v7

    if-nez v7, :cond_177

    .line 200
    iget-object v7, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mContext:Landroid/content/Context;

    const-string v12, "smart_tethering_d2d_Wifimac"

    invoke-static {v7, v12}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 201
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_150

    return-void

    :cond_150
    const-string v12, "\n"

    .line 204
    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 205
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_177

    .line 207
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "D2DWifiAMC is not in list:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 211
    :cond_177
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 212
    sget-object v12, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendScanResultFromScanner mBLE_MAC:"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v4, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mBLEPairingFailedHashMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    const-wide/16 v12, -0x1

    if-eqz v4, :cond_1b5

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-object v8, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    sub-long v12, v12, v17

    :cond_1b5
    if-eqz v4, :cond_24c

    if-eqz v7, :cond_24c

    .line 217
    iget-object v8, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v8, :cond_24c

    .line 218
    iget-object v8, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1cc

    const-wide/32 v17, 0xea60

    cmp-long v8, v12, v17

    if-ltz v8, :cond_1da

    :cond_1cc
    iget-object v8, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_24c

    const-wide/16 v17, 0x1388

    cmp-long v8, v12, v17

    if-gez v8, :cond_24c

    .line 219
    :cond_1da
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new mBLE_MAC:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v5, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",diff:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ",old BLE mac:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 220
    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":\tnew mBLE_MAC:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v5, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",diff:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ",old BLE mac:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 222
    invoke-virtual {v1, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-virtual {v2, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void

    :cond_24c
    if-eqz v4, :cond_253

    .line 227
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mBLEPairingFailedHashMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_253
    const/16 v4, 0xb

    .line 232
    aget-byte v4, v3, v4

    and-int/lit8 v7, v4, 0x40

    and-int/lit8 v8, v4, -0x40

    if-ne v7, v8, :cond_25f

    move v7, v15

    goto :goto_260

    :cond_25f
    move v7, v6

    :goto_260
    and-int/lit8 v8, v4, 0x4

    if-ne v8, v9, :cond_266

    move v12, v15

    goto :goto_267

    :cond_266
    const/4 v12, 0x0

    :goto_267
    and-int/lit8 v8, v4, 0x2

    if-ne v8, v6, :cond_26d

    move v8, v15

    goto :goto_26e

    :cond_26d
    const/4 v8, 0x0

    :goto_26e
    and-int/lit8 v9, v4, 0x8

    and-int/lit8 v6, v4, 0x38

    if-ne v9, v6, :cond_277

    const/16 v6, 0xf

    goto :goto_29e

    :cond_277
    and-int/lit8 v9, v4, 0x10

    if-ne v9, v6, :cond_27f

    const/16 v4, 0x1e

    :goto_27d
    move v6, v4

    goto :goto_29e

    :cond_27f
    and-int/lit8 v9, v4, 0x18

    if-ne v9, v6, :cond_286

    const/16 v4, 0x2d

    goto :goto_27d

    :cond_286
    and-int/lit8 v9, v4, 0x20

    if-ne v9, v6, :cond_28d

    const/16 v4, 0x3c

    goto :goto_27d

    :cond_28d
    and-int/lit8 v9, v4, 0x28

    if-ne v9, v6, :cond_294

    const/16 v4, 0x4b

    goto :goto_27d

    :cond_294
    and-int/lit8 v4, v4, 0x30

    if-ne v4, v6, :cond_29b

    const/16 v4, 0x5a

    goto :goto_27d

    :cond_29b
    const/16 v4, 0x64

    goto :goto_27d

    :goto_29e
    const/16 v4, 0x22

    new-array v4, v4, [B

    const/16 v9, 0x11

    const/4 v15, 0x0

    const/16 v20, 0x0

    :goto_2a7
    const/16 v11, 0x18

    if-ge v9, v11, :cond_2bb

    .line 266
    aget-byte v11, v3, v9

    if-nez v11, :cond_2b0

    goto :goto_2bb

    :cond_2b0
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v22, v20, 0x1

    .line 269
    aput-byte v11, v4, v20

    add-int/lit8 v9, v9, 0x1

    move/from16 v20, v22

    goto :goto_2a7

    :cond_2bb
    :goto_2bb
    const/16 v9, 0x1a

    move/from16 v11, v20

    const/4 v13, 0x0

    move/from16 v20, v7

    :goto_2c2
    const/16 v7, 0x33

    if-ge v9, v7, :cond_2d6

    .line 272
    aget-byte v7, v3, v9

    if-nez v7, :cond_2cb

    goto :goto_2d6

    :cond_2cb
    add-int/lit8 v23, v11, 0x1

    .line 274
    aput-byte v7, v4, v11

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, 0x1

    move/from16 v11, v23

    goto :goto_2c2

    .line 278
    :cond_2d6
    :goto_2d6
    new-instance v7, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move/from16 v34, v13

    const/4 v13, 0x0

    invoke-direct {v7, v4, v13, v11, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 279
    sget-object v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendScanResultFromScanner SSID:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x10

    .line 280
    aget-byte v9, v3, v4

    const/4 v4, 0x1

    and-int/2addr v9, v4

    if-nez v9, :cond_304

    .line 281
    invoke-direct {v1, v7, v5, v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->getNewUXSSID(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    goto :goto_305

    :cond_304
    move-object v11, v7

    :goto_305
    const/16 v4, 0x10

    .line 284
    aget-byte v7, v3, v4

    const/4 v4, 0x2

    and-int/2addr v7, v4

    if-ne v7, v4, :cond_310

    .line 285
    sget v7, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->MHS_WIFI_6_NETWORK:I

    goto :goto_312

    :cond_310
    move/from16 v7, v20

    :goto_312
    const/16 v4, 0x10

    .line 288
    aget-byte v9, v3, v4

    const/4 v4, 0x4

    and-int/2addr v9, v4

    if-ne v9, v4, :cond_31d

    .line 289
    sget v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->MHS_WIFI_6E_NETWORK:I

    move v7, v4

    :cond_31d
    const/16 v4, 0x10

    .line 291
    aget-byte v9, v3, v4

    and-int/lit8 v4, v9, 0x8

    const/16 v13, 0x8

    if-ne v4, v13, :cond_329

    const/4 v13, 0x1

    goto :goto_32a

    :cond_329
    const/4 v13, 0x0

    :goto_32a
    const/16 v4, 0x10

    and-int/2addr v9, v4

    if-ne v9, v4, :cond_333

    const/16 v4, 0xf

    const/4 v9, 0x1

    goto :goto_336

    :cond_333
    const/16 v4, 0xf

    const/4 v9, 0x0

    :goto_336
    if-le v6, v4, :cond_346

    .line 295
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mlowBatteryHashMap:Ljava/util/HashMap;

    move/from16 v18, v9

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34a

    :cond_346
    move/from16 v18, v9

    const/16 v17, 0x0

    .line 296
    :goto_34a
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mwifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v4, :cond_40c

    .line 297
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->getBssid()Ljava/lang/String;

    move-result-object v4

    .line 298
    iget-object v9, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mlowBatteryHashMap:Ljava/util/HashMap;

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    move/from16 v21, v13

    const/16 v13, 0xf

    if-gt v6, v13, :cond_40e

    if-eqz v4, :cond_40e

    if-eqz v9, :cond_40e

    .line 300
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_40e

    invoke-direct {v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->islegacy(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_40e

    .line 301
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mlowBatteryHashMap:Ljava/util/HashMap;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    const-string v9, "Sending low battery intent"

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getWifiApWarningActivityRunningState()I

    move-result v4

    const/4 v13, 0x1

    if-ne v4, v13, :cond_3b6

    .line 304
    sget-object v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    const-string v9, "sending WIFIAP_WARNING_STOP_DIALOG "

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v9, "com.android.settings"

    .line 306
    invoke-virtual {v4, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.samsung.android.settings.wifi.mobileap.wifiapwarning.finish"

    .line 307
    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    iget-object v9, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3ab
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3ab} :catch_903

    const-wide/16 v19, 0xc8

    .line 310
    :try_start_3ad
    invoke-static/range {v19 .. v20}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3b0
    .catch Ljava/lang/InterruptedException; {:try_start_3ad .. :try_end_3b0} :catch_3b1
    .catch Ljava/lang/Exception; {:try_start_3ad .. :try_end_3b0} :catch_903

    goto :goto_3b6

    :catch_3b1
    move-exception v0

    move-object v4, v0

    .line 312
    :try_start_3b3
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 315
    :cond_3b6
    :goto_3b6
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v9, "com.android.settings"

    const-string v13, "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

    .line 316
    invoke-virtual {v4, v9, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v9, 0x10000000

    .line 317
    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v9, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    .line 318
    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "st_ssid_name"

    .line 319
    invoke-virtual {v4, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "battery_info"

    .line 320
    invoke-virtual {v4, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "wifiap_warning_dialog_type"

    const/16 v13, 0x2a

    .line 321
    invoke-virtual {v4, v9, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    iget-object v9, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 323
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":sending low battery intent mBattery :"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "mMHS_MAC"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v13, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_40e

    :cond_40c
    move/from16 v21, v13

    :cond_40e
    :goto_40e
    if-eqz v2, :cond_90f

    .line 327
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mSmartMHSDevices:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b5

    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 329
    sget-object v9, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " Smart MHS Device with version,"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v9

    const/16 v15, 0xf

    aget-byte v9, v3, v15

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", Bt mac:"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v9, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",mBattery:"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",mNetwork:"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",SSID:"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",mMHS_MAC:"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",mUserName:"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 331
    invoke-virtual {v9, v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->hideString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",Security:"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",mhidden:"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",curTimestamp:"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v22, v8

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ",mBLERssi:"

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "mMHSdeviceType:"

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, v16

    .line 329
    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v8, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":\tSmart MHS Device with version,"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0xf

    aget-byte v15, v3, v13

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ",Bt mac:"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v13, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",mBattery:"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mNetwork:"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",SSID:"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",mMHS_MAC:"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",mUserName:"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 335
    invoke-virtual {v4, v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->hideString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",Security:"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mhidden:"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, v22

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",curTimestamp:"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v22, v12

    move v15, v13

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ",mBLERssi:"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "mMHSdeviceType:"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 333
    invoke-virtual {v8, v4}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-eqz v10, :cond_56e

    .line 338
    new-instance v13, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x2

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    const/16 v9, 0xf

    aget-byte v25, v3, v9

    const/16 v20, 0x0

    move-object v3, v13

    move v12, v15

    move/from16 v15, v18

    move-object v9, v2

    move/from16 v2, v22

    move-object/from16 v36, v13

    move/from16 v35, v21

    const/16 v16, 0x1

    move v13, v2

    move v2, v14

    move/from16 v37, v15

    move-wide/from16 v14, v23

    move/from16 v16, v2

    move/from16 v17, v25

    move/from16 v18, v35

    move/from16 v19, v37

    invoke-direct/range {v3 .. v20}, Lcom/samsung/android/wifi/SemWifiApBleScanResult;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIZZZ)V

    move-object/from16 v2, v36

    .line 340
    invoke-direct {v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->addScanResults(Lcom/samsung/android/wifi/SemWifiApBleScanResult;)V

    .line 342
    :cond_56e
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_client_smart_tethering_settings"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 343
    iget-boolean v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->isAdvRunning:Z

    if-nez v3, :cond_582

    const/4 v8, 0x1

    if-ne v2, v8, :cond_90f

    .line 344
    :cond_582
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.samsung.android.server.wifi.softap.smarttethering.updateautohotspot"

    .line 345
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    sget-object v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    const-string v5, "sent mAutohotspotIntent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 348
    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":\tFound New auto hotspot device, cst:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto/16 :goto_90f

    :cond_5b5
    move v13, v12

    move v9, v14

    move/from16 v4, v17

    move/from16 v37, v18

    move/from16 v35, v21

    move v12, v8

    const/4 v8, 0x1

    .line 350
    iget-object v14, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mSmartMHSDevices:Ljava/util/Set;

    invoke-interface {v14, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_90f

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v14

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    .line 353
    iget-object v8, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApBleScanResults:Ljava/util/List;

    monitor-enter v8
    :try_end_5d2
    .catch Ljava/lang/Exception; {:try_start_3b3 .. :try_end_5d2} :catch_903

    .line 354
    :try_start_5d2
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApBleScanResults:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5d8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6b3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 p2, v4

    move-object/from16 v4, v17

    check-cast v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    move/from16 v36, v15

    .line 355
    iget-object v15, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_689

    if-eqz v10, :cond_689

    .line 356
    new-instance v15, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iget-object v1, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    move-object/from16 v38, v3

    iget v3, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mMHSdeviceType:I

    move/from16 v39, v9

    iget v9, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    move/from16 v40, v13

    iget v13, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mNetworkType:I

    const/16 v21, 0x2

    move/from16 v41, v12

    iget-object v12, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    move-object/from16 v42, v11

    iget-object v11, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    move-object/from16 v43, v10

    iget v10, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mhidden:I

    move/from16 v44, v7

    iget v7, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    move/from16 v45, v5

    move/from16 v46, v6

    iget-wide v5, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mTimeStamp:J

    move-object/from16 v47, v14

    iget v14, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBLERssi:I

    move/from16 v29, v14

    iget v14, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->version:I

    move/from16 v30, v14

    iget-boolean v14, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isDataSaverEnabled:Z

    move/from16 v31, v14

    iget-boolean v14, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isWifiProfileShareEnabled:Z

    const/16 v33, 0x0

    move-object/from16 v16, v15

    move-object/from16 v17, v1

    move/from16 v18, v3

    move/from16 v19, v9

    move/from16 v20, v13

    move-object/from16 v22, v2

    move-object/from16 v23, v12

    move-object/from16 v24, v11

    move/from16 v25, v10

    move/from16 v26, v7

    move-wide/from16 v27, v5

    move/from16 v32, v14

    invoke-direct/range {v16 .. v33}, Lcom/samsung/android/wifi/SemWifiApBleScanResult;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIZZZ)V

    move-object/from16 v1, v47

    .line 358
    iput-object v1, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    move/from16 v3, v46

    .line 359
    iput v3, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    move/from16 v6, v45

    .line 360
    iput v6, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mMHSdeviceType:I

    move/from16 v7, v44

    .line 361
    iput v7, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mNetworkType:I

    move-object/from16 v5, v43

    .line 362
    iput-object v5, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    move-object/from16 v9, v42

    .line 363
    iput-object v9, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    move/from16 v13, v41

    .line 364
    iput v13, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mhidden:I

    move/from16 v10, v40

    .line 365
    iput v10, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    .line 366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mTimeStamp:J

    move/from16 v11, v39

    .line 367
    iput v11, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBLERssi:I

    const/16 v12, 0xf

    .line 368
    aget-byte v14, v38, v12

    iput v14, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->version:I

    move/from16 v12, v35

    .line 369
    iput-boolean v12, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isDataSaverEnabled:Z

    move/from16 v14, v37

    .line 370
    iput-boolean v14, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isWifiProfileShareEnabled:Z

    move-object/from16 p2, v15

    const/4 v15, 0x0

    .line 371
    iput-boolean v15, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isMobileDataLimitReached:Z

    move-object/from16 v4, p2

    goto :goto_6c7

    :cond_689
    move-object/from16 v38, v3

    move v3, v6

    move-object v1, v14

    move/from16 v14, v37

    move v6, v5

    move-object v5, v10

    move v10, v13

    move v13, v12

    move/from16 v12, v35

    move-object/from16 v48, v11

    move v11, v9

    move-object/from16 v9, v48

    move-object/from16 v4, p2

    move/from16 v35, v12

    move v12, v13

    move/from16 v37, v14

    move/from16 v15, v36

    move-object v14, v1

    move v13, v10

    move-object/from16 v1, p0

    move-object v10, v5

    move v5, v6

    move v6, v3

    move-object/from16 v3, v38

    move/from16 v48, v11

    move-object v11, v9

    move/from16 v9, v48

    goto/16 :goto_5d8

    :cond_6b3
    move-object/from16 v38, v3

    move v3, v6

    move-object v1, v14

    move/from16 v36, v15

    move/from16 v14, v37

    move v6, v5

    move-object v5, v10

    move v10, v13

    move v13, v12

    move/from16 v12, v35

    move-object/from16 v48, v11

    move v11, v9

    move-object/from16 v9, v48

    const/4 v4, 0x0

    .line 375
    :goto_6c7
    monitor-exit v8
    :try_end_6c8
    .catchall {:try_start_5d2 .. :try_end_6c8} :catchall_8ff

    if-eqz v4, :cond_70e

    .line 376
    :try_start_6ca
    iget-object v8, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_70e

    iget-object v8, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_70e

    iget v8, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mhidden:I

    if-ne v8, v13, :cond_70e

    iget v8, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    if-ne v8, v10, :cond_70e

    const/16 v8, 0xf

    if-le v3, v8, :cond_6ea

    iget v15, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    if-gt v15, v8, :cond_6f0

    :cond_6ea
    iget v15, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    if-gt v15, v8, :cond_70e

    if-gt v3, v8, :cond_70e

    :cond_6f0
    iget v8, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBLERssi:I

    sub-int/2addr v8, v11

    .line 377
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/16 v15, 0xa

    if-ge v8, v15, :cond_70e

    if-eqz v5, :cond_705

    iget-object v8, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    .line 378
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_70e

    :cond_705
    iget-boolean v8, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isDataSaverEnabled:Z

    if-ne v8, v12, :cond_70e

    iget-boolean v8, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isMobileDataLimitReached:Z

    if-nez v8, :cond_70e

    return-void

    :cond_70e
    move-object/from16 v8, p0

    .line 381
    iget-object v15, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    move/from16 v18, v14

    const-string v14, "wifi_client_smart_tethering_settings"

    move/from16 v35, v12

    const/4 v12, 0x0

    invoke-static {v15, v14, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 382
    iget-boolean v12, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->isAdvRunning:Z

    if-nez v12, :cond_728

    const/4 v12, 0x1

    if-ne v14, v12, :cond_760

    :cond_728
    if-eqz v4, :cond_760

    iget-object v4, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_760

    .line 383
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v12, "com.samsung.android.server.wifi.softap.smarttethering.updateautohotspot"

    .line 384
    invoke-virtual {v4, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    sget-object v12, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    const-string v14, "sent BLE mac changed mAutohotspotIntent"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v12, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 387
    iget-object v4, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ":\t updated New auto hotspot device"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 389
    :cond_760
    sget-object v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "adv_ssid_length,srp_ssid_length:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, v36

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ","

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, v34

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    sget-object v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updated Scanresult data::"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v38 .. v38}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    sget-object v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " updated Smart MHS Device with version,"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0xf

    aget-byte v15, v38, v14

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ",Bt mac:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v14, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",mBattery:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ",mNetwork:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ",SSID:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",mMHS_MAC:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",mUserName"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 393
    invoke-virtual {v14, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->hideString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",Security:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ",mhidden:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ",timestamp:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ",mBLERssi:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ",mMHSdeviceType:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ",isDataSaverEnabled:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, v35

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " isWifiProfileShareEnabled:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, v18

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move/from16 v18, v15

    const-string v15, ",isMobileDataLimitReached:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 391
    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v4, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ":\tupdated Smart MHS Device with version,"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0xf

    aget-byte v15, v38, v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",Bt mac:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v15, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mBattery:"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mNetwork:"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",SSID:"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mMHS_MAC:"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mUserName:"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 398
    invoke-virtual {v1, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->hideString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Security:"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mhidden:"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",curTimestamp:"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",mBLERssi:"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mMHSdeviceType:"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isDataSaverEnabled:"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "isWifiProfileShareEnabled:"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v18

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isMobileDataLimitReached:"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 396
    invoke-virtual {v4, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 401
    iget-object v1, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\tupdated Scanresult data::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v38 .. v38}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_8fe
    .catch Ljava/lang/Exception; {:try_start_6ca .. :try_end_8fe} :catch_903

    goto :goto_90f

    :catchall_8ff
    move-exception v0

    move-object v1, v0

    .line 375
    :try_start_901
    monitor-exit v8
    :try_end_902
    .catchall {:try_start_901 .. :try_end_902} :catchall_8ff

    :try_start_902
    throw v1
    :try_end_903
    .catch Ljava/lang/Exception; {:try_start_902 .. :try_end_903} :catch_903

    :catch_903
    move-exception v0

    move-object v1, v0

    .line 405
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    const-string v3, "for log only, Exception occured"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_90f
    :goto_90f
    return-void
.end method

.method setBLEPairingFailedHistory(Ljava/lang/String;Landroid/util/Pair;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 821
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mBLEPairingFailedHashMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBLEPairingFailedHistory:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",BLE mac:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    iget-object v5, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\t:setBLEPairingFailedHistory:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public setWifiApSmartClient(Z)Z
    .registers 7

    const/16 v0, 0xc

    const/16 v1, 0xa

    const/16 v2, 0xb

    if-eqz p1, :cond_29

    .line 486
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v3, 0x0

    const-string v4, "wifi_ap_smart_d2d_mhs"

    invoke-static {p1, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 487
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$BleWorkHandler;

    if-eqz p1, :cond_25

    .line 488
    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$BleWorkHandler;->removeMessages(I)V

    .line 489
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$BleWorkHandler;

    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$BleWorkHandler;->removeMessages(I)V

    .line 490
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$BleWorkHandler;

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$BleWorkHandler;->removeMessages(I)V

    .line 492
    :cond_25
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->sendEmptyMessage(I)V

    goto :goto_3d

    .line 495
    :cond_29
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$BleWorkHandler;

    if-eqz p1, :cond_3a

    .line 496
    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$BleWorkHandler;->removeMessages(I)V

    .line 497
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$BleWorkHandler;

    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$BleWorkHandler;->removeMessages(I)V

    .line 498
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$BleWorkHandler;

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$BleWorkHandler;->removeMessages(I)V

    .line 500
    :cond_3a
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->sendEmptyMessage(I)V

    :goto_3d
    const/4 p0, 0x1

    return p0
.end method

.method public startWifiApSmartClientAdvertize()V
    .registers 12

    .line 936
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 937
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    const-string v0, "This devices\'s binary is a factory binary"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 940
    :cond_16
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->checkPreConditions()I

    move-result v0

    .line 942
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->isAdvRunning:Z

    if-nez v1, :cond_17e

    if-eqz v0, :cond_22

    goto/16 :goto_17e

    .line 944
    :cond_22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonGuid()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mHashBasedGuid:Ljava/lang/Long;

    .line 945
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonFamilyId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mHashBasedFamilyID:Ljava/lang/Long;

    .line 946
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonD2DFamilyid()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mHashBasedD2DFamilyID:Ljava/lang/Long;

    .line 947
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mHashBasedGuid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mHashBasedD2DFamilyID:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-nez v0, :cond_68

    .line 948
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    const-string v2, "mHashBasedGuid == null and mHashBasedD2DFamilyID is -1"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->setWifiApSmartClient(Z)Z

    return-void

    .line 952
    :cond_68
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x1

    if-eqz v0, :cond_8f

    .line 953
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v0

    if-nez v0, :cond_8f

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isNearByAutohotspotEnabled()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 954
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartBleScanner()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->setIsAutoHotspotBleSet()V

    .line 955
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->semSetStandAloneBleMode(Z)Z

    .line 957
    :cond_8f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_99

    .line 958
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 959
    :cond_99
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-nez v0, :cond_a7

    .line 960
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->isStartAdvPending:Z

    .line 961
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    const-string v0, "mBluetoothLeScanner == null, waiting for isStartAdvPending"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 965
    :cond_a7
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->isAdvRunning:Z

    .line 966
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->getclientAdvManufactureData()[B

    move-result-object v0

    .line 968
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mSmartMHSDevices:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    const/16 v4, 0x64

    if-eqz v3, :cond_ce

    .line 969
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$BleWorkHandler;

    if-eqz v3, :cond_ce

    .line 970
    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    const-string v5, " device needs to advertise with short interval"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x14

    .line 972
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$BleWorkHandler;

    const/16 v6, 0xc

    const-wide/16 v7, 0x4e20

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_cf

    :cond_ce
    move v3, v4

    .line 975
    :goto_cf
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v5, :cond_db

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v5

    if-nez v5, :cond_db

    const/16 v3, 0xa0

    .line 978
    :cond_db
    sget-object v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ": Client startWifiApSmartClientAdvertize,mHashBasedGuid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mHashBasedGuid:Ljava/lang/Long;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ",mHashBasedFamilyID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mHashBasedFamilyID:Ljava/lang/Long;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ",mHashBasedD2DFamilyID:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mHashBasedD2DFamilyID:Ljava/lang/Long;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 978
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":\tClient startWifiApSmartClientAdvertize,mHashBasedGuid:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mHashBasedGuid:Ljava/lang/Long;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mHashBasedFamilyID:Ljava/lang/Long;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mHashBasedD2DFamilyID:Ljava/lang/Long;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 980
    invoke-virtual {v5, v6}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 982
    new-instance v5, Landroid/bluetooth/le/AdvertiseSettings$Builder;

    invoke-direct {v5}, Landroid/bluetooth/le/AdvertiseSettings$Builder;-><init>()V

    .line 983
    invoke-virtual {v5, v4}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v4

    .line 984
    invoke-virtual {v4, v3}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->semSetCustomAdvertiseInterval(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v3

    .line 985
    invoke-virtual {v3, v2}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setConnectable(Z)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v2

    .line 986
    invoke-virtual {v2, v1}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTimeout(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v1

    const/4 v2, 0x3

    .line 987
    invoke-virtual {v1, v2}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v1

    .line 988
    invoke-virtual {v1}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->build()Landroid/bluetooth/le/AdvertiseSettings;

    move-result-object v1

    .line 990
    new-instance v2, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {v2}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    const/16 v3, 0x75

    .line 991
    invoke-virtual {v2, v3, v0}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v0

    .line 992
    invoke-virtual {v0}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object v0

    .line 993
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-virtual {v2, v1, v0, p0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    :cond_17e
    :goto_17e
    return-void
.end method

.method public stopWifiApSmartClientAdvertize()V
    .registers 4

    .line 998
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    const-string v1, "stopWifiApSmartClientAdvertize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->isAdvRunning:Z

    if-nez v0, :cond_c

    return-void

    .line 1002
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    if-eqz v1, :cond_23

    .line 1003
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_17} :catch_18

    goto :goto_23

    :catch_18
    move-exception v0

    .line 1005
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    const-string v2, "Exception occurred"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_23
    :goto_23
    const/4 v0, 0x0

    .line 1008
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->isAdvRunning:Z

    .line 1009
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\tstopWifiApSmartClientAdvertize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method usernameFromScanResults(ILjava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 864
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApBleScanResults:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 867
    :try_start_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->mWifiApBleScanResults:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    const/4 v3, 0x1

    if-ne p1, v3, :cond_24

    .line 869
    iget-object v3, v2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 870
    iget-object v1, v2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    goto :goto_31

    :cond_24
    const/4 v3, 0x2

    if-ne p1, v3, :cond_a

    .line 873
    iget-object v3, v2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 874
    iget-object v1, v2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    .line 878
    :cond_31
    :goto_31
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usernameFromScanResults: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " address: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    monitor-exit v0

    return-object v1

    :catchall_51
    move-exception p0

    .line 880
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_4 .. :try_end_53} :catchall_51

    throw p0
.end method
