.class public Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;
.super Lcom/android/internal/util/StateMachine;
.source "SilentRoamingManager.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/diagnostics/AutoTestProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;,
        Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;,
        Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;,
        Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$AlternativeEnabledState;,
        Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;,
        Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;,
        Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;
    }
.end annotation


# static fields
.field private static final ALL_ZEROS_MAC_ADDRESS:Ljava/lang/String; = "00:00:00:00:00:00"

.field private static final BYTE_MASK:I = 0xff

.field private static final CHANNEL_UTILIZATION_IE_LENGTH:I = 0x5

.field static final CMD_CHECK_INTERNET_VALIDITY:I = 0x10

.field static final CMD_CONFIGURED_NETWORKS_CHANGED:I = 0xf

.field static final CMD_CONNECTING_WATCHDOG_TIMER:I = 0x3

.field static final CMD_FULL_SCAN_FAILURE:I = 0xc

.field static final CMD_FULL_SCAN_RESULTS_REPORTED:I = 0xa

.field static final CMD_GET_AUTOJOIN_VALUE_IN_DEFAULT:I = 0xd

.field static final CMD_GET_AUTOJOIN_VALUE_IN_ENABLED:I = 0xe

.field static final CMD_INITIALIZE:I = 0x0

.field static final CMD_NETWORK_STATE_CHANGED:I = 0x6

.field static final CMD_PARTIAL_SCAN_FAILURE:I = 0xb

.field static final CMD_PARTIAL_SCAN_RESULTS_REPORTED:I = 0x9

.field static final CMD_PNO_NETWORK_FOUND:I = 0x8

.field static final CMD_SCREEN_STATE_CHANGED:I = 0x7

.field static final CMD_STOP_PNO_SCAN:I = 0x1

.field static final CMD_TRY_TO_CONNECT:I = 0x4

.field static final CMD_UPDATE_PNO_PARAM:I = 0x2

.field static final CMD_WIFI_STATE_CHANGED:I = 0x5

.field private static final DEFAULT_NUMBER_SPATIAL_STREAM:I = 0x1

.field private static final HE_CAPABILITY_IE_MIN_LENGTH:I = 0x15

.field private static final HT_CAPABILITY_IE_MIN_LENGTH:I = 0x1a

.field private static final INVALID:I = -0x1

.field private static final INVALID_TIME_STAMP:J = -0x8000000000000000L

.field private static final MAC_ADDRESS_LENGTH:I = 0x11

.field static final MAX_WIFI_DIAGNOSTIC_LIST_SIZE:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MINIMUM_PNO_SCAN_INTERVAL_MS:J = 0x493e0L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MINUTE_MS:J = 0xea60L

.field private static final NUM_LOG_RECS:I

.field private static final SECOND_MS:J = 0x3e8L

.field private static final SHORT_MASK:I = 0xffff

.field private static final TAG:Ljava/lang/String; = "SilentRoamingManager"

.field static final TEST_SETTING_SCREEN_ON:Ljava/lang/String; = "screen_on"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final VHT_CAPABILITY_IE_MIN_LENGTH:I = 0xc

.field private static final WIFI_CHANNEL_UTILIZATION_2G:I = 0x50

.field private static final WIFI_CHANNEL_UTILIZATION_5G:I = 0xf

.field private static final WIFI_CHANNEL_UTILIZATION_6G:I = 0xa

.field static final mW24hStats:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final CHECK_INTERNET_VALIDITY_TIMEOUT:J

.field private final CONNECTING_WATCHDOG_TIMEOUT_MS:J

.field private final MULTINETWORK_ALLOWING_SYSTEM_PACKAGE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final MULTINETWORK_EXCEPTION_PACKAGE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final STOP_PNO_SCAN_THRESHOLD:S

.field private final logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

.field private mAcceptUnvalidated:Z

.field private mAllowFrameworkRoaming:Z

.field private final mAlternativeEnabledState:Lcom/android/internal/util/State;

.field private mAlternativeSilentRoamingReason:Ljava/lang/String;

.field private final mCandidates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;",
            ">;"
        }
    .end annotation
.end field

.field private mCapabilities:Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

.field private final mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

.field private final mClock:Lcom/samsung/android/server/wifi/util/SemClock;

.field private mConnectingWatchdogCount:I

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentBssidScanResult:Landroid/net/wifi/ScanResult;

.field private final mDbg:Z

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private final mDisabledState:Lcom/android/internal/util/State;

.field private final mEnabledState:Lcom/android/internal/util/State;

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field final mGetWhatToString:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHiddenList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private mIfaceName:Ljava/lang/String;

.field mIsBluetoothConnected:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mIsNetworkSelectionNeeded:Z

.field private mIsPnoScanning:Z

.field private mIsWifiConnected:Z

.field private final mKnownMeteredNetworkIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastConnectedConfigKey:Ljava/lang/String;

.field private mLastConnectedTime:J

.field private mLastNetworkId:I

.field private mLastNetworkState:Landroid/net/NetworkInfo$State;

.field private mLastPnoNetworkFoundTimeStamp:J

.field private mLastSelectedNetworkEnabled:Z

.field private mLastSelectedNetworkId:I

.field private mLastSelectedNetworkKey:Ljava/lang/String;

.field private mLastSelectedTimeStamp:J

.field private mLatestFullScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mLatestPartialScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mLogLock:Ljava/lang/Object;

.field private final mLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxPnoSsidPerScan:I

