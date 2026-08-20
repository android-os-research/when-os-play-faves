.class public Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;
.super Ljava/lang/Object;
.source "SemStrongRssiRoaming.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;,
        Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$NetworkPartialScanListener;
    }
.end annotation


# static fields
.field private static final APE_EXTRA_ENABLE:Ljava/lang/String; = "enable"

.field private static final APE_EXTRA_MSG_TYPE:Ljava/lang/String; = "msg_type"

.field private static final APE_EXTRA_MSG_TYPE_REAL_TIME_APP_INFO:Ljava/lang/String; = "REALTIME_APP_INFO"

.field private static final APE_INFO_INTENT:Ljava/lang/String; = "com.samsung.android.wifi.APE_INFO"

.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0xc8

.field private static final DUMP_TITLE:Ljava/lang/String;

.field private static final EVENT_AWARE_CONNECTION_CHANGED:I = 0xc

.field private static final EVENT_ENABLE_POLLING:I = 0x9

.field private static final EVENT_GET_WIFI_INFO_POLL:I = 0x5

.field private static final EVENT_P2P_CONNECTION_CHANGED:I = 0xb

.field private static final EVENT_PARTIAL_SCAN_FAIL_REPORTED:I = 0x8

.field private static final EVENT_PARTIAL_SCAN_RESULTS_REPORTED:I = 0x7

.field private static final EVENT_REALTIME_APP_DETECTED:I = 0xa

.field private static final EVENT_SCREEN_CHANGED:I = 0x6

.field public static final EVENT_WIFI_CONNECTED:I = 0x2

.field public static final EVENT_WIFI_DISCONNECTED:I = 0x3

.field public static final EVENT_WIFI_ENABLED:I = 0x1

.field public static final EVENT_WIFI_ROAMING:I = 0x4

.field private static final POLLING_INTERVAL_MS:I = 0xbb8

.field private static final POLLING_RETRY_INTERVAL_MS:I = 0x493e0

.field private static final PSM_ENABLED:Ljava/lang/String; = "1"

.field private static final ROAMING_STATE_BITMASK_AWARE_DISCONNECTED:I = 0x20

.field private static final ROAMING_STATE_BITMASK_CURRENT_BAND_IS_NOT_6GHZ:I = 0x4

.field private static final ROAMING_STATE_BITMASK_DEFAULT:I = 0x30

.field private static final ROAMING_STATE_BITMASK_LCD_ON:I = 0x1

.field private static final ROAMING_STATE_BITMASK_MATCHED_POLLING_CONDITION:I = 0x3f

.field private static final ROAMING_STATE_BITMASK_P2P_DISCONNECTED:I = 0x10

.field private static final ROAMING_STATE_BITMASK_RCL_BAND_HAS_6GHZ:I = 0x8

.field private static final ROAMING_STATE_BITMASK_WIFI_CONNECTED:I = 0x2

.field private static final ROAM_CONDITION_RSSI_COUNT:I = 0x3

.field private static final ROAM_CONDITION_RSSI_DIFF:I = 0x8

.field private static final ROAM_CONDITION_RSSI_MIN:I = -0x37

.field private static final ROAM_SCAN_RETRY_COUNT:I = 0x1

.field private static final STRONG_RSSI_ROAMING_INTENT_EXTRA_INTERVAL_MS:Ljava/lang/String; = "PollingRetryIntervalMs"

.field private static final STRONG_RSSI_ROAMING_INTENT_POLLING_RETRY_INTERVAL:Ljava/lang/String; = "com.samsung.android.StrongRssiRoaming.POLLING_RETRY_INTERVAL"

.field private static final TAG:Ljava/lang/String; = "SemStrongRssiRoaming"

.field private static final TARGET_BAND_IS_6GHZ:I = 0x1

.field private static final VERSION:Ljava/lang/String; = "1.4"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private final mContext:Landroid/content/Context;

.field private final mFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

.field private final mHandler:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;

.field private final mHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInterfaceName:Ljava/lang/String;

.field private final mLooper:Landroid/os/Looper;

