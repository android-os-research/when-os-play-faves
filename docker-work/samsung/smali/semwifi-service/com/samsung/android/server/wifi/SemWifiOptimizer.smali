.class public Lcom/samsung/android/server/wifi/SemWifiOptimizer;
.super Landroid/os/Handler;
.source "SemWifiOptimizer.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/ClientModeStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;,
        Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;
    }
.end annotation


# static fields
.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0xc8

.field private static final DUMP_ARG:Ljava/lang/String; = "SemWifiOptimizer history:"

.field private static final DYNAMIC_SCAN_DWELL:I = 0x2

.field private static final FEATURE_SUPPORT:I = 0x1

.field private static final MAX_BLE_WINDOW:I = 0x1e

.field private static final MODE_LIMIT_BLE_SCAN:I = 0x1

.field private static final MODE_LIMIT_BLE_WIFI_SCAN:I = 0x2

.field private static final MODE_LIMIT_NONE:I = 0x0

.field static final MSG_OPTIMIZER_ALLOWEDAPP_RUNNING:I = 0x6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MSG_OPTIMIZER_FORCEMODE:I = 0x7

.field static final MSG_OPTIMIZER_GAME_RUNNING:I = 0x3

.field static final MSG_OPTIMIZER_IMS_CALLING:I = 0x8

.field static final MSG_OPTIMIZER_SERVICE_DETECTED:I = 0x9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MSG_OPTIMIZER_TP_DETECTED:I = 0x5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MSG_OPTIMIZER_VOIP_CALLING:I = 0x4

.field static final MSG_STA_CONNECTION_CHANGED:I = 0xb

.field static final MSG_STA_INTERFACE_CHANGED:I = 0xa
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MSG_TRAFFIC_POLL:I = 0x2

.field static final MSG_TRAFFIC_POLL_ENABLE:I = 0x1

.field private static final NOT_INITIALIZED:I = -0x1

.field private static final OPTIMIZERMODE_ENABLE:Ljava/lang/String; = "Enable"

.field private static final OPTIMIZERMODE_INTENT:Ljava/lang/String; = "com.samsung.android.wifi.LATENCYMODE"

.field private static final OPTIMIZERMODE_MAXWINDOW:Ljava/lang/String; = "MaxWindow"

.field private static final PKTS_LOG_INTERVAL:I = 0x3

.field private static final POLL_TRAFFIC_INTERVAL_MSEC:I = 0x3e8

.field private static final RX_PKTS_CONT_MASK:I = 0x3f

.field private static final RX_PKTS_CONT_UNMASK:I = 0xf

.field private static final RX_PKTS_THRESHOLD:I = 0xf

.field private static final RX_PKTS_UP_THRESHOLD:I = 0x3e7

.field private static final STATE_ALLOWEDAPP_RUNNING:I = 0x4

.field private static final STATE_IMS_CALLING:I = 0x8

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_SERVICE_DETECTED:I = 0x10

.field private static final STATE_TRAFFIC_DETECTED:I = 0x2

.field private static final STATE_VOIP_CALLING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemWifiOptimizer"

.field private static final TRAFFIC_POLL_INTERVAL:I = 0x3e8

.field private static mOptimizerMode:I

.field private static mOptimizerState:I


# instance fields
.field private isFeatureEnabled:Z

.field private mAllowedAppList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

.field private mApeController:Lcom/samsung/android/server/wifi/SemApeController;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

.field private final mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

.field private mConnected:Z

.field private final mConnectedStaIfaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mForceMode:I

.field private mInterfaceChangeListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

.field private mIsGamePkg:Z

.field private mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

.field private mOptimizerHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mQosManipulatedUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReady:Z

.field private mRxPackets:J

.field private final mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

.field private mScreenOn:Z

.field private mStaIfaceName:Ljava/lang/String;

.field private mTrafficCondition:I

.field private mTrafficMode:Z

.field private mTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

.field private mUdpRxCount:J

.field private mUidRxPackets:J

.field private mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

.field private mUsageStatsPackageName:Ljava/lang/String;

.field mUsageStatsUid:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

.field private mVerboseLoggingEnabled:Z

.field private final mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private mWifiOptServiceDetectionCallback:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

.field private final mWifiServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

.field private final mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

.field private mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

.field private supportDynamicScanDwell:Z