.field private mPartialScanFreq:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPnoMinRssiLevels:[I

.field mPnoNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private mPnoWificonfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mRoamingWifiInfo:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;

.field final mScanListener:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;

.field private final mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

.field private final mScanResultsLock:Ljava/lang/Object;

.field private final mScanner:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;

.field private final mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

.field private mScreenOn:Z

.field private mSilentRoamFrom:I

.field private mTargetNetworkId:I

.field final mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

.field private final mThroughputScorer:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;

.field private mUseAlternativeSilentRoaming:Z

.field private mVerboseLoggingEnabled:Z

.field private final mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

.field private final mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private mWifiEnabled:Z

.field private final mWifiFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private final mWifiNl80211Util:Lcom/samsung/android/server/wifi/util/WifiNl80211Util;


# direct methods
.method public static synthetic $r8$lambda$EI42lLY9sSAVBoQCypMlWpuBLxs(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Boolean;
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->lambda$updatePnoNetworkList$1(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EV4evEt-I371YbkKYgJFQNL2Wso(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->lambda$registerReceiver$0(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$IAc3sdS3WrQMsFkq18VpkCEOb0c(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->lambda$updatePnoNetworkList$4(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RJOkaOA5-7BS2o5Hec0qQnzJrCU(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Boolean;
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->lambda$updatePnoNetworkList$2(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Zb9Mcuoc0CEfTf56xxiTjCvmTAw(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->lambda$updatePnoNetworkList$5(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kPauWjTKwaJG-pZmIxzQslFAQ_4(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Boolean;
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->lambda$updatePnoNetworkList$3(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pJtVAsf1q1085SNBI5lfz1xdxfA(Ljava/util/List;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->lambda$getAllScanOptimizationNetworks$6(Ljava/util/List;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlogUtils(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/LogUtils;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAllowFrameworkRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAllowFrameworkRoaming:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAlternativeEnabledState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAlternativeEnabledState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCandidates(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mCandidates:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCapabilities(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mCapabilities:Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/SemClock;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mConnectingWatchdogCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentBssidScanResult(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/ScanResult;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mCurrentBssidScanResult:Landroid/net/wifi/ScanResult;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mDefaultState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisabledState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mDisabledState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnabledState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mEnabledState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHiddenList(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mHiddenList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIfaceName(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIfaceName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsNetworkSelectionNeeded(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsNetworkSelectionNeeded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWifiConnected(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsWifiConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastConnectedTime(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastConnectedTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLastNetworkId(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastNetworkId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/NetworkInfo$State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastNetworkState:Landroid/net/NetworkInfo$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastPnoNetworkFoundTimeStamp(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastPnoNetworkFoundTimeStamp:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxPnoSsidPerScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mMaxPnoSsidPerScan:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPartialScanFreq(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPartialScanFreq:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPnoWificonfigs(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoWificonfigs:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRoamingWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mRoamingWifiInfo:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/ScanPool;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScreenOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSilentRoamFrom(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamFrom:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTargetNetworkId(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mTargetNetworkId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmThroughputScorer(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputScorer:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUseAlternativeSilentRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mUseAlternativeSilentRoaming:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mVerboseLoggingEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiCondManager(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/nl80211/WifiNl80211Manager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiInfo;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiNl80211Util(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/WifiNl80211Util;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiNl80211Util:Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCapabilities(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mCapabilities:Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mConnectingWatchdogCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIfaceName(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIfaceName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsNetworkSelectionNeeded(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsNetworkSelectionNeeded:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastConnectedTime(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastConnectedTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastNetworkId(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastNetworkId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastNetworkState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/NetworkInfo$State;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastNetworkState:Landroid/net/NetworkInfo$State;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastPnoNetworkFoundTimeStamp(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastPnoNetworkFoundTimeStamp:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMaxPnoSsidPerScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mMaxPnoSsidPerScan:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSilentRoamFrom(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamFrom:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTargetNetworkId(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mTargetNetworkId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$maddPartialScanRequest(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->addPartialScanRequest()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mallowFrameworkRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->allowFrameworkRoaming(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mavoidStartingSilentRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->avoidStartingSilentRoaming()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcalculateLastSelectionWeight(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiConfiguration;)D
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->calculateLastSelectionWeight(Landroid/net/wifi/WifiConfiguration;)D

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$mclearPnoScanParams(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->clearPnoScanParams()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetInterfaceName(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getInterfaceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhasInternetAccess(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiInfo;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->hasInternetAccess(Landroid/net/wifi/WifiInfo;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misEverMetered(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/wifi/ScanResult;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isEverMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misInternetConnectionValidated(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isInternetConnectionValidated()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misNoInternetAccessExpected(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiInfo;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isNoInternetAccessExpected(Landroid/net/wifi/WifiInfo;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSecurityMatch(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isSecurityMatch(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSilentRoamingEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isSilentRoamingEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogStateAndMessage(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/os/Message;Lcom/android/internal/util/State;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyConnectingState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->notifyConnectingState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$moverrideCandidateWithUserConnectChoice(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->overrideCandidateWithUserConnectChoice(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetWifiNetworkState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;ZLjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->setWifiNetworkState(ZLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopPnoScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->stopPnoScan()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCurrentBssidScanResult(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updateCurrentBssidScanResult()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFullScanResults(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;[Landroid/net/wifi/ScanResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updateFullScanResults([Landroid/net/wifi/ScanResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLastSelectedNetwork(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updateLastSelectedNetwork()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLinkLayerStateForCurrentNetwork(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updateLinkLayerStateForCurrentNetwork()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePartialScanResults(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;[Landroid/net/wifi/ScanResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updatePartialScanResults([Landroid/net/wifi/ScanResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePnoNetworkList(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updatePnoNetworkList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePnoScanParams(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updatePnoScanParams()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smisFromCarrierOrPrivilegedApp(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isFromCarrierOrPrivilegedApp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 113
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/16 v1, 0xc8

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_c

    :cond_a
    const/16 v0, 0x12c

    :goto_c
    sput v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->NUM_LOG_RECS:I

    .line 200
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v1, 0x32

    .line 201
    :cond_16
    sput v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->MAX_WIFI_DIAGNOSTIC_LIST_SIZE:I

    .line 277
    new-instance v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mW24hStats:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/util/SemClock;Landroid/os/Looper;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/util/LocalLog;)V
    .registers 24

    move-object v1, p1

    .line 289
    new-instance v10, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;

    invoke-direct {v10, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;-><init>(Landroid/content/Context;)V

    new-instance v11, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v7, p7

    invoke-direct {v11, p1, v5, v3, v7}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    new-instance v12, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    invoke-direct {v12, p1}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;-><init>(Landroid/content/Context;)V

    new-instance v13, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;

    invoke-direct {v13}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;-><init>()V

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v13}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/util/SemClock;Landroid/os/Looper;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/util/LocalLog;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/util/SemClock;Landroid/os/Looper;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/util/LocalLog;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;)V
    .registers 32
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "SilentRoamingManager"

    move-object/from16 v3, p3

    .line 310
    invoke-direct {v0, v2, v3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 151
    new-instance v2, Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    iput-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 156
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLogLock:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 157
    iput-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIfaceName:Ljava/lang/String;

    const/4 v3, 0x0

    .line 164
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mVerboseLoggingEnabled:Z

    .line 165
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsNetworkSelectionNeeded:Z

    .line 166
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAllowFrameworkRoaming:Z

    .line 167
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsPnoScanning:Z

    .line 168
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsBluetoothConnected:Z

    .line 172
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAcceptUnvalidated:Z

    const/4 v4, -0x1

    .line 174
    iput v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkId:I

    .line 175
    iput-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkKey:Ljava/lang/String;

    .line 176
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkEnabled:Z

    const-wide/16 v5, -0x1

    .line 177
    iput-wide v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedTimeStamp:J

    .line 180
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mDbg:Z

    const-wide/16 v5, 0x1388

    .line 181
    iput-wide v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->CONNECTING_WATCHDOG_TIMEOUT_MS:J

    const/4 v5, 0x5

    .line 182
    iput-short v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->STOP_PNO_SCAN_THRESHOLD:S

    .line 184
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPartialScanFreq:Ljava/util/Set;

    .line 186
    iput v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mTargetNetworkId:I

    .line 187
    iput v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mConnectingWatchdogCount:I

    .line 188
    iput v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mMaxPnoSsidPerScan:I

    const-wide/high16 v5, -0x8000000000000000L

    .line 189
    iput-wide v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastPnoNetworkFoundTimeStamp:J

    .line 209
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanResultsLock:Ljava/lang/Object;

    .line 210
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLatestFullScanResults:Ljava/util/List;

    .line 211
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLatestPartialScanResults:Ljava/util/List;

    .line 212
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mHiddenList:Ljava/util/List;

    .line 214
    iput-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mCurrentBssidScanResult:Landroid/net/wifi/ScanResult;

    .line 218
    sget-object v2, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastNetworkState:Landroid/net/NetworkInfo$State;

    .line 219
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoNetworks:Ljava/util/List;

    .line 221
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLogs:Ljava/util/List;

    .line 222
    iput v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamFrom:I

    const-wide/16 v4, 0x2710

    .line 223
    iput-wide v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->CHECK_INTERNET_VALIDITY_TIMEOUT:J

    const/4 v2, 0x3

    new-array v2, v2, [I

    .line 225
    fill-array-data v2, :array_18a

    iput-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoMinRssiLevels:[I

    const-string v2, "None"

    .line 230
    iput-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAlternativeSilentRoamingReason:Ljava/lang/String;

    .line 232
    new-instance v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$1;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    iput-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanListener:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;

    .line 260
    new-instance v2, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;-><init>()V

    iput-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    .line 262
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mKnownMeteredNetworkIds:Landroid/util/ArraySet;

    .line 264
    new-instance v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;

    invoke-direct {v2, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    iput-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mDefaultState:Lcom/android/internal/util/State;

    .line 265
    new-instance v4, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;

    invoke-direct {v4, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    iput-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mEnabledState:Lcom/android/internal/util/State;

    .line 266
    new-instance v5, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$AlternativeEnabledState;

    invoke-direct {v5, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$AlternativeEnabledState;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    iput-object v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAlternativeEnabledState:Lcom/android/internal/util/State;

    .line 267
    new-instance v6, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;

    invoke-direct {v6, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    iput-object v6, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mDisabledState:Lcom/android/internal/util/State;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    .line 270
    const-class v8, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    aput-object v8, v7, v3

    .line 271
    invoke-static {v7}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mGetWhatToString:Landroid/util/SparseArray;

    .line 273
    new-instance v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    invoke-direct {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    const-string v3, "com.samsung.android.oneconnect"

    const-string v7, "com.samsung.android.app.mirrorlink"

    const-string v8, "com.google.android.gms"

    const-string v9, "com.google.android.projection.gearhead"

    .line 2136
    filled-new-array {v3, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->MULTINETWORK_ALLOWING_SYSTEM_PACKAGE_LIST:Ljava/util/List;

    const-string v7, "com.android.systemui"

    const-string v8, "android.uid.systemui"

    const-string v9, "com.samsung.android.app.aodservice"

    const-string v10, "com.sec.android.cover.ledcover"

    const-string v11, "com.samsung.android.app.routines"

    const-string v12, "com.android.systemui"

    const-string v13, "com.sec.android.dexsystemui"

    const-string v14, "com.samsung.android.gesture.MotionRecognitionService"

    const-string v15, "com.android.systemui.sensor.PickupController"

    const-string v16, "com.samsung.uready.agent"

    const-string v17, "com.google.android.apps.carrier.carrierwifi"

    .line 2143
    filled-new-array/range {v7 .. v17}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->MULTINETWORK_EXCEPTION_PACKAGE_LIST:Ljava/util/List;

    .line 311
    iput-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mContext:Landroid/content/Context;

    move-object/from16 v3, p2

    .line 312
    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    move-object/from16 v3, p4

    .line 313
    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 314
    invoke-virtual/range {p7 .. p7}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiFeatureController()Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    move-object/from16 v3, p7

    .line 315
    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-object/from16 v7, p5

    .line 316
    iput-object v7, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-object/from16 v7, p6

    .line 317
    iput-object v7, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 318
    invoke-virtual/range {p7 .. p7}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInterfaceNameProvider()Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 319
    invoke-virtual/range {p7 .. p7}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNl80211Util()Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiNl80211Util:Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    .line 320
    invoke-virtual/range {p7 .. p7}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getScanPoll()Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    move-object/from16 v7, p8

    .line 321
    iput-object v7, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-object/from16 v7, p9

    .line 322
    iput-object v7, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLocalLog:Landroid/util/LocalLog;

    .line 323
    invoke-virtual/range {p7 .. p7}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiIssueDetector()Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    const-string v3, "wifinl80211"

    .line 325
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    const-string v3, "connectivity"

    .line 326
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object/from16 v1, p10

    .line 327
    iput-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mRoamingWifiInfo:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;

    move-object/from16 v1, p11

    .line 328
    iput-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanner:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;

    move-object/from16 v1, p12

    .line 329
    iput-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    move-object/from16 v1, p13

    .line 330
    iput-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputScorer:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;

    .line 331
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mCandidates:Ljava/util/Map;

    .line 333
    sget v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->NUM_LOG_RECS:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->setLogRecSize(I)V

    .line 335
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->registerForSettingsChanges()V

    .line 337
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->addState(Lcom/android/internal/util/State;)V

    .line 339
    invoke-virtual {v0, v6, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 341
    invoke-virtual {v0, v4, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 343
    invoke-virtual {v0, v5, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 346
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->setInitialState(Lcom/android/internal/util/State;)V

    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->start()V

    return-void

    nop

    :array_18a
    .array-data 4
        -0x3f
        -0x3f
        -0x3f
    .end array-data
.end method

.method static synthetic access$000(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V
    .registers 2

    .line 96
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)Z
    .registers 2

    .line 96
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V
    .registers 2

    .line 96
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)Z
    .registers 2

    .line 96
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V
    .registers 2

    .line 96
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V
    .registers 2

    .line 96
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)Z
    .registers 2

    .line 96
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V
    .registers 2

    .line 96
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V
    .registers 2

    .line 96
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)Z
    .registers 2

    .line 96
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V
    .registers 2

    .line 96
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)Z
    .registers 2

    .line 96
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V
    .registers 2

    .line 96
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->removeMessages(I)V

    return-void
.end method

.method private addFullScanRequest()V
    .registers 2

    const-string v0, "startFullScan : current network is EAP"

    .line 1001
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 1002
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanner:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->startScan()V

    return-void
.end method

.method private addPartialScanRequest()V
    .registers 6

    .line 1006
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPartialScanFreq:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1007
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPartialScanFreq:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 1008
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 1009
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPartialScan : freq list = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 1010
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mHiddenList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    .line 1011
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " hiddenNetwork.ssid= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    goto :goto_3d

    .line 1013
    :cond_60
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanner:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mHiddenList:Ljava/util/List;

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->startPartialScan([ILjava/util/List;)V

    return-void
.end method

.method private allowFrameworkRoaming(Z)V
    .registers 4

    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allowFrameworkRoaming: mAllowFrameworkRoaming=  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAllowFrameworkRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enable= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SilentRoamingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAllowFrameworkRoaming:Z

    if-eq v0, p1, :cond_2e

    .line 1020
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAllowFrameworkRoaming:Z

    .line 1021
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setSilentRoamingEnabled(Z)V

    .line 1022
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->reportToIssueDetector()V

    :cond_2e
    return-void
.end method

.method private avoidStartingSilentRoaming()Z
    .registers 6

    .line 2106
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isSilentRoamingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2e

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isSupportSilentRoaming()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isInternetNotRequiredNetwork()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 2107
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isMultiNetwork()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isNoInternetAccessExpected(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAcceptUnvalidated:Z

    if-nez v0, :cond_2e

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isEapNetwork()Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_2e

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v0, v1

    :goto_2f
    if-eqz v0, :cond_89

    .line 2109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "avoidStartingSilentRoaming - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isSilentRoamingEnabled()Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2110
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isSupportSilentRoaming()Z

    move-result v4

    xor-int/2addr v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2111
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isInternetNotRequiredNetwork()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isMultiNetwork()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2112
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isNoInternetAccessExpected(Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAcceptUnvalidated:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2113
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isEapNetwork()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2109
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    :cond_89
    return v0
.end method

.method private calculateLastSelectionWeight(Landroid/net/wifi/WifiConfiguration;)D
    .registers 9

    .line 672
    iget v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkId:I

    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_8

    return-wide v1

    .line 673
    :cond_8
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v0, v3, :cond_d

    return-wide v1

    .line 675
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedTimeStamp:J

    sub-long/2addr v3, v5

    long-to-double v3, v3

    .line 677
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getLastSelectionMinutes()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    .line 679
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mVerboseLoggingEnabled:Z

    if-eqz p0, :cond_5a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "calculateLastSelectionWeight: config= "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", timeDifference="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", SeenInLastQualifiedNetworkSelection="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getSeenInLastQualifiedNetworkSelection()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SilentRoamingManager"

    .line 679
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    long-to-double p0, v5

    cmpl-double v0, v3, p0

    if-ltz v0, :cond_60

    return-wide v1

    :cond_60
    div-double/2addr v3, p0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    sub-double v3, p0, v3

    .line 684
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static calendarToString(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 4

    .line 1741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    .line 1742
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xb

    .line 1743
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    .line 1744
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xd

    .line 1745
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xe

    .line 1746
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private checkSilentRoamingDisabledNetworks()V
    .registers 7

    .line 2322
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 2323
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2324
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 2325
    iget v3, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_a

    const/4 v3, 0x0

    .line 2327
    iput v3, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 2328
    iget-object v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mContext:Landroid/content/Context;

    const-string v5, "sem_wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/wifi/SemWifiManager;

    .line 2329
    invoke-virtual {v4, v2}, Lcom/samsung/android/wifi/SemWifiManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    .line 2330
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->enableNetwork(IZ)Z

    .line 2331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enable network - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getNetworkKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    goto :goto_a

    :cond_58
    return-void
.end method

.method private clearLastSelectedNetwork()V
    .registers 3

    const-string v0, "Clearing last selected network"

    .line 2085
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2086
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkId:I

    const/4 v0, 0x0

    .line 2087
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkKey:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2088
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkEnabled:Z

    const-wide/16 v0, -0x1

    .line 2089
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedTimeStamp:J

    return-void
.end method

.method private clearPnoScanParams()V
    .registers 3

    .line 1033
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoNetworks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1034
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoMinRssiLevels:[I

    const/4 v0, 0x0

    const/16 v1, -0x3f

    aput v1, p0, v0

    const/4 v0, 0x1

    .line 1036
    aput v1, p0, v0

    const/4 v0, 0x2

    .line 1038
    aput v1, p0, v0

    return-void
.end method

.method private createStringBuilderWithLogTime()Ljava/lang/StringBuilder;
    .registers 5

    .line 1731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1732
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1733
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/SemClock;->getWallClockMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string p0, "Time="

    .line 1734
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->calendarToString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private getInterfaceName()Ljava/lang/String;
    .registers 4

    .line 1067
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIfaceName:Ljava/lang/String;

    const-string v1, " ifaceName="

    const-string v2, "SilentRoamingManager"

    if-eqz v0, :cond_23

    .line 1068
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :cond_20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIfaceName:Ljava/lang/String;

    return-object p0

    .line 1072
    :cond_23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->getPrimaryInterfaceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIfaceName:Ljava/lang/String;

    if-nez v0, :cond_33

    const-string v0, "ifaceName is null"

    .line 1074
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 1076
    :cond_33
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_4b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_4b
    :goto_4b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIfaceName:Ljava/lang/String;

    return-object p0
.end method

.method private getIssueUidForConnectingNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 9

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 2179
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    const/4 v4, 0x1

    aput v2, v1, v4

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    const/4 v4, 0x2

    aput v2, v1, v4

    .line 2180
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :goto_18
    if-ge v3, v0, :cond_35

    .line 2181
    aget v4, v1, v3

    const/16 v5, 0x3f2

    if-gt v4, v5, :cond_21

    goto :goto_32

    .line 2184
    :cond_21
    :try_start_21
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .line 2185
    iget-object v6, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->MULTINETWORK_ALLOWING_SYSTEM_PACKAGE_LIST:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2b} :catch_2e

    if-eqz v5, :cond_32

    return v4

    :catch_2e
    move-exception v4

    .line 2189
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_32
    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 2192
    :cond_35
    iget p0, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_3e

    iget p0, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    goto :goto_40

    :cond_3e
    iget p0, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    :goto_40
    return p0
.end method

.method private getMultiBandApNetIds()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2219
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_a

    return-object v0

    .line 2220
    :cond_a
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 2221
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .line 2222
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object v3

    if-eqz v1, :cond_105

    if-eqz v2, :cond_105

    .line 2223
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_105

    .line 2224
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x11

    if-ne v4, v5, :cond_105

    const-string v4, "00:00:00:00:00:00"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_105

    const-string v4, "02:00:00:00:00:00"

    .line 2225
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_105

    if-eqz v3, :cond_105

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_48

    goto/16 :goto_105

    .line 2229
    :cond_48
    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2230
    iget-object v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanResultsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2231
    :try_start_4d
    iget-object v5, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLatestFullScanResults:Ljava/util/List;

    if-eqz v5, :cond_100

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_59

    goto/16 :goto_100

    .line 2232
    :cond_59
    iget-object v5, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLatestFullScanResults:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5f
    :goto_5f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_fe

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    .line 2233
    iget-object v7, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {p0, v2, v7}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isMultiBandApBssidPair(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 2234
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_77
    :goto_77
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 2235
    iget v9, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v9, v1, :cond_88

    goto :goto_77

    .line 2236
    :cond_88
    iget-object v9, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_77

    invoke-direct {p0, v8, v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isSecurityMatch(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z

    move-result v9

    if-eqz v9, :cond_77

    .line 2237
    iget v7, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2238
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Multi-band Ap found - current: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "]  Found: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "](nid = "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2239
    invoke-virtual {v9, v6}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2238
    invoke-direct {p0, v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    goto/16 :goto_5f

    .line 2247
    :cond_fe
    monitor-exit v4

    return-object v0

    .line 2231
    :cond_100
    :goto_100
    monitor-exit v4

    return-object v0

    :catchall_102
    move-exception p0

    .line 2247
    monitor-exit v4
    :try_end_104
    .catchall {:try_start_4d .. :try_end_104} :catchall_102

    throw p0

    :cond_105
    :goto_105
    return-object v0
.end method

.method private hasInternetAccess(Landroid/net/wifi/WifiInfo;)Z
    .registers 2

    .line 2291
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2292
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    if-nez p0, :cond_11

    const-string p0, "SilentRoamingManager"

    const-string p1, "hasInternetAccess: network is null"

    .line 2294
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 2297
    :cond_11
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isEapNetwork()Z
    .registers 2

    .line 2094
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1b

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1b

    const/16 v0, 0xc

    if-ne p0, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method private isEverMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/wifi/ScanResult;)Z
    .registers 7

    if-eqz p2, :cond_b

    .line 2268
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v0, v1, :cond_b

    const/4 p2, 0x0

    .line 2269
    :cond_b
    invoke-static {p1, p2}, Landroid/net/wifi/WifiConfiguration;->isMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_19

    .line 2270
    invoke-static {p3}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForChargablePublicNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result p3

    if-eqz p3, :cond_19

    move p2, v0

    .line 2273
    :cond_19
    iget p3, p1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    const-string v1, "KnownMeteredNetworkIds = "

    if-eqz p3, :cond_49

    .line 2275
    iget-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mKnownMeteredNetworkIds:Landroid/util/ArraySet;

    iget p3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_41

    .line 2276
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mKnownMeteredNetworkIds:Landroid/util/ArraySet;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 2278
    :cond_41
    iget p0, p1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    if-ne p0, v0, :cond_46

    goto :goto_7a

    :cond_46
    const/4 p0, 0x0

    move v0, p0

    goto :goto_7a

    .line 2279
    :cond_49
    iget-object p3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mKnownMeteredNetworkIds:Landroid/util/ArraySet;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_58

    goto :goto_7a

    :cond_58
    if-eqz p2, :cond_79

    .line 2284
    iget-object p3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mKnownMeteredNetworkIds:Landroid/util/ArraySet;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2285
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mKnownMeteredNetworkIds:Landroid/util/ArraySet;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    :cond_79
    move v0, p2

    :goto_7a
    return v0
.end method

.method private static isFromCarrierOrPrivilegedApp(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 4

    .line 688
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    return v1

    .line 694
    :cond_b
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    if-nez v0, :cond_1a

    iget-boolean p0, p0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    if-nez p0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method private isInternetConnectionValidated()Z
    .registers 3

    .line 2208
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 2209
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 2210
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method private isInternetNotRequiredNetwork()Z
    .registers 4

    .line 2197
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 2198
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 2199
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 2200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInternetNotRequiredNetwork: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_3e
    const/4 p0, 0x0

    return p0
.end method

.method private isLegacyMultiNetwork()Z
    .registers 4

    .line 2158
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 2160
    :cond_c
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getIssueUidForConnectingNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 2161
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2162
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 2163
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isMultiNetworkAvailableApp(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isMultiBandApBssidPair(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 p0, 0x0

    if-eqz p1, :cond_3f

    if-nez p2, :cond_6

    goto :goto_3f

    .line 2254
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_3f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v1, :cond_15

    goto :goto_3f

    :cond_15
    move v0, p0

    move v1, v0

    :goto_17
    const/4 v2, 0x6

    if-ge v0, v2, :cond_3b

    mul-int/lit8 v2, v0, 0x3

    .line 2257
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_32

    add-int/lit8 v2, v2, 0x1

    .line 2258
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v3, v2, :cond_38

    :cond_32
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_38

    return p0

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_3b
    const/4 p1, 0x1

    if-ne v1, p1, :cond_3f

    move p0, p1

    :cond_3f
    :goto_3f
    return p0
.end method

.method private isMultiNetwork()Z
    .registers 9

    .line 2122
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 2124
    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isLegacyMultiNetwork()Z

    move-result v2

    .line 2125
    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz v3, :cond_1a

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    if-eq v3, v5, :cond_23

    :cond_1a
    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    if-nez v3, :cond_23

    if-eqz v2, :cond_21

    goto :goto_23

    :cond_21
    move v3, v1

    goto :goto_24

    :cond_23
    :goto_23
    move v3, v4

    :goto_24
    if-eqz v3, :cond_5b

    .line 2128
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isMultiNetwork : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    if-eqz v7, :cond_39

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    if-ne v7, v5, :cond_39

    move v1, v4

    :cond_39
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " || "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    :cond_5b
    return v3
.end method

.method private isMultiNetworkAvailableApp(IILjava/lang/String;)Z
    .registers 5

    const/16 v0, 0x3f2

    if-le p1, v0, :cond_25

    if-gt p2, v0, :cond_7

    goto :goto_25

    :cond_7
    if-eqz p3, :cond_23

    .line 2171
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->MULTINETWORK_EXCEPTION_PACKAGE_LIST:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2172
    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_23
    const/4 p0, 0x1

    return p0

    .line 2168
    :cond_25
    :goto_25
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->MULTINETWORK_ALLOWING_SYSTEM_PACKAGE_LIST:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isNoInternetAccessExpected(Landroid/net/wifi/WifiInfo;)Z
    .registers 2

    .line 2301
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2302
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    if-nez p0, :cond_11

    const-string p0, "SilentRoamingManager"

    const-string p1, "isNoInternetAccessExpected: network is null"

    .line 2304
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 2307
    :cond_11
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isNoInternetAccessExpected()Z

    move-result p0

    return p0
.end method

.method private isSecurityMatch(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z
    .registers 6

    .line 1901
    invoke-static {p2}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->generateSecurityParamsListFromScanResult(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    move-result-object p0

    .line 1903
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getSecurityParamsList()Ljava/util/List;

    move-result-object p1

    .line 1905
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/SecurityParams;

    .line 1906
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/SecurityParams;

    .line 1907
    invoke-virtual {p2}, Landroid/net/wifi/SecurityParams;->getSecurityType()I

    move-result v2

    invoke-virtual {v1}, Landroid/net/wifi/SecurityParams;->getSecurityType()I

    move-result v1

    if-ne v2, v1, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_34
    const/4 p0, 0x0

    return p0
.end method

.method private isSilentRoamingEnabled()Z
    .registers 4

    .line 407
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mContext:Landroid/content/Context;

    const-string v1, "sem_wifi_switch_to_better_wifi_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    return v2
.end method

.method private isSupportSilentRoaming()Z
    .registers 1

    .line 2318
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupportSilentRoaming()Z

    move-result p0

    return p0
.end method

.method private isUserChoiceRssiCloseToOrGreaterThanExpectedValue(II)Z
    .registers 4

    const/4 v0, 0x1

    if-nez p2, :cond_4

    return v0

    .line 2027
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getEstimateRssiErrorMargin()I

    move-result p0

    sub-int/2addr p2, p0

    if-lt p1, p2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static synthetic lambda$getAllScanOptimizationNetworks$6(Ljava/util/List;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z
    .registers 4

    .line 661
    iget-boolean v0, p2, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    if-eqz v0, :cond_39

    iget-boolean v0, p2, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v0, :cond_12

    .line 662
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasEverConnected()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 663
    :cond_12
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v0

    if-eqz v0, :cond_39

    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 664
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_39

    .line 665
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->isNoInternetAccessExpected()Z

    move-result p0

    if-nez p0, :cond_39

    iget-object p0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 666
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_37

    goto :goto_39

    :cond_37
    const/4 p0, 0x0

    goto :goto_3a

    :cond_39
    :goto_39
    const/4 p0, 0x1

    :goto_3a
    return p0
.end method

.method private synthetic lambda$registerReceiver$0(II)V
    .registers 4

    const/4 p2, 0x1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    .line 427
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->setWifiState(Z)V

    goto :goto_e

    :cond_8
    if-ne p1, p2, :cond_e

    const/4 p1, 0x0

    .line 429
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->setWifiState(Z)V

    :cond_e
    :goto_e
    return-void
.end method

.method private static synthetic lambda$updatePnoNetworkList$1(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Boolean;
    .registers 1

    .line 567
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updatePnoNetworkList$2(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Boolean;
    .registers 1

    .line 569
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getSeenInLastQualifiedNetworkSelection()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updatePnoNetworkList$3(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Boolean;
    .registers 1

    .line 570
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updatePnoNetworkList$4(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Integer;
    .registers 1

    .line 571
    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->numRebootsSinceLastUse:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updatePnoNetworkList$5(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Integer;
    .registers 1

    .line 572
    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    neg-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private localLog(Ljava/lang/String;)V
    .registers 5

    .line 1750
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_9

    const-string v0, "SilentRoamingManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v0, :cond_10

    .line 1752
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1754
    :cond_10
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScreenOn:Z

    if-eqz v0, :cond_15

    return-void

    .line 1757
    :cond_15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5d

    const-string v0, "stopPnoScan"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_5d

    .line 1761
    :cond_24
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->createStringBuilderWithLogTime()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1763
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLogLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1764
    :try_start_3f
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLogs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->MAX_WIFI_DIAGNOSTIC_LIST_SIZE:I

    if-lt v1, v2, :cond_4f

    .line 1765
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLogs:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1767
    :cond_4f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLogs:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1768
    monitor-exit p1

    return-void

    :catchall_5a
    move-exception p0

    monitor-exit p1
    :try_end_5c
    .catchall {:try_start_3f .. :try_end_5c} :catchall_5a

    throw p0

    :cond_5d
    :goto_5d
    return-void
.end method

.method private logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V
    .registers 4

    .line 1716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " what="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Landroid/os/Message;->what:I

    .line 1717
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getWhatToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1718
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SilentRoamingManager"

    .line 1716
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static mcsMapToStreamMap(II)I
    .registers 2

    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0x2

    shr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x3

    return p0
.end method

.method private needToUseAlternativeSilentRoaming()Z
    .registers 8

    const-string v0, "ro.product.model"

    .line 2489
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vendor.bluetooth_fw_ver"

    .line 2490
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2491
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object v2

    .line 2492
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->checkAndUpdate()V

    .line 2493
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getAllVersions()Ljava/lang/String;

    move-result-object v2

    .line 2494
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "SilentRoamingManager"

    if-nez v3, :cond_49

    const-string v3, "SM-G998"

    .line 2495
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_32

    const-string v3, "SC-52B"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 2496
    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use Alternative SilentRoaming method. model: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAlternativeSilentRoamingReason:Ljava/lang/String;

    .line 2497
    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 2499
    :cond_49
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "BCM4361"

    const-string v6, "BCM4375"

    if-nez v0, :cond_5f

    .line 2500
    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_71

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 2501
    :cond_5f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_79

    .line 2502
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_71

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_79

    :cond_71
    const-string v0, "Use Alternative SilentRoaming method. BCM4375 or BCM4361 chipset."

    .line 2503
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAlternativeSilentRoamingReason:Ljava/lang/String;

    .line 2504
    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_79
    const-string v0, "Not Used"

    .line 2507
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAlternativeSilentRoamingReason:Ljava/lang/String;

    const/4 p0, 0x0

    return p0
.end method

.method private notifyConnectingState()V
    .registers 2

    const/4 v0, 0x4

    .line 397
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->sendMessage(I)V

    return-void
.end method

.method private overrideCandidateWithUserConnectChoice(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;
    .registers 10

    move-object v0, p2

    move-object v1, v0

    .line 1976
    :goto_2
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e5

    .line 1977
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v2

    .line 1979
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceRssi()I

    move-result v0

    const/4 v3, 0x0

    .line 1982
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    move-object v3, p1

    goto :goto_5e

    .line 1985
    :cond_39
    iget-object v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mCandidates:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_43
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;

    .line 1986
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    move-object v3, v5

    :cond_5e
    :goto_5e
    if-eqz v3, :cond_cc

    .line 1995
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    .line 1997
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->isNoInternetAccessExpected()Z

    move-result v4

    if-nez v4, :cond_7e

    .line 1998
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    move-result v4

    if-eqz v4, :cond_7e

    const/4 v4, 0x1

    goto :goto_7f

    :cond_7e
    const/4 v4, 0x0

    .line 1999
    :goto_7f
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v2

    if-eqz v2, :cond_c9

    if-nez v4, :cond_c9

    .line 2002
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getScanRssi()I

    move-result v2

    .line 2001
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isUserChoiceRssiCloseToOrGreaterThanExpectedValue(II)Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 2004
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Candidate updated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2005
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getScanRssi()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " [ConnectChoiceRssi:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2004
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    move-object v1, v3

    :cond_c9
    move-object v0, v3

    goto/16 :goto_2

    .line 2008
    :cond_cc
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Connect choice: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has no corresponding saved config."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 2013
    :cond_e5
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_111

    .line 2014
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "After user selection adjustment, the final candidate is:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 2015
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2014
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    :cond_111
    return-object v1
.end method

.method private static parseMaxNumberSpatialStreamsFromMcsMap(I)I
    .registers 4

    const/16 v0, 0x8

    :goto_2
    const/4 v1, 0x1

    if-lt v0, v1, :cond_10

    .line 706
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mcsMapToStreamMap(II)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_d

    goto :goto_11

    :cond_d
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_10
    move v0, v1

    :goto_11
    return v0
.end method

.method private registerForSettingsChanges()V
    .registers 4

    .line 535
    new-instance v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$5;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$5;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/os/Handler;)V

    .line 541
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    const-string v2, "sem_wifi_switch_to_better_wifi_enabled"

    .line 542
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const/4 v2, 0x0

    .line 541
    invoke-virtual {v1, p0, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerReceiver()V
    .registers 4

    .line 412
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanner:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->isAvailableScanner()Z

    move-result v0

    if-nez v0, :cond_10

    const-string p0, "SilentRoamingManager"

    const-string v0, "Failed to retrieve WifiScanner"

    .line 413
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 416
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanner:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanListener:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->registerListener(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;)V

    const-string v0, "WifiScanner.ScanListener registered"

    .line 417
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScreenOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScreenOn:Z

    .line 421
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    new-instance v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    .line 424
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiEnabled:Z

    .line 425
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    new-instance v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V

    .line 434
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsWifiConnected:Z

    .line 435
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    new-instance v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;)V

    .line 503
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    new-instance v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;)V

    .line 516
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$4;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private reportToIssueDetector()V
    .registers 4

    .line 1027
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1028
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAllowFrameworkRoaming:Z

    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1029
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    const/16 v1, 0x6b

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->report(ILandroid/os/Bundle;)V

    return-void
.end method

.method private setLastSelectedNetwork(ILjava/lang/String;)V
    .registers 5

    .line 2035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting last selected network to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 2037
    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkId:I

    .line 2038
    iput-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkKey:Ljava/lang/String;

    const/4 p1, 0x0

    .line 2039
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkEnabled:Z

    .line 2040
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedTimeStamp:J

    return-void
.end method

.method private setWifiNetworkState(ZLjava/lang/String;)V
    .registers 7

    .line 361
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsWifiConnected:Z

    const/4 v1, 0x0

    if-eq v0, p1, :cond_8

    .line 362
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->setAcceptUnvalidated(Z)V

    .line 364
    :cond_8
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsWifiConnected:Z

    .line 365
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiNetworkState: isConnected= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " configKey="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SilentRoamingManager"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    if-nez p1, :cond_34

    .line 368
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 369
    :cond_34
    iput-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastConnectedConfigKey:Ljava/lang/String;

    .line 370
    iget-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 371
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updateCurrentBssidScanResult()V

    :cond_41
    if-eqz p1, :cond_4b

    .line 373
    iget-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastConnectedTime:J

    :cond_4b
    const/4 p2, 0x6

    .line 374
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastConnectedConfigKey:Ljava/lang/String;

    invoke-virtual {p0, p2, p1, v1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private setWifiState(Z)V
    .registers 4

    .line 351
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiEnabled:Z

    .line 352
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiState: isEnabled= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SilentRoamingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/4 v0, 0x5

    .line 353
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->sendMessage(II)V

    if-nez p1, :cond_2a

    .line 355
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->clearLastSelectedNetwork()V

    .line 356
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mKnownMeteredNetworkIds:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    :cond_2a
    return-void
.end method

.method private stopPnoScan()V
    .registers 3

    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopPnoScan enter : mIsPnoScanning= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsPnoScanning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 995
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsPnoScanning:Z

    if-nez v0, :cond_25

    return-void

    .line 996
    :cond_25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanner:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->stopPnoScan()V

    const/4 v0, 0x0

    .line 997
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsPnoScanning:Z

    return-void
.end method

.method private updateCurrentBssidScanResult()V
    .registers 6

    .line 1934
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_dc

    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_e

    goto/16 :goto_dc

    .line 1939
    :cond_e
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_db

    .line 1940
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_db

    const-string v1, "00:00:00:00:00:00"

    .line 1941
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto/16 :goto_db

    .line 1945
    :cond_24
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanResultsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1946
    :try_start_27
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLatestFullScanResults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLatestPartialScanResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-nez v2, :cond_38

    monitor-exit v1

    return-void

    .line 1947
    :cond_38
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mCurrentBssidScanResult:Landroid/net/wifi/ScanResult;

    if-eqz v2, :cond_44

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 1948
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d6

    .line 1949
    :cond_44
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLatestFullScanResults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 1950
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 1951
    new-instance v0, Landroid/net/wifi/ScanResult;

    invoke-direct {v0, v3}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mCurrentBssidScanResult:Landroid/net/wifi/ScanResult;

    .line 1952
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_8b

    const-string v0, "SilentRoamingManager"

    .line 1953
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentBssidScanResult updated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mCurrentBssidScanResult:Landroid/net/wifi/ScanResult;

    .line 1954
    invoke-virtual {p0}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1953
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    :cond_8b
    monitor-exit v1

    return-void

    .line 1958
    :cond_8d
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLatestPartialScanResults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_93
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 1959
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_93

    .line 1960
    new-instance v0, Landroid/net/wifi/ScanResult;

    invoke-direct {v0, v3}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mCurrentBssidScanResult:Landroid/net/wifi/ScanResult;

    .line 1961
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_d4

    const-string v0, "SilentRoamingManager"

    .line 1962
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentBssidScanResult updated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mCurrentBssidScanResult:Landroid/net/wifi/ScanResult;

    .line 1963
    invoke-virtual {p0}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1962
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    :cond_d4
    monitor-exit v1

    return-void

    .line 1968
    :cond_d6
    monitor-exit v1

    return-void

    :catchall_d8
    move-exception p0

    monitor-exit v1
    :try_end_da
    .catchall {:try_start_27 .. :try_end_da} :catchall_d8

    throw p0

    :cond_db
    :goto_db
    return-void

    :cond_dc
    :goto_dc
    const/4 v0, 0x0

    .line 1935
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mCurrentBssidScanResult:Landroid/net/wifi/ScanResult;

    return-void
.end method

.method private updateFullScanResults([Landroid/net/wifi/ScanResult;)V
    .registers 4

    if-eqz p1, :cond_1f

    .line 1914
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_1f

    .line 1915
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanResultsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1916
    :try_start_9
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLatestFullScanResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1917
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLatestFullScanResults:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1919
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_1c

    .line 1920
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updateCurrentBssidScanResult()V

    return-void

    :catchall_1c
    move-exception p0

    .line 1919
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0

    :cond_1f
    :goto_1f
    return-void
.end method

.method private updateLastSelectedNetwork()V
    .registers 6

    .line 2045
    iget v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4f

    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkKey:Ljava/lang/String;

    if-eqz v0, :cond_4f

    .line 2047
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object v0

    .line 2048
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 2049
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkKey:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2050
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkId:I

    .line 2051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating last selected network to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 2058
    :cond_4f
    iget v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkId:I

    if-eq v0, v1, :cond_8a

    .line 2059
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_5f

    .line 2064
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->clearLastSelectedNetwork()V

    return-void

    .line 2067
    :cond_5f
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v1

    if-eqz v1, :cond_6d

    const/4 v1, 0x1

    .line 2068
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkEnabled:Z

    goto :goto_80

    .line 2069
    :cond_6d
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkEnabled:Z

    if-eqz v1, :cond_80

    .line 2070
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_80

    .line 2073
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->clearLastSelectedNetwork()V

    return-void

    .line 2078
    :cond_80
    :goto_80
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkKey:Ljava/lang/String;

    if-nez v1, :cond_8a

    .line 2079
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkKey:Ljava/lang/String;

    :cond_8a
    return-void
.end method

.method private updateLinkLayerStateForCurrentNetwork()V
    .registers 3

    .line 1055
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getWifiLinkLayerStats()V

    .line 1056
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->signalPoll(Ljava/lang/String;)Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1058
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    goto :goto_1d

    :cond_16
    const-string p0, "SilentRoamingManager"

    const-string v0, "SignalPollResult is null"

    .line 1062
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    return-void
.end method

.method private updatePartialScanResults([Landroid/net/wifi/ScanResult;)V
    .registers 4

    if-eqz p1, :cond_1f

    .line 1924
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_1f

    .line 1925
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanResultsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1926
    :try_start_9
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLatestPartialScanResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1927
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLatestPartialScanResults:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1929
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_1c

    .line 1930
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updateCurrentBssidScanResult()V

    return-void

    :catchall_1c
    move-exception p0

    .line 1929
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0

    :cond_1f
    :goto_1f
    return-void
.end method

.method private updatePnoMinRssiLevels()V
    .registers 3

    .line 630
    iget v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mConnectingWatchdogCount:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_6

    move v0, v1

    .line 635
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoMinRssiLevels:[I

    const/4 v1, 0x0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x3f

    aput v0, p0, v1

    const/4 v1, 0x1

    .line 638
    aput v0, p0, v1

    const/4 v1, 0x2

    .line 641
    aput v0, p0, v1

    return-void
.end method

.method private updatePnoNetworkList()V
    .registers 13

    .line 550
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoNetworks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 552
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getAllScanOptimizationNetworks()Ljava/util/List;

    move-result-object v0

    .line 553
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v0, "PnoNetwork List empty"

    .line 554
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    return-void

    .line 565
    :cond_15
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda4;-><init>()V

    .line 566
    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda5;-><init>()V

    .line 568
    invoke-interface {v1, v2}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda6;-><init>()V

    .line 570
    invoke-interface {v1, v2}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda7;-><init>()V

    .line 571
    invoke-interface {v1, v2}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda8;-><init>()V

    .line 572
    invoke-interface {v1, v2}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    .line 566
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    const-wide/16 v1, 0x2

    iget v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mMaxPnoSsidPerScan:I

    int-to-long v3, v3

    mul-long/2addr v3, v1

    .line 573
    invoke-interface {v0, v3, v4}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v0

    .line 574
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoWificonfigs:Ljava/util/List;

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePnoNetworkList SSIDs { "

    .line 577
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 579
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 580
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoWificonfigs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7a
    :goto_7a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "SilentRoamingManager"

    const/4 v6, 0x0

    if-eqz v4, :cond_196

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 581
    iget-object v7, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f9

    .line 582
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 583
    iget-object v7, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/samsung/android/server/wifi/util/ScanPool;->getScanResults(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    .line 584
    iget-object v7, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoNetworks:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    iget-object v7, v7, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->frequencies:[I

    array-length v8, v7

    move v9, v6

    :goto_ac
    if-ge v9, v8, :cond_ba

    aget v10, v7, v9

    .line 585
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_ac

    .line 587
    :cond_ba
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_be
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_dd

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 588
    iget v8, v7, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 589
    iget v7, v7, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_be

    .line 591
    :cond_dd
    iget-object v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoNetworks:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    invoke-interface {v5}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->frequencies:[I

    goto :goto_7a

    .line 594
    :cond_f9
    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->createPnoNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    move-result-object v7

    .line 596
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 597
    iget-object v9, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/server/wifi/util/ScanPool;->getScanResults(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v9

    .line 598
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_110
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/ScanResult;

    .line 599
    iget v11, v10, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 600
    iget v10, v10, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_110

    .line 602
    :cond_12f
    invoke-interface {v8}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v8

    iput-object v8, v7, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->frequencies:[I

    .line 603
    iget-object v8, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoNetworks:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    iget-object v7, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 605
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    iget-boolean v7, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mUseAlternativeSilentRoaming:Z

    if-eqz v7, :cond_176

    .line 607
    iget-boolean v7, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v7, :cond_176

    .line 608
    iget-object v7, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mHiddenList:Ljava/util/List;

    new-instance v8, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {v8, v4}, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    :cond_176
    iget-object v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoNetworks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget v7, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mMaxPnoSsidPerScan:I

    if-lt v4, v7, :cond_7a

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Limited PNO SSIDs as "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mMaxPnoSsidPerScan:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_196
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mUseAlternativeSilentRoaming:Z

    if-eqz v1, :cond_19f

    .line 617
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPartialScanFreq:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_19f
    const-string v1, ","

    .line 619
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " }"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v6, [Ljava/lang/Integer;

    .line 622
    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    .line 623
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const-string v2, "pno frequency - "

    .line 624
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method private updatePnoScanParams()V
    .registers 1

    .line 971
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updatePnoNetworkList()V

    .line 972
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updatePnoMinRssiLevels()V

    return-void
.end method


# virtual methods
.method addPnoScanRequest()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPnoScan enter : mIsPnoScanning= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsPnoScanning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mConnectingWatchdogCount= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mConnectingWatchdogCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pnoNetwork size= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoNetworks:Ljava/util/List;

    .line 979
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 977
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 980
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsPnoScanning:Z

    if-eqz v0, :cond_46

    const-string v0, "SilentRoamingManager"

    const-string v1, " pno scan already running, stop pno scan "

    .line 981
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->stopPnoScan()V

    .line 984
    :cond_46
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoNetworks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_54

    const-string v0, "PnoNetworks is empty, startPnoScan skip"

    .line 985
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    return-void

    .line 988
    :cond_54
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanner:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoNetworks:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoMinRssiLevels:[I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->startPnoScan(Ljava/util/List;[I)V

    const/4 v0, 0x1

    .line 989
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsPnoScanning:Z

    return-void
.end method

.method public checkAndStart()V
    .registers 2

    .line 401
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->needToUseAlternativeSilentRoaming()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mUseAlternativeSilentRoaming:Z

    .line 402
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->registerReceiver()V

    const/4 v0, 0x0

    .line 403
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->sendMessage(I)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 1773
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1774
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Dump of SilentRoamingManager"

    .line 1775
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "SilentRoamingManager - Log Begin ----"

    .line 1776
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Silent Roaming is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isSilentRoamingEnabled()Z

    move-result v1

    const-string v2, "On"

    const-string v3, "Off"

    if-eqz v1, :cond_26

    move-object v1, v2

    goto :goto_27

    :cond_26
    move-object v1, v3

    :goto_27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AllowWiFiFrameworkNetworkRoaming is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAllowFrameworkRoaming:Z

    if-eqz v1, :cond_40

    goto :goto_41

    :cond_40
    move-object v2, v3

    :goto_41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1779
    iget v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_54

    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkKey:Ljava/lang/String;

    if-eqz v0, :cond_8d

    .line 1780
    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LastSelectedNetwork - nid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 1781
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedTimeStamp:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " seconds ago"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1780
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1783
    :cond_8d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMaxPnoSsidPerScan : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mMaxPnoSsidPerScan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlternativeSilentRoaming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAlternativeSilentRoamingReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1785
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string p0, "SilentRoamingManager - Log End ----"

    .line 1786
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1787
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public enableVerboseLogging(I)V
    .registers 3

    if-lez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    .line 1725
    :goto_5
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mVerboseLoggingEnabled:Z

    .line 1726
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->enableVerboseLogging(Z)V

    .line 1727
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputScorer:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mVerboseLoggingEnabled:Z

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->enableVerboseLogging(Z)V

    return-void
.end method

.method getAllScanOptimizationNetworks()Ljava/util/List;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 648
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object v0

    .line 653
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getMultiBandApNetIds()Ljava/util/List;

    move-result-object v1

    .line 655
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsWifiConnected:Z

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<unknown ssid>"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 656
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0

    goto :goto_25

    :cond_23
    const-string p0, ""

    .line 661
    :goto_25
    new-instance v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    return-object v0
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .registers 6

    .line 1811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1812
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->smToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1814
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScreenOn:Z

    if-nez p0, :cond_18

    const-string p0, " screen=off"

    .line 1815
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_18
    const-string p0, " screen=on"

    .line 1817
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1820
    :goto_1d
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq p0, v1, :cond_81

    const/4 v1, 0x6

    const-string v3, " "

    if-eq p0, v1, :cond_60

    const/16 v1, 0x8

    if-eq p0, v1, :cond_3d

    .line 1833
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1834
    iget p0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1835
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1836
    iget p0, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_92

    .line 1828
    :cond_3d
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p0, :cond_92

    .line 1829
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Received "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Landroid/net/wifi/ScanResult;

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " pno scan results"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_92

    .line 1825
    :cond_60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/os/Message;->arg1:I

    if-ne p0, v2, :cond_7b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connected "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_7d

    :cond_7b
    const-string p0, "disconnected"

    :goto_7d
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_92

    :cond_81
    const-string p0, " wifi "

    .line 1822
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/os/Message;->arg1:I

    if-ne p0, v2, :cond_8d

    const-string p0, "enabled"

    goto :goto_8f

    :cond_8d
    const-string p0, "disabled"

    :goto_8f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1838
    :cond_92
    :goto_92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRawData(I)Ljava/lang/String;
    .registers 7

    .line 1792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-gtz p1, :cond_21

    const-string p1, "CurrentState:"

    .line 1795
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1796
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1798
    :cond_21
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLogLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1799
    :try_start_24
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLogs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_2d
    if-ltz v2, :cond_4b

    .line 1800
    iget-object v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLogs:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    if-lt v3, p1, :cond_48

    goto :goto_4b

    :cond_48
    add-int/lit8 v2, v2, -0x1

    goto :goto_2d

    .line 1805
    :cond_4b
    :goto_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_24 .. :try_end_4c} :catchall_55

    .line 1806
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_55
    move-exception p0

    .line 1805
    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw p0
.end method

.method public getSilentRoamingW24hStats()Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2480
    new-instance p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    sget-object v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mW24hStats:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;)V

    return-object p0
.end method

.method getUtilizationRatio(I)I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 723
    invoke-static {p1}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x50

    return p0

    .line 726
    :cond_9
    invoke-static {p1}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, 0xf

    return p0

    :cond_12
    const/16 p0, 0xa

    return p0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .registers 3

    .line 1708
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mGetWhatToString:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    return-object v0

    .line 1712
    :cond_b
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->getWhatToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWifiLinkLayerStats()V
    .registers 9

    .line 1043
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getWallClockMillis()J

    move-result-wide v6

    .line 1044
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getWifiLinkLayerStats(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1046
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mRoamingWifiInfo:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;

    invoke-virtual {p0, v0, v6, v7}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->updatePacketRates(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;J)V

    goto :goto_2b

    .line 1048
    :cond_16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v2

    .line 1049
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v4

    .line 1050
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mRoamingWifiInfo:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->updatePacketRates(JJJ)V

    :goto_2b
    return-void
.end method

.method public notifyConnect(ILjava/lang/String;)V
    .registers 3

    .line 2031
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->setLastSelectedNetwork(ILjava/lang/String;)V

    return-void
.end method

.method predictThroughput(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Landroid/net/wifi/ScanResult;)I
    .registers 15
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 734
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->-$$Nest$mreset(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;)V

    .line 735
    invoke-virtual {p2}, Landroid/net/wifi/ScanResult;->getInformationElements()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updateThroughputParamsFromIes(Ljava/util/List;)V

    .line 737
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->-$$Nest$mgetMaxNumberSpatialStreams(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;)I

    move-result v0

    .line 738
    iget v1, p2, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getUtilizationRatio(I)I

    move-result v11

    .line 740
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    .line 743
    invoke-virtual {p2}, Landroid/net/wifi/ScanResult;->getWifiStandard()I

    move-result v3

    iget v4, p2, Landroid/net/wifi/ScanResult;->channelWidth:I

    iget v5, p2, Landroid/net/wifi/ScanResult;->level:I

    iget v6, p2, Landroid/net/wifi/ScanResult;->frequency:I

    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    iget v8, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->channelUtilization:I

    iget-boolean v10, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsBluetoothConnected:Z

    move-object v2, p1

    move v7, v0

    move v9, v11

    .line 741
    invoke-virtual/range {v1 .. v10}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->predictThroughput(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;IIIIIIIZ)I

    move-result p1

    .line 752
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_c8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "predictThroughput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    iget-object v3, p2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 753
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : stationCount= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    iget v2, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->stationCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", channelUtilization= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    iget v2, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->channelUtilization:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", capacity= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    iget v2, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->capacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", wifiStandardAp= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    invoke-virtual {p2}, Landroid/net/wifi/ScanResult;->getWifiStandard()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", channelWidth= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Landroid/net/wifi/ScanResult;->channelWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", level= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", frequency= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", maxNumberSpatialStreams= "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", channelUtilizationLinkLayerStats= "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mIsBluetoothConnected = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsBluetoothConnected:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " >>> "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " Mbps"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "SilentRoamingManager"

    .line 752
    invoke-static {p2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c8
    return p1
.end method

.method public resetSilentRoamingW24hStats()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2485
    sget-object p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mW24hStats:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->reset()V

    return-void
.end method

.method public setAcceptUnvalidated(Z)V
    .registers 3

    .line 2311
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAcceptUnvalidated:Z

    if-eq v0, p1, :cond_1c

    .line 2312
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAcceptUnvalidated:Z

    .line 2313
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setAcceptUnvalidated - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAcceptUnvalidated:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public setScreenState(Z)V
    .registers 4

    .line 378
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScreenOn:Z

    .line 379
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScreenState: Screen= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SilentRoamingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    if-eqz p1, :cond_24

    const/4 v0, -0x1

    .line 381
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamFrom:I

    .line 382
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->checkSilentRoamingDisabledNetworks()V

    :cond_24
    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 384
    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setTestSettings(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "screen_on"

    const/4 v1, -0x1

    .line 389
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_11

    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 391
    :goto_e
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->setScreenState(Z)V

    .line 393
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTestSettings: isScreenOn ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mScreenOn ="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScreenOn:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SilentRoamingManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method smToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_46

    .line 1893
    :pswitch_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "what:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_44

    :pswitch_15
    const-string p0, "CMD_CHECK_INTERNET_VALIDITY"

    goto :goto_44

    :pswitch_18
    const-string p0, "CMD_CONFIGURED_NETWORKS_CHANGED"

    goto :goto_44

    :pswitch_1b
    const-string p0, "CMD_GET_AUTOJOIN_VALUE_IN_ENABLED"

    goto :goto_44

    :pswitch_1e
    const-string p0, "CMD_GET_AUTOJOIN_VALUE_IN_DEFAULT"

    goto :goto_44

    :pswitch_21
    const-string p0, "CMD_FULL_SCAN_FAILURE"

    goto :goto_44

    :pswitch_24
    const-string p0, "CMD_PARTIAL_SCAN_FAILURE"

    goto :goto_44

    :pswitch_27
    const-string p0, "CMD_FULL_SCAN_RESULTS_REPORTED"

    goto :goto_44

    :pswitch_2a
    const-string p0, "CMD_PARTIAL_SCAN_RESULTS_REPORTED"

    goto :goto_44

    :pswitch_2d
    const-string p0, "CMD_PNO_NETWORK_FOUND"

    goto :goto_44

    :pswitch_30
    const-string p0, "CMD_NETWORK_STATE_CHANGED"

    goto :goto_44

    :pswitch_33
    const-string p0, "CMD_WIFI_STATE_CHANGED"

    goto :goto_44

    :pswitch_36
    const-string p0, "CMD_TRY_TO_CONNECT"

    goto :goto_44

    :pswitch_39
    const-string p0, "CMD_CONNECTING_WATCHDOG_TIMER"

    goto :goto_44

    :pswitch_3c
    const-string p0, "CMD_UPDATE_PNO_PARAM"

    goto :goto_44

    :pswitch_3f
    const-string p0, "CMD_STOP_PNO_SCAN"

    goto :goto_44

    :pswitch_42
    const-string p0, "CMD_INITIALIZE"

    :goto_44
    return-object p0

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_3
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method updateBssLoadFromIe(Landroid/net/wifi/ScanResult$InformationElement;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "SilentRoamingManager"

    .line 2361
    :try_start_2
    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v1, v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_20

    .line 2362
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BSS Load element length is not 5: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2365
    :cond_20
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 2366
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->stationCount:I

    .line 2367
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    iput v2, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->channelUtilization:I

    .line 2368
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    and-int/2addr p1, v3

    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->capacity:I
    :try_end_4b
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_4b} :catch_4c

    return-void

    :catch_4c
    const-string p0, "BufferUnderflowException EID_BSS_LOAD"

    .line 2371
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method updateMaxNumberSpatialStreamsFromHeCap(Landroid/net/wifi/ScanResult$InformationElement;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2378
    iget v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->idExt:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_42

    .line 2379
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v0, v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_27

    .line 2380
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid HE_CAPABILITIES len: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SilentRoamingManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2383
    :cond_27
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    const/16 v1, 0x12

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    const/16 v1, 0x11

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v0, p1

    .line 2384
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 2385
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->parseMaxNumberSpatialStreamsFromMcsMap(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->maxNumberSpatialStreamsFromHeCap:I

    :cond_42
    return-void
.end method

.method updateMaxNumberSpatialStreamsFromHtCap(Landroid/net/wifi/ScanResult$InformationElement;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2403
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v0, v0

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_21

    .line 2404
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid HtCapabilities len: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SilentRoamingManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2407
    :cond_21
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    .line 2408
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    const/4 v2, 0x4

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 2409
    iget-object v3, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    const/4 v4, 0x5

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    .line 2410
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    const/4 v4, 0x6

    aget-byte p1, p1, v4

    and-int/lit16 p1, p1, 0xff

    .line 2418
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    if-lez p1, :cond_41

    move v1, v2

    goto :goto_49

    :cond_41
    if-lez v3, :cond_44

    goto :goto_49

    :cond_44
    if-lez v0, :cond_48

    const/4 v1, 0x2

    goto :goto_49

    :cond_48
    const/4 v1, 0x1

    .line 2419
    :goto_49
    iput v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->maxNumberSpatialStreamsFromHtCap:I

    return-void
.end method

.method updateMaxNumberSpatialStreamsFromVhtCap(Landroid/net/wifi/ScanResult$InformationElement;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2392
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v0, v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_21

    .line 2393
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid VHT_CAPABILITIES len: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SilentRoamingManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2396
    :cond_21
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    const/4 v1, 0x4

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v0, p1

    .line 2397
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 2398
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->parseMaxNumberSpatialStreamsFromMcsMap(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->maxNumberSpatialStreamsFromVhtCap:I

    return-void
.end method

.method updateThroughputParamsFromIes(Ljava/util/List;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;)V"
        }
    .end annotation

    .line 2338
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult$InformationElement;

    .line 2339
    iget v1, v0, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_2f

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_2b

    const/16 v2, 0xbf

    if-eq v1, v2, :cond_27

    const/16 v2, 0xff

    if-eq v1, v2, :cond_23

    goto :goto_4

    .line 2344
    :cond_23
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updateMaxNumberSpatialStreamsFromHeCap(Landroid/net/wifi/ScanResult$InformationElement;)V

    goto :goto_4

    .line 2347
    :cond_27
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updateMaxNumberSpatialStreamsFromVhtCap(Landroid/net/wifi/ScanResult$InformationElement;)V

    goto :goto_4

    .line 2350
    :cond_2b
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updateMaxNumberSpatialStreamsFromHtCap(Landroid/net/wifi/ScanResult$InformationElement;)V

    goto :goto_4

    .line 2341
    :cond_2f
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updateBssLoadFromIe(Landroid/net/wifi/ScanResult$InformationElement;)V

    goto :goto_4

    :cond_33
    return-void
.end method