.field private final mNetworkPartialScanListener:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$NetworkPartialScanListener;

.field private mPollingEnabled:Z

.field private mPollingRetryIntervalMs:I

.field private final mPsmEnabled:Z

.field private mRealTimeAppDetected:Z

.field private mRegistered:Z

.field private mRoamScanRetryCount:I

.field private final mRoamingAssistant:Lcom/samsung/android/server/wifi/SemRoamingAssistant;

.field private final mRoamingFrequencyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRoamingProcessor:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

.field private mRoamingState:I

.field private final mRssiHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScpmEnabled:Z

.field private final mScreenStateListener:Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;

.field private mVerboseLoggingEnabled:Z

.field private final mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private final mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiScanner:Landroid/net/wifi/WifiScanner;


# direct methods
.method public static synthetic $r8$lambda$6colDuW3PlNyjfKn4jiy5wAJcUY(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->lambda$new$0(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mHandler:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mInterfaceName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPollingRetryIntervalMs(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mPollingRetryIntervalMs:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPsmEnabled(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mPsmEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRealTimeAppDetected(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRealTimeAppDetected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRoamScanRetryCount(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamScanRetryCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRoamingProcessor(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingProcessor:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScpmEnabled(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mScpmEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Landroid/net/wifi/WifiInfo;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmPollingRetryIntervalMs(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mPollingRetryIntervalMs:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRealTimeAppDetected(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRealTimeAppDetected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRoamScanRetryCount(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamScanRetryCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Landroid/net/wifi/WifiInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckRoamingFrequencyList(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->checkRoamingFrequencyList(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisablePolling(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->disablePolling()V

    return-void
.end method

.method static bridge synthetic -$$Nest$menablePolling(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->enablePolling()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetWifiScanner(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->getWifiScanner()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misPollingCondition(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->isPollingCondition()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misRoamCondition(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->isRoamCondition()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msendConnectivityLog(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->sendConnectivityLog(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetRoamingStateBitMask(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->setRoamingStateBitMask(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartPartialScan(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->startPartialScan()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAwareState(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->updateAwareState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateConnectStateAndBand(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->updateConnectStateAndBand()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateP2PState(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->updateP2PState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePollingState(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->updatePollingState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRssiHistory(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->updateRssiHistory()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 60
    const-class v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (v"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "1.4"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") history:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->DUMP_TITLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Landroid/os/HandlerThread;)V
    .registers 6

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mHistory:Ljava/util/LinkedList;

    .line 127
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRssiHistory:Ljava/util/LinkedList;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingFrequencyList:Ljava/util/List;

    const/16 v0, 0x30

    .line 138
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingState:I

    const v0, 0x493e0

    .line 140
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mPollingRetryIntervalMs:I

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mPollingEnabled:Z

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRealTimeAppDetected:Z

    .line 144
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mScpmEnabled:Z

    .line 145
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRegistered:Z

    .line 149
    iput-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mContext:Landroid/content/Context;

    .line 150
    iput-object p2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 151
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 152
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiMonitor()Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 153
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    const-string v1, "wifiaware"

    .line 154
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/aware/WifiAwareManager;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    const-string v1, "wifip2p"

    .line 155
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 156
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mLooper:Landroid/os/Looper;

    .line 157
    new-instance p3, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;-><init>(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mHandler:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;

    .line 158
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getRoamingAssistant()Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingAssistant:Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    .line 159
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getRoamingProcessor()Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingProcessor:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

    .line 160
    new-instance p1, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$NetworkPartialScanListener;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$NetworkPartialScanListener;-><init>(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$NetworkPartialScanListener-IA;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mNetworkPartialScanListener:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$NetworkPartialScanListener;

    .line 161
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiFeatureController()Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 162
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->makeBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->isPowerSaveModeEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mPsmEnabled:Z

    .line 164
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    move-result p3

    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mVerboseLoggingEnabled:Z

    .line 165
    new-instance p3, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V

    iput-object p3, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mScreenStateListener:Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;

    if-nez p2, :cond_9f

    .line 168
    new-instance p2, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->registerListener(Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController$Listener;)V

    :cond_9f
    return-void
.end method

.method private checkRoamingFrequencyList(Ljava/lang/String;I)V
    .registers 7

    .line 369
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingAssistant:Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->getNetworkFrequencyList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingFrequencyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x1

    if-eqz v0, :cond_4d

    .line 372
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_4d

    .line 375
    :cond_17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1b
    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRoamingFrequencyList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->logV(Ljava/lang/String;)V

    if-ne p2, v1, :cond_1b

    .line 378
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/net/wifi/ScanResult;->is6GHz(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 379
    iget-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingFrequencyList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 373
    :cond_4d
    :goto_4d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wi-Fi RCL is empty "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->logV(Ljava/lang/String;)V

    :cond_61
    const/16 p1, 0x8

    .line 385
    iget-object p2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingFrequencyList:Ljava/util/List;

    .line 386
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v1

    .line 385
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->setRoamingStateBitMask(IZ)V

    return-void
.end method

.method private disablePolling()V
    .registers 5

    const/4 v0, 0x0

    .line 574
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mPollingEnabled:Z

    .line 575
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->stopPolling()V

    .line 576
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mHandler:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;

    const/16 v1, 0x9

    .line 577
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mPollingRetryIntervalMs:I

    int-to-long v2, p0

    .line 576
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private enablePolling()V
    .registers 2

    const/4 v0, 0x1

    .line 569
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mPollingEnabled:Z

    .line 570
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->updatePollingState()V

    return-void
.end method

.method private getRoamingStateBitMask(I)Z
    .registers 2

    .line 305
    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingState:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private getWifiScanner()Z
    .registers 2

    .line 267
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    if-nez v0, :cond_c

    .line 268
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 271
    :cond_c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private isPollingCondition()Z
    .registers 2

    .line 323
    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingState:I

    const/16 v0, 0x3f

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private isPowerSaveModeEnabled()Z
    .registers 5

    .line 279
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getVendorConnFileInfo(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_b

    const/4 p0, 0x1

    return p0

    .line 283
    :cond_b
    sget-object v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPowerSaveModeEnabled is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isRoamCondition()Z
    .registers 6

    .line 589
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRssiHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_b

    return v1

    .line 593
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRssiHistory:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 595
    iget-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRssiHistory:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :cond_1e
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v4, v0, :cond_32

    move v0, v4

    goto :goto_1e

    :cond_32
    if-le v4, v3, :cond_1e

    move v3, v4

    goto :goto_1e

    :cond_36
    const/16 v2, -0x37

    if-lt v0, v2, :cond_47

    sub-int/2addr v3, v0

    const/16 v0, 0x8

    if-le v3, v0, :cond_40

    goto :goto_47

    .line 607
    :cond_40
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRealTimeAppDetected:Z

    if-eqz p0, :cond_45

    return v1

    :cond_45
    const/4 p0, 0x1

    return p0

    :cond_47
    :goto_47
    return v1
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 3

    .line 165
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mHandler:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private makeBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .registers 2

    .line 244
    new-instance v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$2;-><init>(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V

    return-object v0
.end method

.method private recordHistory(Ljava/lang/String;)V
    .registers 6

    .line 615
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS "

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    .line 616
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 617
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mHistory:Ljava/util/LinkedList;

    monitor-enter v1

    .line 618
    :try_start_19
    iget-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mHistory:Ljava/util/LinkedList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 619
    :goto_2d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v0, 0xc8

    if-le p1, v0, :cond_3d

    .line 620
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_2d

    .line 622
    :cond_3d
    monitor-exit v1

    return-void

    :catchall_3f
    move-exception p0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_19 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method private registerListenerAndIntent()V
    .registers 4

    .line 338
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRegistered:Z

    if-nez v0, :cond_2e

    .line 339
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mScreenStateListener:Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    .line 341
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.wifi.APE_INFO"

    .line 342
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 343
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.aware.action.WIFI_AWARE_RESOURCE_CHANGED"

    .line 344
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.StrongRssiRoaming.POLLING_RETRY_INTERVAL"

    .line 345
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 347
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRegistered:Z

    :cond_2e
    return-void
.end method

.method private sendConnectivityLog(Ljava/lang/String;)V
    .registers 4

    .line 293
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---- [FRAMEWORK] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastConnectivityLogEvent(Ljava/lang/String;)V

    return-void
.end method

.method private setRoamingStateBitMask(IZ)V
    .registers 3

    if-eqz p2, :cond_8

    .line 298
    iget p2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingState:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingState:I

    goto :goto_e

    .line 300
    :cond_8
    iget p2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingState:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingState:I

    :goto_e
    return-void
.end method

.method private startPartialScan()V
    .registers 8

    .line 415
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    const/4 v1, 0x2

    .line 416
    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    .line 417
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingFrequencyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 418
    new-instance v2, Landroid/os/WorkSource;

    const/16 v3, 0x3e8

    const-string v4, "com.samsung.android.server.wifi"

    invoke-direct {v2, v3, v4}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .line 420
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPartialScan channel count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->logV(Ljava/lang/String;)V

    .line 421
    new-array v3, v1, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v3, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v3, 0x0

    :goto_30
    if-ge v3, v1, :cond_4a

    .line 423
    iget-object v4, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    new-instance v5, Landroid/net/wifi/WifiScanner$ChannelSpec;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingFrequencyList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 425
    :cond_4a
    iget-object v3, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mNetworkPartialScanListener:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$NetworkPartialScanListener;

    invoke-virtual {v3, v0, v4, v2}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    iget-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingFrequencyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 429
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5c

    .line 431
    :cond_75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SRR_SCAN_START freq["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->sendConnectivityLog(Ljava/lang/String;)V

    return-void
.end method

.method private startPolling()V
    .registers 3

    .line 327
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mPollingEnabled:Z

    if-eqz v0, :cond_f

    .line 328
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mHandler:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->removeMessages(I)V

    .line 329
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mHandler:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->sendEmptyMessage(I)Z

    :cond_f
    return-void
.end method

.method private startStrongRssiRoaming()V
    .registers 3

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startStrongRssiRoaming"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->logV(Ljava/lang/String;)V

    .line 174
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mPsmEnabled:Z

    if-nez v0, :cond_1b

    return-void

    .line 177
    :cond_1b
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->registerListenerAndIntent()V

    .line 178
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->updateCurrentState()V

    return-void
.end method

.method private stopPolling()V
    .registers 2

    .line 334
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mHandler:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->removeMessages(I)V

    return-void
.end method

.method private stopStrongRssiRoaming()V
    .registers 2

    const-string v0, "stopStrongRssiRoaming "

    .line 235
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->logV(Ljava/lang/String;)V

    .line 236
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mPsmEnabled:Z

    if-nez v0, :cond_a

    return-void

    :cond_a
    const/16 v0, 0x30

    .line 239
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingState:I

    .line 240
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->unregisterListenerAndIntent()V

    return-void
.end method

.method private unregisterListenerAndIntent()V
    .registers 3

    .line 352
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRegistered:Z

    if-eqz v0, :cond_15

    .line 353
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mScreenStateListener:Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->unregisterListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    .line 354
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 355
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRegistered:Z

    :cond_15
    return-void
.end method

.method private updateAwareState()V
    .registers 5

    .line 199
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.aware"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 200
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    invoke-virtual {v0}, Landroid/net/wifi/aware/WifiAwareManager;->getCharacteristics()Landroid/net/wifi/aware/Characteristics;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    invoke-virtual {v1}, Landroid/net/wifi/aware/WifiAwareManager;->getAvailableAwareResources()Landroid/net/wifi/aware/AwareResources;

    move-result-object v1

    const/16 v2, 0x20

    .line 202
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->getRoamingStateBitMask(I)Z

    move-result v3

    if-eqz v0, :cond_33

    if-eqz v1, :cond_33

    .line 204
    invoke-virtual {v0}, Landroid/net/wifi/aware/Characteristics;->getNumberOfSupportedDataPaths()I

    move-result v0

    .line 205
    invoke-virtual {v1}, Landroid/net/wifi/aware/AwareResources;->getAvailableDataPathsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_31

    const/4 v0, 0x1

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    move v3, v0

    .line 209
    :cond_33
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->getRoamingStateBitMask(I)Z

    move-result v0

    if-eq v0, v3, :cond_3f

    .line 211
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->setRoamingStateBitMask(IZ)V

    .line 213
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->updatePollingState()V

    :cond_3f
    return-void
.end method

.method private updateConnectStateAndBand()Z
    .registers 4

    .line 390
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 391
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_5d

    .line 392
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_24

    goto :goto_5d

    .line 398
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateConnectStateAndBand "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->is6GHz()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->logV(Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 399
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->setRoamingStateBitMask(IZ)V

    const/4 v0, 0x4

    .line 400
    iget-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->is6GHz()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->setRoamingStateBitMask(IZ)V

    return v1

    :cond_5d
    :goto_5d
    const/16 v0, 0xe

    const/4 v1, 0x0

    .line 393
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->setRoamingStateBitMask(IZ)V

    return v1
.end method

.method private updateCurrentState()V
    .registers 4

    const-string v0, "updateCurrentState"

    .line 219
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->logV(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScreenOn()Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->setRoamingStateBitMask(IZ)V

    .line 221
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->updateP2PState()V

    .line 222
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->updateAwareState()V

    .line 225
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->updateConnectStateAndBand()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 226
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v0

    .line 227
    iget-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 229
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->checkRoamingFrequencyList(Ljava/lang/String;I)V

    :cond_30
    return-void
.end method

.method private updateP2PState()V
    .registers 5

    .line 182
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_20

    const-string v0, "updateP2PState mWifiP2pManager is not null"

    .line 183
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->logV(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mLooper:Landroid/os/Looper;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 185
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    new-instance v2, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$1;-><init>(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestNetworkInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$NetworkInfoListener;)V

    :cond_20
    return-void
.end method

.method private updatePollingState()V
    .registers 3

    .line 310
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->updateConnectStateAndBand()Z

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePollingState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->logV(Ljava/lang/String;)V

    .line 314
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->isPollingCondition()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 315
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRssiHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 316
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->startPolling()V

    return-void

    .line 319
    :cond_32
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->stopPolling()V

    return-void
.end method

.method private updateRssiHistory()V
    .registers 3

    .line 582
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRssiHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    .line 583
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRssiHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 585
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRssiHistory:Ljava/util/LinkedList;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 627
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mHistory:Ljava/util/LinkedList;

    monitor-enter v0

    .line 628
    :try_start_3
    new-instance v1, Ljava/util/LinkedList;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mHistory:Ljava/util/LinkedList;

    invoke-direct {v1, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 629
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2b

    .line 630
    sget-object p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->DUMP_TITLE:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 632
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14

    .line 634
    :cond_24
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 635
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :catchall_2b
    move-exception p0

    .line 629
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public enableVerboseLogging(I)V
    .registers 2

    if-lez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    .line 275
    :goto_5
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mVerboseLoggingEnabled:Z

    return-void
.end method

.method protected logV(Ljava/lang/String;)V
    .registers 2

    .line 288
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->recordHistory(Ljava/lang/String;)V

    .line 289
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mVerboseLoggingEnabled:Z

    if-eqz p0, :cond_c

    sget-object p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method

.method public updateScpmState()V
    .registers 2

    .line 405
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupportStrongRoaming()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    .line 406
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mScpmEnabled:Z

    .line 407
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->startStrongRssiRoaming()V

    goto :goto_15

    :cond_f
    const/4 v0, 0x0

    .line 409
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mScpmEnabled:Z

    .line 410
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->stopStrongRssiRoaming()V

    :goto_15
    return-void
.end method

.method public wifiStateChangeEvent(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 360
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->wifiStateChangeEvent(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public wifiStateChangeEvent(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 364
    iput-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mInterfaceName:Ljava/lang/String;

    .line 365
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mHandler:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