# direct methods
.method public static synthetic $r8$lambda$NFIbzoiO_j8m1slJrap7p3glSgw(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->lambda$new$0(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAllowedAppList(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mAllowedAppList:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmApeController(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemApeController;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApeController:Lcom/samsung/android/server/wifi/SemApeController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioManager(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Landroid/media/AudioManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClientModeManager(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectedStaIfaces(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mConnectedStaIfaces:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLlHandler(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStaIfaceName(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mStaIfaceName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrafficMode(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTrafficMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsageStatsPackageName(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mVerboseLoggingEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiTrafficPoller(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiTrafficStatsCallback(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsGamePkg(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mIsGamePkg:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStaIfaceName(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mStaIfaceName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTrafficMode(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTrafficMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTrafficStats(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUsageStatsPackageName(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsPackageName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeNetworkConnectionState(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->changeNetworkConnectionState(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckTraffic(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->checkTraffic()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mevaluateTrafficPolling(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->evaluateTrafficPolling()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetStateAllowedAppRunning(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getStateAllowedAppRunning()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetStateVoipCalling(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getStateVoipCalling()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateOptimizerMode(Lcom/samsung/android/server/wifi/SemWifiOptimizer;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->updateOptimizerMode(III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Lcom/samsung/android/server/wifi/util/ScanPool;Landroid/os/HandlerThread;Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
    .registers 11

    .line 212
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 73
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerHistory:Ljava/util/LinkedList;

    .line 116
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mQosManipulatedUids:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 131
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTrafficCondition:I

    .line 132
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTrafficMode:Z

    .line 136
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mForceMode:I

    .line 137
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mVerboseLoggingEnabled:Z

    .line 152
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 164
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer$2;-><init>(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mInterfaceChangeListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

    .line 190
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mIsGamePkg:Z

    .line 191
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mReady:Z

    const/4 v1, 0x1

    .line 192
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mScreenOn:Z

    .line 193
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mConnected:Z

    .line 202
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->isFeatureEnabled:Z

    .line 203
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->supportDynamicScanDwell:Z

    .line 423
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer$3;-><init>(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiOptServiceDetectionCallback:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 213
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mContext:Landroid/content/Context;

    .line 214
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 215
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 216
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 217
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInterfaceNameProvider()Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 218
    iput-object p5, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 219
    iput-object p6, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 220
    iput-object p8, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 221
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 223
    new-instance p3, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    const/4 p5, 0x0

    invoke-direct {p3, p5}, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;-><init>(Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo-IA;)V

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    .line 224
    invoke-static {p3}, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->-$$Nest$mreset(Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;)V

    .line 225
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    new-instance p5, Ljava/util/LinkedList;

    invoke-direct {p5}, Ljava/util/LinkedList;-><init>()V

    iput-object p5, p3, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->bssid:Ljava/util/LinkedList;

    .line 227
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mConnectedStaIfaces:Ljava/util/HashSet;

    const/4 p3, -0x1

    .line 229
    iput p3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsUid:I

    const-string p3, "default"

    .line 230
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsPackageName:Ljava/lang/String;

    const-string p3, "audio"

    .line 231
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mAudioManager:Landroid/media/AudioManager;

    const-string p3, "usagestats"

    .line 233
    invoke-static {p3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 236
    new-instance p1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    invoke-virtual {p7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p0, p3}, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    .line 239
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mAllowedAppList:Ljava/util/HashMap;

    .line 240
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string p5, "com.microsoft.xcloud.cta"

    invoke-virtual {p1, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mAllowedAppList:Ljava/util/HashMap;

    const-string p5, "com.microsoft.xcloud"

    invoke-virtual {p1, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mAllowedAppList:Ljava/util/HashMap;

    const-string p5, "com.gamepass"

    invoke-virtual {p1, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 245
    new-instance p3, Lcom/samsung/android/server/wifi/SemWifiOptimizer$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    .line 254
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mInterfaceChangeListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

    invoke-interface {p2, p1}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    .line 256
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mReady:Z

    return-void
.end method

.method private changeNetworkConnectionState(Z)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2c

    .line 277
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_15

    .line 279
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->ssid:Ljava/lang/String;

    .line 281
    :cond_15
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->bssid:Ljava/util/LinkedList;

    if-nez v2, :cond_22

    .line 282
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->bssid:Ljava/util/LinkedList;

    .line 285
    :cond_22
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->checkEnterpriseNetworkFromRcl()V

    .line 286
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->checkEnterpriseNetworkFromScanResults()V

    .line 288
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->registerAudioAndUsageStatsWatcher()V

    goto :goto_38

    .line 290
    :cond_2c
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->unregisterAudioAndUsageStatsWatcher()V

    .line 291
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->-$$Nest$mreset(Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;)V

    .line 292
    sput v0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerState:I

    .line 293
    sput v0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerMode:I

    .line 296
    :goto_38
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mConnected:Z

    .line 297
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->evaluateTrafficPolling()V

    .line 299
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mConnected:Z

    if-eqz p1, :cond_49

    .line 300
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiOptServiceDetectionCallback:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;)V

    goto :goto_61

    .line 302
    :cond_49
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiOptServiceDetectionCallback:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;)V

    .line 303
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getStateServiceDetected()Z

    move-result p1

    if-eqz p1, :cond_61

    .line 305
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    const/16 p1, 0x9

    invoke-static {p0, p1, v0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    .line 306
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_61
    :goto_61
    return-void
.end method

.method private changeTrafficPriority(II)V
    .registers 4

    .line 757
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getQboxController()Lcom/samsung/android/server/wifi/SemQboxController;

    move-result-object v0

    if-lez p1, :cond_19

    if-lez p2, :cond_19

    .line 759
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemQboxController;->addUid(I)V

    .line 760
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mQosManipulatedUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_42

    :cond_19
    if-nez p1, :cond_42

    .line 761
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mQosManipulatedUids:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-eqz p1, :cond_42

    .line 762
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mQosManipulatedUids:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 763
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemQboxController;->removeUid(I)V

    goto :goto_29

    .line 765
    :cond_3d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mQosManipulatedUids:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    :cond_42
    :goto_42
    return-void
.end method

.method private checkEnterpriseNetworkFromRcl()V
    .registers 6

    .line 928
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->isEnterpriseNetwork:Z

    if-eqz v0, :cond_7

    return-void

    .line 932
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getRoamingAssistant()Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    move-result-object v0

    .line 933
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v0, :cond_73

    if-eqz v1, :cond_73

    .line 935
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mStaIfaceName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->getNetworkFrequencyList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 937
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    const/4 v2, 0x0

    iput v2, v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nRcl2G:I

    .line 938
    iput v2, v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nRcl5G:I

    .line 939
    :goto_28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ge v2, v1, :cond_5b

    .line 940
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0x960

    if-le v1, v4, :cond_49

    const/16 v4, 0x9c4

    if-ge v1, v4, :cond_49

    .line 942
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    iget v4, v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nRcl2G:I

    add-int/2addr v4, v3

    iput v4, v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nRcl2G:I

    goto :goto_58

    :cond_49
    const/16 v4, 0x1324

    if-le v1, v4, :cond_58

    const/16 v4, 0x170c

    if-ge v1, v4, :cond_58

    .line 944
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    iget v4, v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nRcl5G:I

    add-int/2addr v4, v3

    iput v4, v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nRcl5G:I

    :cond_58
    :goto_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 947
    :cond_5b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    iget v1, v0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nRcl2G:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_66

    iget v1, v0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nRcl5G:I

    if-le v1, v2, :cond_73

    .line 948
    :cond_66
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->isEnterpriseNetwork:Z

    .line 949
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mVerboseLoggingEnabled:Z

    if-eqz p0, :cond_73

    const-string p0, "SemWifiOptimizer"

    const-string v0, "Determined as enterprise network by rcl"

    .line 950
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_73
    return-void
.end method

.method private checkEnterpriseNetworkFromScanResults()V
    .registers 9

    .line 882
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->isEnterpriseNetwork:Z

    if-eqz v0, :cond_7

    return-void

    .line 886
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/ScanPool;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 887
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 888
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 889
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 890
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "EAP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "SemWifiOptimizer"

    const/4 v4, 0x1

    if-eqz v2, :cond_58

    .line 891
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_53

    const-string v0, "Determined as enterprise network by security option"

    .line 892
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_53
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->isEnterpriseNetwork:Z

    goto :goto_b9

    :cond_58
    const/4 v2, 0x0

    move v5, v2

    .line 898
    :goto_5a
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->bssid:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-ge v5, v6, :cond_7a

    .line 899
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->bssid:Ljava/util/LinkedList;

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 900
    iget-object v7, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_77

    goto :goto_7b

    :cond_77
    add-int/lit8 v5, v5, 0x1

    goto :goto_5a

    :cond_7a
    move v2, v4

    :goto_7b
    if-eqz v2, :cond_a1

    .line 907
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->bssid:Ljava/util/LinkedList;

    iget-object v5, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 908
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v2

    if-eqz v2, :cond_94

    .line 909
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    iget v2, v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nBssid5G:I

    add-int/2addr v2, v4

    iput v2, v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nBssid5G:I

    goto :goto_a1

    .line 910
    :cond_94
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 911
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    iget v2, v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nBssid2G:I

    add-int/2addr v2, v4

    iput v2, v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nBssid2G:I

    .line 915
    :cond_a1
    :goto_a1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    iget v2, v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nBssid2G:I

    const/4 v5, 0x3

    if-gt v2, v5, :cond_ac

    iget v1, v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nBssid5G:I

    if-le v1, v5, :cond_11

    .line 916
    :cond_ac
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_b5

    const-string v0, "Determined as enterprise network by scan results"

    .line 917
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_b5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->isEnterpriseNetwork:Z

    :cond_b9
    :goto_b9
    return-void
.end method

.method private checkTraffic()V
    .registers 12

    .line 590
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->uidTopActivity:I

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->updateForegroundApp(I)V

    .line 591
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsUid:I

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_e

    return-void

    .line 596
    :cond_e
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mRxPackets:J

    .line 597
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUidRxPackets:J

    .line 598
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUdpRxCount:J

    .line 600
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    iget-wide v7, v6, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    iput-wide v7, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mRxPackets:J

    .line 601
    iget-wide v9, v6, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPacketsTopActivity:J

    iput-wide v9, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUidRxPackets:J

    cmp-long v0, v7, v0

    if-eqz v0, :cond_28

    .line 603
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getUdpCount()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUdpRxCount:J

    .line 606
    :cond_28
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUidRxPackets:J

    sub-long/2addr v0, v2

    .line 607
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUdpRxCount:J

    sub-long/2addr v2, v4

    .line 609
    iget v4, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTrafficCondition:I

    const/4 v5, 0x1

    shl-int/2addr v4, v5

    iput v4, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTrafficCondition:I

    const-wide/16 v6, 0xf

    cmp-long v8, v0, v6

    if-lez v8, :cond_50

    const-wide/16 v8, 0x3e7

    cmp-long v0, v0, v8

    if-gez v0, :cond_50

    cmp-long v0, v2, v6

    if-lez v0, :cond_48

    cmp-long v0, v2, v8

    if-ltz v0, :cond_4c

    .line 611
    :cond_48
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mIsGamePkg:Z

    if-ne v0, v5, :cond_50

    :cond_4c
    or-int/lit8 v0, v4, 0x1

    .line 613
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTrafficCondition:I

    .line 617
    :cond_50
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTrafficMode:Z

    const/4 v1, 0x5

    if-nez v0, :cond_6a

    .line 618
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTrafficCondition:I

    const/16 v2, 0x3f

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_7c

    .line 619
    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTrafficMode:Z

    .line 620
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsUid:I

    invoke-static {v0, v1, v5, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    .line 621
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_7c

    .line 623
    :cond_6a
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTrafficCondition:I

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_7c

    const/4 v0, 0x0

    .line 624
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTrafficMode:Z

    .line 625
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    invoke-static {p0, v1, v0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    .line 626
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_7c
    :goto_7c
    return-void
.end method

.method private evaluateTrafficPolling()V
    .registers 5

    .line 632
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mConnected:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mScreenOn:Z

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsUid:I

    const/16 v3, 0x3e8

    if-lt v0, v3, :cond_17

    .line 633
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    invoke-static {v0, v1, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    goto :goto_46

    .line 635
    :cond_17
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getStateVoipCalling()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mConnected:Z

    if-nez v0, :cond_2b

    .line 636
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    const/4 v3, 0x4

    invoke-static {v0, v3, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 637
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 639
    :cond_2b
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getStateImsCalling()Z

    move-result v0

    if-eqz v0, :cond_40

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mConnected:Z

    if-nez v0, :cond_40

    .line 640
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    const/16 v3, 0x8

    invoke-static {v0, v3, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 641
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 643
    :cond_40
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    invoke-static {v0, v1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 645
    :goto_46
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 647
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mConnected:Z

    if-eqz v0, :cond_5b

    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mForceMode:I

    if-ne v0, v1, :cond_5b

    .line 648
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    const/4 v0, 0x7

    invoke-static {p0, v0, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    .line 649
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_5b
    return-void
.end method

.method private getStateAllowedAppRunning()Z
    .registers 2

    .line 666
    sget p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerState:I

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private getStateServiceDetected()Z
    .registers 2

    .line 662
    sget p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerState:I

    const/16 v0, 0x10

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method private getStateTrafficDetected()Z
    .registers 2

    .line 658
    sget p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerState:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private getStateVoipCalling()Z
    .registers 2

    .line 654
    sget p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerState:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private getUdpCount()J
    .registers 12

    const-string p0, "Exception "

    const-string v0, "SemWifiOptimizer"

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 824
    :try_start_8
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/proc/net/snmp"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_14} :catch_78
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_14} :catch_53
    .catchall {:try_start_8 .. :try_end_14} :catchall_50

    .line 826
    :catch_14
    :cond_14
    :try_start_14
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_32

    const-string v6, "Udp:"

    .line 827
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, " "

    .line 828
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 829
    array-length v6, v4
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_29} :catch_4e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_29} :catch_4c
    .catchall {:try_start_14 .. :try_end_29} :catchall_157

    if-le v6, v3, :cond_14

    .line 831
    :try_start_2b
    aget-object v4, v4, v3

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_31} :catch_14
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_31} :catch_4e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_31} :catch_4c
    .catchall {:try_start_2b .. :try_end_31} :catchall_157

    goto :goto_33

    :cond_32
    move-wide v6, v1

    .line 844
    :goto_33
    :try_start_33
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_38

    goto/16 :goto_aa

    :catch_38
    move-exception v4

    .line 847
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    :catch_4c
    move-exception v4

    goto :goto_57

    :catch_4e
    move-exception v4

    goto :goto_7c

    :catchall_50
    move-exception v1

    goto/16 :goto_159

    :catch_53
    move-exception v5

    move-object v10, v5

    move-object v5, v4

    move-object v4, v10

    .line 840
    :goto_57
    :try_start_57
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Io Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_57 .. :try_end_6b} :catchall_157

    if-eqz v5, :cond_a9

    .line 844
    :try_start_6d
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_a9

    :catch_71
    move-exception v4

    .line 847
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_9c

    :catch_78
    move-exception v5

    move-object v10, v5

    move-object v5, v4

    move-object v4, v10

    .line 838
    :goto_7c
    :try_start_7c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SNMP Not Found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_7c .. :try_end_90} :catchall_157

    if-eqz v5, :cond_a9

    .line 844
    :try_start_92
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_96

    goto :goto_a9

    :catch_96
    move-exception v4

    .line 847
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_9c
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a9
    :goto_a9
    move-wide v6, v1

    .line 852
    :goto_aa
    :try_start_aa
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string v9, "/proc/net/snmp6"

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b6
    .catch Ljava/io/FileNotFoundException; {:try_start_aa .. :try_end_b6} :catch_119
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_b6} :catch_f7
    .catchall {:try_start_aa .. :try_end_b6} :catchall_f5

    .line 854
    :catch_b6
    :cond_b6
    :try_start_b6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d3

    const-string v8, "Udp6InDatagrams"

    .line 855
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b6

    const-string v8, "\t"

    .line 856
    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 857
    array-length v8, v5
    :try_end_cb
    .catch Ljava/io/FileNotFoundException; {:try_start_b6 .. :try_end_cb} :catch_f2
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_cb} :catch_ef
    .catchall {:try_start_b6 .. :try_end_cb} :catchall_ec

    if-le v8, v3, :cond_b6

    .line 859
    :try_start_cd
    aget-object v5, v5, v3

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_d3
    .catch Ljava/lang/NumberFormatException; {:try_start_cd .. :try_end_d3} :catch_b6
    .catch Ljava/io/FileNotFoundException; {:try_start_cd .. :try_end_d3} :catch_f2
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d3} :catch_ef
    .catchall {:try_start_cd .. :try_end_d3} :catchall_ec

    .line 872
    :cond_d3
    :try_start_d3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_d8

    goto/16 :goto_13b

    :catch_d8
    move-exception v3

    .line 875
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_de
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13b

    :catchall_ec
    move-exception v1

    move-object v5, v4

    goto :goto_13d

    :catch_ef
    move-exception v3

    move-object v5, v4

    goto :goto_f8

    :catch_f2
    move-exception v3

    move-object v5, v4

    goto :goto_11a

    :catchall_f5
    move-exception v1

    goto :goto_13d

    :catch_f7
    move-exception v3

    .line 868
    :goto_f8
    :try_start_f8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Io Exception6 "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10c
    .catchall {:try_start_f8 .. :try_end_10c} :catchall_f5

    if-eqz v5, :cond_13b

    .line 872
    :try_start_10e
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_111} :catch_112

    goto :goto_13b

    :catch_112
    move-exception v3

    .line 875
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_de

    :catch_119
    move-exception v3

    .line 866
    :goto_11a
    :try_start_11a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SNMP6 Not Found "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12e
    .catchall {:try_start_11a .. :try_end_12e} :catchall_f5

    if-eqz v5, :cond_13b

    .line 872
    :try_start_130
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_133} :catch_134

    goto :goto_13b

    :catch_134
    move-exception v3

    .line 875
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_de

    :cond_13b
    :goto_13b
    add-long/2addr v6, v1

    return-wide v6

    :goto_13d
    if-eqz v5, :cond_156

    .line 872
    :try_start_13f
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_142} :catch_143

    goto :goto_156

    :catch_143
    move-exception v2

    .line 875
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_156
    :goto_156
    throw v1

    :catchall_157
    move-exception v1

    move-object v4, v5

    :goto_159
    if-eqz v4, :cond_172

    .line 844
    :try_start_15b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_15e
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_15e} :catch_15f

    goto :goto_172

    :catch_15f
    move-exception v2

    .line 847
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_172
    :goto_172
    throw v1
.end method

.method private getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 3

    .line 959
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_14

    .line 960
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    .line 961
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return-object p0
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 2

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    .line 247
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mScreenOn:Z

    goto :goto_9

    :cond_6
    const/4 p1, 0x0

    .line 249
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mScreenOn:Z

    .line 251
    :goto_9
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->evaluateTrafficPolling()V

    return-void
.end method

.method private logOptimizerMode(JII)V
    .registers 8

    .line 973
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 974
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "%s,%d,%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    .line 975
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p1

    const/4 p1, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p1

    .line 974
    invoke-static {p2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_49

    .line 980
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerHistory:Ljava/util/LinkedList;

    monitor-enter p2

    .line 981
    :try_start_2f
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerHistory:Ljava/util/LinkedList;

    invoke-virtual {p3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 982
    :goto_34
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerHistory:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 p3, 0xc8

    if-le p1, p3, :cond_44

    .line 983
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerHistory:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_34

    .line 985
    :cond_44
    monitor-exit p2

    return-void

    :catchall_46
    move-exception p0

    monitor-exit p2
    :try_end_48
    .catchall {:try_start_2f .. :try_end_48} :catchall_46

    throw p0

    :catch_49
    move-exception p0

    const-string p1, "SemWifiOptimizer"

    const-string p2, "format problem"

    .line 977
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private provideOptimizerStateToApe()V
    .registers 5

    .line 1006
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApeController:Lcom/samsung/android/server/wifi/SemApeController;

    if-eqz v0, :cond_13

    .line 1007
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getStateTrafficDetected()Z

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getStateServiceDetected()Z

    move-result v2

    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsUid:I

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/samsung/android/server/wifi/SemApeController;->updateOptimizerState(ZZILjava/lang/String;)V

    :cond_13
    return-void
.end method

.method private registerAudioAndUsageStatsWatcher()V
    .registers 4

    .line 439
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    if-nez v0, :cond_15

    .line 440
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer$4;-><init>(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    .line 482
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioManager;->registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V

    .line 486
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    if-nez v0, :cond_44

    .line 487
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;-><init>(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    .line 563
    :try_start_24
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    invoke-interface {p0, v0}, Landroid/app/usage/IUsageStatsManager;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_29} :catch_2a

    goto :goto_44

    :catch_2a
    move-exception p0

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception occured while register UsageStatWatcher "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiOptimizer"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_44
    :goto_44
    return-void
.end method

.method private sendBroadcastOptimizerMode(Z)V
    .registers 4

    .line 770
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.wifi.LATENCYMODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "Enable"

    .line 771
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p1, :cond_11

    const/16 p1, 0x1e

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    const-string v1, "MaxWindow"

    .line 772
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 773
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v1, "com.samsung.android.permission.BLE_PRIVILEGED"

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private setWifiScanDwell(I)V
    .registers 3

    .line 743
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->supportDynamicScanDwell:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_12

    .line 748
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mStaIfaceName:Ljava/lang/String;

    const-string v0, "60 100 40 45"

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setScanDwell(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    :cond_12
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1f

    .line 750
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mStaIfaceName:Ljava/lang/String;

    const-string v0, "110 100 40 45"

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setScanDwell(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 752
    :cond_1f
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mStaIfaceName:Ljava/lang/String;

    const-string v0, "0 0 0 0"

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setScanDwell(Ljava/lang/String;Ljava/lang/String;)V

    :goto_28
    return-void
.end method

.method private unregisterAudioAndUsageStatsWatcher()V
    .registers 4

    .line 573
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    if-eqz v2, :cond_e

    .line 574
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->unregisterAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;)V

    .line 575
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    .line 578
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    if-eqz v0, :cond_36

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    if-eqz v2, :cond_36

    .line 580
    :try_start_16
    invoke-interface {v0, v2}, Landroid/app/usage/IUsageStatsManager;->unregisterUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V

    .line 581
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_1c

    goto :goto_36

    :catch_1c
    move-exception p0

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception occured while unregister UsageStatWatcher "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiOptimizer"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_36
    :goto_36
    return-void
.end method

.method private updateForegroundApp(I)V
    .registers 5

    .line 1013
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsUid:I

    if-eq p1, v0, :cond_2b

    const/16 v1, 0x3e8

    if-gt p1, v1, :cond_9

    goto :goto_2b

    .line 1018
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 1019
    array-length v2, v1

    if-eqz v2, :cond_1b

    const/4 v2, 0x0

    .line 1020
    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsPackageName:Ljava/lang/String;

    .line 1021
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsUid:I

    .line 1023
    :cond_1b
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsUid:I

    if-eq v0, p1, :cond_2b

    .line 1024
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApeController:Lcom/samsung/android/server/wifi/SemApeController;

    if-eqz v0, :cond_28

    .line 1025
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/SemApeController;->updateForegroundApp(Ljava/lang/String;I)V

    .line 1027
    :cond_28
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->provideOptimizerStateToApe()V

    :cond_2b
    :goto_2b
    return-void
.end method

.method private updateOptimizerMode(III)V
    .registers 11

    .line 709
    sget v0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerState:I

    .line 710
    sget v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerMode:I

    .line 711
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->updateOptimizerState(II)Z

    move-result v2

    .line 713
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->provideOptimizerStateToApe()V

    .line 714
    sget v3, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerMode:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v3, :cond_17

    if-nez v2, :cond_17

    .line 715
    sput v6, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerMode:I

    goto :goto_29

    :cond_17
    if-nez v3, :cond_29

    if-eqz v2, :cond_29

    .line 719
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->checkEnterpriseNetworkFromRcl()V

    .line 720
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    iget-boolean v2, v2, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->isEnterpriseNetwork:Z

    if-eqz v2, :cond_27

    .line 721
    sput v5, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerMode:I

    goto :goto_29

    .line 723
    :cond_27
    sput v4, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerMode:I

    :cond_29
    :goto_29
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    .line 728
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v4

    const/4 p1, 0x3

    sget p2, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerState:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x4

    iget p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mForceMode:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x5

    sget p2, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerMode:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "enable=%d state=0x%02X prev=0x%02X new=0x%02X force=%d mode=%d"

    .line 727
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemWifiOptimizer"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    sget p1, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerMode:I

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->changeTrafficPriority(II)V

    .line 732
    sget p1, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerMode:I

    if-eq v1, p1, :cond_91

    .line 733
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->isFeatureEnabled:Z

    if-eqz p2, :cond_7d

    .line 734
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mStaIfaceName:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setLatencyCritical(Ljava/lang/String;I)Z

    .line 735
    sget p1, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerMode:I

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->setWifiScanDwell(I)V

    .line 737
    :cond_7d
    sget p1, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerMode:I

    if-lez p1, :cond_82

    goto :goto_83

    :cond_82
    move v5, v6

    :goto_83
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->sendBroadcastOptimizerMode(Z)V

    .line 738
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sget p3, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerMode:I

    sget v0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerState:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->logOptimizerMode(JII)V

    :cond_91
    return-void
.end method

.method private updateOptimizerState(II)Z
    .registers 4

    if-nez p2, :cond_9

    .line 678
    sget p2, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerState:I

    not-int p1, p1

    and-int/2addr p1, p2

    sput p1, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerState:I

    goto :goto_e

    .line 680
    :cond_9
    sget p2, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerState:I

    or-int/2addr p1, p2

    sput p1, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerState:I

    .line 683
    :goto_e
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mForceMode:I

    const/4 p2, 0x2

    const/4 v0, 0x0

    if-ne p1, p2, :cond_15

    return v0

    :cond_15
    const/4 p2, 0x1

    if-ne p1, p2, :cond_19

    return p2

    .line 690
    :cond_19
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getStateAllowedAppRunning()Z

    move-result p1

    if-eqz p1, :cond_21

    :cond_1f
    :goto_1f
    move v0, p2

    goto :goto_44

    .line 693
    :cond_21
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getStateVoipCalling()Z

    move-result p1

    if-eqz p1, :cond_28

    goto :goto_1f

    .line 696
    :cond_28
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getStateImsCalling()Z

    move-result p1

    if-eqz p1, :cond_2f

    goto :goto_1f

    .line 699
    :cond_2f
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getStateTrafficDetected()Z

    move-result p1

    if-eqz p1, :cond_44

    .line 700
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->getFeatureEnabled()Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getStateServiceDetected()Z

    move-result p0

    if-eqz p0, :cond_44

    goto :goto_1f

    :cond_44
    :goto_44
    return v0
.end method


# virtual methods
.method public checkChipsetCapabilities(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V
    .registers 5

    .line 260
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    const-string v1, "ro.product.first_api_level"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x21

    if-ge v0, v1, :cond_2c

    .line 262
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getWifiChipVendor()Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S_LSI"

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "MTK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_2b
    return-void

    .line 268
    :cond_2c
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->getOptimizerFeature()I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_38

    move v0, v2

    goto :goto_39

    :cond_38
    move v0, v1

    .line 270
    :goto_39
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->isFeatureEnabled:Z

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_40

    move v1, v2

    .line 272
    :cond_40
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->supportDynamicScanDwell:Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 990
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerHistory:Ljava/util/LinkedList;

    monitor-enter p1

    .line 991
    :try_start_3
    new-instance p3, Ljava/util/LinkedList;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerHistory:Ljava/util/LinkedList;

    invoke-direct {p3, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 992
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2b

    const-string p0, "SemWifiOptimizer history:"

    .line 993
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 994
    invoke-virtual {p3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 995
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14

    .line 997
    :cond_24
    invoke-virtual {p3}, Ljava/util/LinkedList;->clear()V

    .line 998
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void

    :catchall_2b
    move-exception p0

    .line 992
    :try_start_2c
    monitor-exit p1
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

    .line 967
    :goto_5
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mVerboseLoggingEnabled:Z

    return-void
.end method

.method public getOptimizerMode()I
    .registers 3

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Forcemode Query:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mForceMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiOptimizer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mForceMode:I

    return p0
.end method

.method getStateImsCalling()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 671
    sget p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerState:I

    const/16 v0, 0x8

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .registers 5

    if-eqz p1, :cond_11

    .line 182
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    const/16 v0, 0xb

    .line 183
    iget-boolean p2, p2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    const/4 v1, 0x0

    .line 182
    invoke-static {p0, v0, p2, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 184
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_29

    .line 186
    :cond_11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ifaceName is null, isConnected "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiOptimizer"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    return-void
.end method

.method sendMessageForTest(IIILjava/lang/Object;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 314
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 315
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setApeController(Lcom/samsung/android/server/wifi/SemApeController;)V
    .registers 2

    .line 1002
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApeController:Lcom/samsung/android/server/wifi/SemApeController;

    return-void
.end method

.method public setImsCallingState(Z)V
    .registers 6

    .line 779
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mReady:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    if-nez v0, :cond_9

    goto :goto_22

    :cond_9
    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_1b

    .line 781
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mConnected:Z

    if-eqz p0, :cond_22

    .line 782
    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    .line 783
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_22

    .line 787
    :cond_1b
    invoke-static {v0, v1, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    .line 788
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_22
    :goto_22
    return-void
.end method

.method public setOptimizerMode(I)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    if-eq p1, v0, :cond_b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_b

    move v0, v1

    goto :goto_d

    .line 798
    :cond_b
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mForceMode:I

    .line 805
    :goto_d
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mConnected:Z

    if-eqz p1, :cond_1f

    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mForceMode:I

    if-eqz p1, :cond_1f

    .line 807
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    const/4 p1, 0x7

    invoke-static {p0, p1, v1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    .line 808
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1f
    return v0
.end method
