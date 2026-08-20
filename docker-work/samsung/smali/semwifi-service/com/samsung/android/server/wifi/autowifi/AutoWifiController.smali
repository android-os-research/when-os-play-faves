.class public Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;
.super Lcom/android/internal/util/StateMachine;
.source "AutoWifiController.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/diagnostics/AutoTestProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;,
        Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;,
        Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$UserControlState;,
        Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;,
        Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStoppedState;,
        Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;,
        Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;
    }
.end annotation


# static fields
.field static final CMD_GEOFENCE_ENTER:I = 0x7

.field static final CMD_GEOFENCE_EXIT:I = 0x8

.field static final CMD_INITIALIZE:I = 0x0

.field static final CMD_MEASURE_LOCATION:I = 0xa

.field static final CMD_NETWORK_REMOVED:I = 0x5

.field static final CMD_SCANNING_MODE_CHANGED:I = 0x1

.field static final CMD_START_AUTO_WIFI:I = 0x2

.field static final CMD_START_SCAN:I = 0x9

.field static final CMD_STOP_AUTO_WIFI:I = 0x3

.field static final CMD_TRY_TO_CONNECT:I = 0xc

.field static final CMD_UPDATE_NETWORK_SCORE:I = 0x6

.field static final CMD_USER_CONTROL_TIMEOUT:I = 0xb

.field static final CMD_USER_CONTROL_WIFI_STATE:I = 0x4

.field private static final DBG_PROCESS_MESSAGE:Z = false

.field private static final DBG_PRODUCT_DEV:Z

.field static final DEFAULT_DELAY_FOR_MEASURING_LOCATION_MS:J = 0x1388L

.field static final DEFAULT_USER_CONTROL_TIMEOUT_MS:J = 0x5265c00L

.field static final EVENT_FAVORITE_NETWORK_FOUND:I = 0x65

.field static final EVENT_FAVORITE_NETWORK_NOT_FOUND:I = 0x66

.field static final EVENT_GEOFENCE_STATE_CHANGED:I = 0x67

.field static final EVENT_NETWORK_STATE_CHANGED:I = 0x68

.field static final EVENT_SCREEN_STATE_CHANGED:I = 0x69

.field static final EVENT_WIFI_STATE_CHANGED:I = 0x64

.field private static final HOUR:J = 0x36ee80L

.field static final MAX_CELL_COUNT:I = 0x64

.field private static final MINUTE:J = 0xea60L

.field static final MIN_WAIT_FOR_WIFI_OFF_TIME_MS:J = 0x1d4c0L

.field public static final NAME:Ljava/lang/String; = "samsung.wifi.autowifi"

.field static final PERIODIC_SCAN_INIT_INTERVAL_MS:J = 0x1f40L

.field static final PERIODIC_SCAN_MAX_INTERVAL_MS:J = 0x1f400L

.field private static final SECOND:J = 0x3e8L

.field static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "AutoWifiController"

.field static final TEST_SETTING_AVERAGE_TIME:Ljava/lang/String; = "average_time"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TEST_SETTING_CELL_COUNT:Ljava/lang/String; = "cell_counter"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TEST_SETTING_CONFIG_KEY:Ljava/lang/String; = "configKey"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TEST_SETTING_GEOFENCE_MANUAL_MODE:Ljava/lang/String; = "manual_mode"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TEST_SETTING_GEOFENCE_STATE:Ljava/lang/String; = "geofence_state"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TEST_SETTING_SCAN_INTERVAL:Ljava/lang/String; = "scan_interval"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TEST_SETTING_TIME_SCORE_1:Ljava/lang/String; = "dur_score_1"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TEST_SETTING_TIME_SCORE_2:Ljava/lang/String; = "dur_score_2"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TEST_SETTING_TIME_SCORE_4:Ljava/lang/String; = "dur_score_4"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TEST_SETTING_TIME_SCORE_MINUS:Ljava/lang/String; = "dur_minus"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TEST_SETTING_TIME_SCORE_RECOVERY:Ljava/lang/String; = "dur_recovery"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TEST_SETTING_TOTAL_NUMBER_OF_AVERAGE:Ljava/lang/String; = "total_number_of_average_time"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TEST_SETTING_UPDATE_NETWORK_SCORE:Ljava/lang/String; = "update_network_key"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TEST_SETTING_USER_CONTROL_TIMEOUT:Ljava/lang/String; = "user_control_timeout"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TEST_SETTING_WIFI_OFF_TIME:Ljava/lang/String; = "wifi_off_transition_min_time"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TEST_SETTING_WIFI_SWITCH:Ljava/lang/String; = "wifi_switch"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TYPE_USE_ALL_NETWORK:I = 0x1

.field static final TYPE_USE_FAVORITE_NETWORK_ONLY:I = 0x0

.field private static final VERSION:Ljava/lang/String; = "v4.2.2"

.field static final mPeriodicScanIntervals:[J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mAutoWifiStartedState:Lcom/android/internal/util/State;

.field private final mAutoWifiStoppedState:Lcom/android/internal/util/State;

.field private mAutoWifiUserType:I

.field private final mClock:Lcom/samsung/android/server/wifi/util/SemClock;

.field private final mContext:Landroid/content/Context;

.field private mCountDataPath:I

.field private mCurrentGeofenceState:I

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field final mFavoriteNetworkListener:Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator$Listener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mFavoriteNetworks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFeature:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

.field private mGeofenceController:Lcom/samsung/android/server/wifi/autowifi/GeofenceController;

.field private final mGeofenceManager:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

.field final mGeofenceStateListener:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mGetWhatToString:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsP2pNetworkConnected:Z

.field private mIsSmartSwitchEnabled:Z

.field private mIsWifiConnected:Z

.field private mLastConnectedConfigKey:Ljava/lang/String;

.field private mLastConnectedDuration:J

.field private mLastConnectedRssi:I

.field private mLastNetworkState:Landroid/net/NetworkInfo$State;

.field private mLastReportedCellCount:I

.field private mLastScreenState:Z

.field private mManualGeofenceControl:Z

.field private mMaxCellCount:I

.field final mNetworkRemovedListener:Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mNetworkScoreEvaluator:Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

.field final mScanListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

.field private final mScanner:Lcom/samsung/android/server/wifi/autowifi/Scanner;

.field private final mSearchFavoriteNetworkState:Lcom/android/internal/util/State;

.field private final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mTestSettings:Z

.field private final mUserControlState:Lcom/android/internal/util/State;

.field private mUserControlTimeoutMs:J

.field private final mVendor:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

.field private final mWaitForWifiOffState:Lcom/android/internal/util/State;

.field private final mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

.field private final mWifiCarrierInfoManager:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

.field private final mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private mWifiOffMinDelayMs:J

.field private final mWifiScanningModeEnabledState:Lcom/android/internal/util/State;


# direct methods
.method public static synthetic $r8$lambda$YtNSA4FkuYgjBL-ki1oqM1UOybw(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->lambda$registerReceiver$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zn6o1RcZmOKZnqlGHVvHThf-DQ0(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->lambda$registerReceiver$0(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$nIFKVn0MoSsuOS79iydjGEjuJ5o(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->lambda$new$2(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAutoWifiStartedState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mAutoWifiStartedState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAutoWifiStoppedState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mAutoWifiStoppedState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/util/SemClock;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCountDataPath(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mCountDataPath:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentGeofenceState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mCurrentGeofenceState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mDefaultState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFavoriteNetworks:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFeature(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFeature:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGeofenceController(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/GeofenceController;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceController:Lcom/samsung/android/server/wifi/autowifi/GeofenceController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGeofenceManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceManager:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsP2pNetworkConnected(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mIsP2pNetworkConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWifiConnected(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mIsWifiConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastConnectedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastConnectedConfigKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Landroid/net/NetworkInfo$State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastNetworkState:Landroid/net/NetworkInfo$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastReportedCellCount(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastReportedCellCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastScreenState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastScreenState:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmManualGeofenceControl(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mManualGeofenceControl:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxCellCount(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mMaxCellCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkScoreEvaluator(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mNetworkScoreEvaluator:Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/util/ScanPool;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanner(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/Scanner;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mScanner:Lcom/samsung/android/server/wifi/autowifi/Scanner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchFavoriteNetworkState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mSearchFavoriteNetworkState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTestSettings(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mTestSettings:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserControlState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mUserControlState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserControlTimeoutMs(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mUserControlTimeoutMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmVendor(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mVendor:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitForWifiOffState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWaitForWifiOffState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiAwareManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Landroid/net/wifi/aware/WifiAwareManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiCarrierInfoManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiCarrierInfoManager:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiOffMinDelayMs(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiOffMinDelayMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiScanningModeEnabledState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiScanningModeEnabledState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAutoWifiUserType(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mAutoWifiUserType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCountDataPath(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mCountDataPath:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentGeofenceState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mCurrentGeofenceState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsP2pNetworkConnected(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mIsP2pNetworkConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSmartSwitchEnabled(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mIsSmartSwitchEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastConnectedDuration(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastConnectedDuration:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastNetworkState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Landroid/net/NetworkInfo$State;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastNetworkState:Landroid/net/NetworkInfo$State;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastReportedCellCount(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastReportedCellCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMaxCellCount(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mMaxCellCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUserControlTimeoutMs(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mUserControlTimeoutMs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$maddWifiOnOffHistory(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->addWifiOnOffHistory(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAndDisableWifi(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->checkAndDisableWifi()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckAndEnableWifi(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->checkAndEnableWifi()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckPoorNetworkConnection(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->checkPoorNetworkConnection()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetAutoWifiBigdataLogging(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getAutoWifiBigdataLogging()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetAutoWifiUserType(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getAutoWifiUserType()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetInRangedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getInRangedConfigKey()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetTargetConfig(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Ljava/lang/String;)Landroid/util/Pair;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getTargetConfig(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misAirplaneModeEnabled(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isAirplaneModeEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misAutoWifiEnabled(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isAutoWifiEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misAvailableWifiOffFunction(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isAvailableWifiOffFunction()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSmartNetworkSwitchEnabled(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isSmartNetworkSwitchEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misUltraPowerSaveModeEnabled(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isUltraPowerSaveModeEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyConnectingState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->notifyConnectingState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendBroadcastBubbleTip(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendBroadcastBubbleTip()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAutoWifiBigdataLogging(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->setAutoWifiBigdataLogging(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAutoWifiBigdataLoggingStart(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->setAutoWifiBigdataLoggingStart(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAutoWifiUserType(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->setAutoWifiUserType(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetGeofenceState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->setGeofenceState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSimState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->setSimState(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetWifiNetworkState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;ZLjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->setWifiNetworkState(ZLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetupFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->setupFavoriteNetworks()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetDBG_PRODUCT_DEV()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->DBG_PRODUCT_DEV:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 83
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->DBG_PRODUCT_DEV:Z

    const/4 v0, 0x4

    new-array v0, v0, [J

    .line 167
    fill-array-data v0, :array_10

    sput-object v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mPeriodicScanIntervals:[J

    return-void

    nop

    :array_10
    .array-data 8
        0x2710
        0x4e20
        0x9c40
        0xea60
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;Landroid/util/LocalLog;)V
    .registers 14

    .line 175
    new-instance v5, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    invoke-direct {v5, p1, p2, p3, p5}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;Landroid/util/LocalLog;)V

    new-instance v6, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    new-instance p5, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;

    .line 178
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    invoke-direct {p5, p1, v0}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getClock()Lcom/samsung/android/server/wifi/util/SemClock;

    move-result-object v0

    invoke-direct {v6, p5, v0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;-><init>(Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;Lcom/samsung/android/server/wifi/util/SemClock;)V

    new-instance v7, Lcom/samsung/android/server/wifi/autowifi/Scanner;

    .line 179
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p5

    invoke-direct {v7, p1, p5, p2}, Lcom/samsung/android/server/wifi/autowifi/Scanner;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/os/Looper;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 175
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;Lcom/samsung/android/server/wifi/autowifi/Scanner;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;Lcom/samsung/android/server/wifi/autowifi/Scanner;)V
    .registers 21
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p5

    const-string v3, "AutoWifiController"

    move-object v4, p2

    .line 187
    invoke-direct {p0, v3, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 133
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFavoriteNetworks:Ljava/util/Set;

    const-wide/32 v3, 0x1d4c0

    .line 141
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiOffMinDelayMs:J

    const-wide/32 v3, 0x5265c00

    .line 143
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mUserControlTimeoutMs:J

    const/4 v3, 0x0

    .line 151
    iput v3, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mCountDataPath:I

    const/16 v4, 0x64

    .line 153
    iput v4, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mMaxCellCount:I

    .line 156
    sget-object v4, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v4, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastNetworkState:Landroid/net/NetworkInfo$State;

    .line 158
    new-instance v4, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;

    invoke-direct {v4, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    iput-object v4, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mDefaultState:Lcom/android/internal/util/State;

    .line 159
    new-instance v5, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;

    invoke-direct {v5, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    iput-object v5, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiScanningModeEnabledState:Lcom/android/internal/util/State;

    .line 160
    new-instance v6, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStoppedState;

    invoke-direct {v6, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStoppedState;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    iput-object v6, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mAutoWifiStoppedState:Lcom/android/internal/util/State;

    .line 161
    new-instance v7, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;

    invoke-direct {v7, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    iput-object v7, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mAutoWifiStartedState:Lcom/android/internal/util/State;

    .line 162
    new-instance v8, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;

    invoke-direct {v8, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    iput-object v8, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mSearchFavoriteNetworkState:Lcom/android/internal/util/State;

    .line 163
    new-instance v9, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;

    invoke-direct {v9, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    iput-object v9, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWaitForWifiOffState:Lcom/android/internal/util/State;

    .line 164
    new-instance v10, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$UserControlState;

    invoke-direct {v10, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$UserControlState;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    iput-object v10, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mUserControlState:Lcom/android/internal/util/State;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    .line 170
    const-class v12, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    aput-object v12, v11, v3

    .line 171
    invoke-static {v11}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v11

    iput-object v11, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGetWhatToString:Landroid/util/SparseArray;

    .line 506
    new-instance v11, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$13;

    invoke-direct {v11, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$13;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    iput-object v11, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mNetworkRemovedListener:Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;

    .line 1861
    new-instance v11, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$14;

    invoke-direct {v11, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$14;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    iput-object v11, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mScanListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;

    .line 1874
    new-instance v11, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda0;

    invoke-direct {v11, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    iput-object v11, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFavoriteNetworkListener:Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator$Listener;

    .line 1878
    new-instance v11, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$15;

    invoke-direct {v11, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$15;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    iput-object v11, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceStateListener:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;

    .line 189
    iput-object v1, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    .line 190
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v11

    iput-object v11, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 191
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v11

    iput-object v11, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 192
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getClock()Lcom/samsung/android/server/wifi/util/SemClock;

    move-result-object v12

    iput-object v12, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    const-string v12, "wifiaware"

    .line 193
    invoke-virtual {p1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/aware/WifiAwareManager;

    iput-object v12, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    .line 194
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v12

    iput-object v12, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 195
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getScanPoll()Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object v12

    iput-object v12, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    move-object/from16 v12, p4

    .line 196
    iput-object v12, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiCarrierInfoManager:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    .line 197
    invoke-static {}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getInstance()Lcom/samsung/android/wifi/SemOpBrandingLoader;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getOpBranding()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object v12

    iput-object v12, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mVendor:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-object/from16 v12, p6

    .line 198
    iput-object v12, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mNetworkScoreEvaluator:Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    move-object/from16 v12, p7

    .line 199
    iput-object v12, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mScanner:Lcom/samsung/android/server/wifi/autowifi/Scanner;

    .line 200
    iput-object v2, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceManager:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 201
    iput-object v2, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceController:Lcom/samsung/android/server/wifi/autowifi/GeofenceController;

    const-string v2, "sem_wifi"

    .line 202
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v1, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 203
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiFeatureController()Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFeature:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 206
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->addState(Lcom/android/internal/util/State;)V

    .line 207
    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 208
    invoke-virtual {p0, v6, v5}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 209
    invoke-virtual {p0, v7, v5}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 210
    invoke-virtual {p0, v8, v7}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 211
    invoke-virtual {p0, v9, v7}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 212
    invoke-virtual {p0, v10, v7}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 215
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->setInitialState(Lcom/android/internal/util/State;)V

    .line 216
    sget-boolean v1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->DBG_PRODUCT_DEV:Z

    if-eqz v1, :cond_f3

    const/16 v1, 0xc8

    goto :goto_f5

    :cond_f3
    const/16 v1, 0x32

    :goto_f5
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->setLogRecSize(I)V

    .line 217
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->setLogOnlyTransitions(Z)V

    .line 218
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mTestSettings:Z

    .line 220
    invoke-virtual {v11}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isComcastVendor()Z

    move-result v1

    if-nez v1, :cond_109

    invoke-virtual {v11}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getAutoWifiDefaultValue()Z

    move-result v1

    if-eqz v1, :cond_10c

    .line 221
    :cond_109
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->setDefaultSettingsToEnabled()V

    .line 223
    :cond_10c
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V
    .registers 2

    .line 80
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V
    .registers 2

    .line 80
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V
    .registers 2

    .line 80
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V
    .registers 2

    .line 80
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V
    .registers 2

    .line 80
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V
    .registers 2

    .line 80
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->removeMessages(I)V

    return-void
.end method

.method private addWifiOnOffHistory(Z)V
    .registers 3

    .line 1806
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    .line 1807
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "samsung.wifi.autowifi"

    .line 1806
    invoke-static {p0, v0, p1}, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->addOrUpdateControlHistory(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    return-void
.end method

.method private checkAndDisableWifi()Z
    .registers 5

    .line 1694
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mIsWifiConnected:Z

    const-string v1, "AutoWifiController"

    const/4 v2, 0x0

    if-nez v0, :cond_37

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_37

    .line 1698
    :cond_e
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isWifiP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string p0, "skip to disable Wi-Fi, p2p connected"

    .line 1699
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1702
    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getForegroundPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.android.settings"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string p0, "skip to disable Wi-Fi, settings foreground"

    .line 1703
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1706
    :cond_30
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setWifiEnabled(Z)Z

    move-result p0

    return p0

    .line 1695
    :cond_37
    :goto_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skip to disable Wi-Fi, connected with "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastConnectedConfigKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private checkAndEnableWifi()Z
    .registers 3

    .line 1686
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string p0, "AutoWifiController"

    const-string v0, "skip to enable Wi-Fi, AP enabled"

    .line 1687
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1690
    :cond_19
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setWifiEnabled(Z)Z

    move-result p0

    return p0
.end method

.method private checkPoorNetworkConnection()Z
    .registers 3

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkPoorNetworkConnection getCurrentStatusMode() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->getCurrentStatusMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLastConnectedRssi : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastConnectedRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoWifiController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getCurrentStatusMode()I

    move-result v0

    if-nez v0, :cond_37

    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastConnectedRssi:I

    const/16 v0, -0x4b

    if-ge p0, v0, :cond_35

    goto :goto_37

    :cond_35
    const/4 p0, 0x0

    goto :goto_38

    :cond_37
    :goto_37
    const/4 p0, 0x1

    :goto_38
    return p0
.end method

.method private disableAutoWakeupController()V
    .registers 3

    .line 446
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isAutoWakeupEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "AutoWifiController"

    const-string v1, "disable AutoWakeupController"

    .line 447
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setAutoWakeupEnabled(Z)V

    :cond_15
    return-void
.end method

.method private getAutoWifiBigdataLogging()I
    .registers 4

    .line 1754
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    const-string v1, "sem_auto_wifi_time_become_favorite_ap"

    const/4 v2, -0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getAutoWifiUserType()I
    .registers 4

    .line 1736
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    const-string v1, "sem_auto_wifi_last_user_state"

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getFavoriteNetworkKeys()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1792
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1793
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetworks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 1794
    iget v3, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    invoke-static {v3}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->isFavoriteNetwork(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1796
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    iget-object v4, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 1797
    iget-boolean v3, v3, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    if-eqz v3, :cond_f

    .line 1798
    iget-object v2, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_37
    return-object v0
.end method

.method private getInRangedConfigKey()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 532
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceController:Lcom/samsung/android/server/wifi/autowifi/GeofenceController;

    invoke-interface {p0}, Lcom/samsung/android/server/wifi/autowifi/GeofenceController;->getInRangedWifiConfigKeys()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private getTargetConfig(Ljava/lang/String;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/net/wifi/WifiConfiguration;",
            "Lcom/samsung/android/wifi/SemWifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 460
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 463
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_27

    .line 465
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "couldn\'t get Wi-Fi config of "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutoWifiController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 468
    :cond_27
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {v2, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object p1

    .line 469
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isTargetConfig(Landroid/net/wifi/WifiConfiguration;Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    move-result p0

    if-nez p0, :cond_34

    return-object v1

    .line 472
    :cond_34
    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private hasManualFavoriteNetwork()Z
    .registers 5

    .line 1580
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFavoriteNetworks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1581
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1583
    iget v2, v1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    const/16 v3, 0xb

    if-eq v2, v3, :cond_25

    iget v1, v1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    :cond_25
    const/4 p0, 0x1

    return p0

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method private isAirplaneModeEnabled()Z
    .registers 4

    .line 1782
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    move v2, v0

    :cond_f
    return v2
.end method

.method private isAutoWifiEnabled()Z
    .registers 4

    .line 1772
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    const-string v1, "sem_auto_wifi_control_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    move v2, v0

    :cond_f
    return v2
.end method

.method private isAvailableWifiOffFunction()Z
    .registers 1

    .line 1723
    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mAutoWifiUserType:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private isSmartNetworkSwitchEnabled()Z
    .registers 4

    .line 1777
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    const-string v1, "wifi_watchdog_poor_network_test_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    move v2, v0

    :cond_f
    return v2
.end method

.method private isUltraPowerSaveModeEnabled()Z
    .registers 4

    .line 1787
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    const-string v1, "emergency_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    move v2, v0

    :cond_f
    return v2
.end method

.method private isWifiApEnabled()Z
    .registers 2

    .line 1680
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    move-result p0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_11

    const/16 v0, 0xc

    if-ne p0, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method private isWifiConnected()Z
    .registers 2

    .line 1710
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 1711
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method private isWifiP2pConnected()Z
    .registers 3

    .line 1715
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mIsP2pNetworkConnected:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    const-string p0, "AutoWifiController"

    const-string v0, "p2p was activated"

    .line 1716
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1719
    :cond_d
    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mCountDataPath:I

    if-lez p0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method private synthetic lambda$new$2(Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1876
    invoke-virtual {p0, v0, p2, v1, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$registerReceiver$0(II)V
    .registers 4

    const/4 p2, 0x1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    .line 264
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->setWifiState(Z)V

    goto :goto_e

    :cond_8
    if-ne p1, p2, :cond_e

    const/4 p1, 0x0

    .line 266
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->setWifiState(Z)V

    :cond_e
    :goto_e
    return-void
.end method

.method private synthetic lambda$registerReceiver$1(I)V
    .registers 2

    .line 300
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastConnectedRssi:I

    return-void
.end method

.method private logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V
    .registers 4

    .line 1615
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

    .line 1616
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getWhatToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1617
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutoWifiController"

    .line 1615
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyConnectingState()V
    .registers 2

    const/16 v0, 0xc

    .line 442
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessage(I)V

    return-void
.end method

.method private registerObserver()V
    .registers 7

    .line 344
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    const-string v2, "wifi_scan_always_enabled"

    .line 345
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$8;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$8;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Landroid/os/Handler;)V

    const/4 v4, 0x0

    .line 344
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 355
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    const-string v2, "sem_auto_wifi_control_enabled"

    .line 356
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$9;

    .line 357
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v3, p0, v5}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$9;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Landroid/os/Handler;)V

    .line 355
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 374
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    const-string v2, "wifi_watchdog_poor_network_test_enabled"

    .line 375
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$10;

    .line 376
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v3, p0, v5}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$10;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Landroid/os/Handler;)V

    .line 374
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 383
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    const-string v2, "emergency_mode"

    .line 384
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$11;

    .line 385
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v3, p0, v5}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$11;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Landroid/os/Handler;)V

    .line 383
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 394
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    const-string v2, "wifi_wakeup_enabled"

    .line 395
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$12;

    .line 396
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v3, p0, v5}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$12;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Landroid/os/Handler;)V

    .line 394
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerReceiver()V
    .registers 5

    .line 227
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.direct"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 228
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$1;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 244
    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.aware"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 245
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$2;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.aware.action.WIFI_AWARE_RESOURCE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 260
    :cond_3e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScreenOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastScreenState:Z

    .line 261
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    .line 262
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V

    .line 269
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$3;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;)V

    .line 299
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$RssiBroadcastListener;)V

    .line 302
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$4;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 310
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    .line 311
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    .line 312
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$5;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 324
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$6;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.location.MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 335
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$7;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {p0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private sendBroadcastBubbleTip()V
    .registers 4

    .line 1593
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isAutoWifiEnabled()Z

    move-result v0

    const-string v1, "AutoWifiController"

    if-nez v0, :cond_e

    const-string p0, "auto wifi is disabled"

    .line 1594
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1597
    :cond_e
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->setupFavoriteNetworks()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_34

    .line 1598
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->hasManualFavoriteNetwork()Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "send sendBroadcastBubbleTip"

    .line 1599
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.wifi.ACTION_AUTO_WIFI_BUBBLE_TIP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1601
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v2, "android.permission.NETWORK_SETTINGS"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_34
    return-void
.end method

.method private setAutoWifiBigdataLogging(I)V
    .registers 4

    .line 1759
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    const-string v1, "sem_auto_wifi_time_become_favorite_ap"

    invoke-virtual {v0, p0, v1, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    return-void
.end method

.method private setAutoWifiBigdataLoggingStart(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_25

    .line 1747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auto Wi-Fi Turn on at"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoWifiController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    const-string v1, "sem_auto_wifi_turn_on_time"

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSecureLongSetting(Landroid/content/Context;Ljava/lang/String;J)Z

    :cond_25
    return-void
.end method

.method private setAutoWifiUserType(I)V
    .registers 4

    .line 1727
    iget v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mAutoWifiUserType:I

    if-eq v0, p1, :cond_25

    .line 1728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAutoWifiUserType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoWifiController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mAutoWifiUserType:I

    .line 1730
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    const-string v1, "sem_auto_wifi_last_user_state"

    invoke-virtual {v0, p0, v1, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    :cond_25
    return-void
.end method

.method private setDefaultSettingsToEnabled()V
    .registers 5

    .line 1764
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    const-string v2, "sem_auto_wifi_control_enabled"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_15

    .line 1766
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v2, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    :cond_15
    return-void
.end method

.method private setGeofenceState(I)V
    .registers 4

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set Geofence "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoWifiController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mCurrentGeofenceState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_25

    const/16 p1, 0x8

    .line 524
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessage(I)V

    goto :goto_29

    :cond_25
    const/4 p1, 0x7

    .line 526
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessage(I)V

    :goto_29
    return-void
.end method

.method private setSimState(Ljava/lang/String;)V
    .registers 5

    .line 537
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiCarrierInfoManager:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->isSimCardReady()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 536
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private setWifiNetworkState(ZLjava/lang/String;)V
    .registers 5

    .line 434
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mIsWifiConnected:Z

    if-nez p1, :cond_a

    .line 435
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 436
    :cond_a
    iput-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastConnectedConfigKey:Ljava/lang/String;

    :cond_c
    const/16 p2, 0x68

    const/4 v0, 0x0

    .line 438
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastConnectedConfigKey:Ljava/lang/String;

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private setWifiState(Z)V
    .registers 3

    const/16 v0, 0x64

    .line 430
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessage(II)V

    return-void
.end method

.method private setupFavoriteNetworks()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1666
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFavoriteNetworks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 1667
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFavoriteNetworks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1668
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFavoriteNetworks:Ljava/util/Set;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getFavoriteNetworkKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1669
    sget-boolean v1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->DBG_PRODUCT_DEV:Z

    if-eqz v1, :cond_49

    const-string v1, "AutoWifiController"

    const-string v2, "setup favorite network"

    .line 1670
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFavoriteNetworks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-eq v0, v2, :cond_49

    .line 1672
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "favorite network size was changed, prev:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cur:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFavoriteNetworks:Ljava/util/Set;

    .line 1673
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1672
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    :cond_49
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFavoriteNetworks:Ljava/util/Set;

    return-object p0
.end method

.method private switchGeofenceController(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "manual_mode"

    const/4 v1, -0x1

    .line 600
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_a

    return-void

    .line 602
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "test manual_mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoWifiController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_24

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    .line 603
    :goto_25
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mManualGeofenceControl:Z

    if-eqz v0, :cond_31

    .line 605
    new-instance p1, Lcom/samsung/android/server/wifi/autowifi/ManualGeofenceController;

    invoke-direct {p1}, Lcom/samsung/android/server/wifi/autowifi/ManualGeofenceController;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceController:Lcom/samsung/android/server/wifi/autowifi/GeofenceController;

    goto :goto_3a

    .line 607
    :cond_31
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceManager:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceController:Lcom/samsung/android/server/wifi/autowifi/GeofenceController;

    const/16 p1, 0x67

    .line 608
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessage(I)V

    :goto_3a
    return-void
.end method

.method private switchWifiState(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "wifi_switch"

    const/4 v1, -0x1

    .line 593
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_11

    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 595
    :goto_e
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->setWifiEnabledByUser(Z)V

    :cond_11
    return-void
.end method

.method private updateAverageTimeValues(Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "average_time"

    const-wide/16 v1, -0x1

    .line 678
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2b

    .line 680
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "test average_time: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AutoWifiController"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mSearchFavoriteNetworkState:Lcom/android/internal/util/State;

    check-cast p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;

    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->-$$Nest$msetForceAverageTime(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;J)V

    :cond_2b
    return-void
.end method

.method private updateCellCountLimits(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "cell_counter"

    const/4 v1, -0x1

    .line 646
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_21

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "test cell_counter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoWifiController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mMaxCellCount:I

    :cond_21
    return-void
.end method

.method private updateGeofenceState(Landroid/os/Bundle;)V
    .registers 5

    .line 613
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mManualGeofenceControl:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, -0x1

    const-string v1, "geofence_state"

    .line 614
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_f

    return-void

    :cond_f
    const-string v1, "configKey"

    .line 616
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 617
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    return-void

    .line 618
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "test geofence_state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutoWifiController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_43

    .line 621
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceController:Lcom/samsung/android/server/wifi/autowifi/GeofenceController;

    invoke-interface {v1, p1}, Lcom/samsung/android/server/wifi/autowifi/GeofenceController;->addInRangedNetwork(Ljava/lang/String;)V

    goto :goto_48

    .line 623
    :cond_43
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceController:Lcom/samsung/android/server/wifi/autowifi/GeofenceController;

    invoke-interface {v1, p1}, Lcom/samsung/android/server/wifi/autowifi/GeofenceController;->removeFromInRangedNetworks(Ljava/lang/String;)V

    :goto_48
    const/16 v1, 0x67

    const/4 v2, 0x2

    .line 625
    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private updateNetworkScore(Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "update_network_key"

    const/4 v1, -0x1

    .line 654
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_a

    return-void

    :cond_a
    const-string v1, "configKey"

    .line 656
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 657
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "test update network score:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutoWifiController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mNetworkScoreEvaluator:Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->testNetworkScore(Ljava/lang/String;I)V

    const/16 p1, 0x67

    .line 660
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessage(I)V

    :cond_3e
    return-void
.end method

.method private updateNetworkScoreTimeValues(Landroid/os/Bundle;)V
    .registers 16

    const-string v0, "dur_score_1"

    const-wide/16 v1, -0x1

    .line 665
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v0, "dur_score_2"

    .line 666
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v0, "dur_score_4"

    .line 667
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v0, "dur_minus"

    .line 668
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v0, "dur_recovery"

    .line 669
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    add-long v0, v4, v6

    add-long/2addr v0, v8

    add-long/2addr v0, v10

    add-long/2addr v0, v12

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_6b

    .line 671
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "test time settings [score 1:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", score 2:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", score 4:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", minus:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", recovery:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AutoWifiController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mNetworkScoreEvaluator:Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    invoke-virtual/range {v3 .. v13}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->testTimeSettings(JJJJJ)V

    :cond_6b
    return-void
.end method

.method private updateTimeoutSettings(Landroid/os/Bundle;)V
    .registers 11

    const-string v0, "wifi_off_transition_min_time"

    const-wide/16 v1, -0x1

    .line 629
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    const-string v7, "AutoWifiController"

    if-lez v0, :cond_26

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "test wifi_off_transition_min_time: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiOffMinDelayMs:J

    :cond_26
    const-string v0, "user_control_timeout"

    .line 634
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v5

    if-lez v0, :cond_46

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "test user_control_timeout: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mUserControlTimeoutMs:J

    :cond_46
    const-string p0, "scan_interval"

    .line 639
    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    const-wide/32 v0, 0x1f400

    cmp-long v0, p0, v0

    if-ltz v0, :cond_67

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignored scan_interval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    return-void
.end method

.method private updateTotalNumberOfAverage(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "total_number_of_average_time"

    const/4 v1, -0x1

    .line 686
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_26

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "test total_number_of_average_time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoWifiController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mSearchFavoriteNetworkState:Lcom/android/internal/util/State;

    check-cast p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->-$$Nest$msetForceTotalNumberOfAverage(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;I)V

    :cond_26
    return-void
.end method


# virtual methods
.method public checkAndStart()V
    .registers 2

    .line 405
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->disableAutoWakeupController()V

    .line 406
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->registerReceiver()V

    .line 407
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->registerObserver()V

    .line 408
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isSmartNetworkSwitchEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mIsSmartSwitchEnabled:Z

    const/4 v0, 0x0

    .line 409
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessage(I)V

    .line 411
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mNetworkRemovedListener:Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->registerNetworkRemovedListener(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 1856
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1857
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1858
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceManager:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->historyDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method getAheadTimeForEstimatedArrivalTime()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1911
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mSearchFavoriteNetworkState:Lcom/android/internal/util/State;

    check-cast p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->-$$Nest$fgetmAheadTimeForEstimatedArrivalTime(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;)J

    move-result-wide v0

    return-wide v0
.end method

.method getAutoWifiStartTime()J
    .registers 5

    .line 1741
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    const-string v1, "sem_auto_wifi_turn_on_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureLongSetting(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBigDataString(Z)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_b

    .line 1608
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mSearchFavoriteNetworkState:Lcom/android/internal/util/State;

    check-cast p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->getBigDataString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1610
    :cond_b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWaitForWifiOffState:Lcom/android/internal/util/State;

    check-cast p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->getBigDataString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDebugString()Ljava/lang/String;
    .registers 9

    .line 1811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - Version:"

    .line 1812
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "v4.2.2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - CurrentState:"

    .line 1813
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - CurrentGeofenceState:"

    .line 1814
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mCurrentGeofenceState:I

    .line 1815
    invoke-static {v2}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1816
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - Geofence Control Mode:"

    .line 1817
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1818
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mManualGeofenceControl:Z

    if-eqz v2, :cond_44

    const-string v2, "manual"

    goto :goto_46

    :cond_44
    const-string v2, "auto"

    :goto_46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mode\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - Wi-Fi OFF Transition Min.Time:"

    .line 1819
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiOffMinDelayMs:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 1820
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " seconds"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1821
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mIsSmartSwitchEnabled:Z

    if-eqz v2, :cond_69

    const-string v2, " (SNS is enabled, apply half of transition Min.Time)"

    .line 1822
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1824
    :cond_69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1825
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWaitForWifiOffState:Lcom/android/internal/util/State;

    if-ne v2, v3, :cond_80

    .line 1826
    check-cast v3, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->getDebugLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1827
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_80
    const-string v2, " - User control timeout:"

    .line 1829
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mUserControlTimeoutMs:J

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " seconds\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - Max cell count:"

    .line 1830
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mMaxCellCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - Cell count of "

    .line 1831
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "network:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastConnectedConfigKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is "

    .line 1832
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastReportedCellCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1833
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mIsWifiConnected:Z

    if-eqz v3, :cond_d1

    const-string v3, " - Wi-Fi connected at:"

    .line 1834
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1835
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mNetworkScoreEvaluator:Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->getConnectionMaintenanceTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " seconds before\n"

    .line 1836
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d1
    const-string v3, " - Last connected network :"

    .line 1838
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastConnectedConfigKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", duration:"

    .line 1839
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastConnectedDuration:J

    div-long/2addr v6, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1840
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1841
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mNetworkScoreEvaluator:Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->dump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - Wi-Fi off function: "

    .line 1842
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1843
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isAvailableWifiOffFunction()Z

    move-result v2

    if-eqz v2, :cond_100

    const-string v2, "enabled"

    goto :goto_102

    :cond_100
    const-string v2, "disabled"

    :goto_102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - Favorite network keys:"

    .line 1844
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1845
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getFavoriteNetworkKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_115
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, " "

    .line 1846
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_115

    .line 1848
    :cond_12a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1849
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mSearchFavoriteNetworkState:Lcom/android/internal/util/State;

    check-cast v1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->getDebugLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1850
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceController:Lcom/samsung/android/server/wifi/autowifi/GeofenceController;

    invoke-interface {p0}, Lcom/samsung/android/server/wifi/autowifi/GeofenceController;->dump()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1851
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getEstimatedTimeOfArrival()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1901
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mSearchFavoriteNetworkState:Lcom/android/internal/util/State;

    check-cast p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->-$$Nest$fgetmEstimatedTimeOfArrival(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .registers 7

    .line 1622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    .line 1623
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1624
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastScreenState:Z

    if-nez p0, :cond_18

    const-string p0, " screen=off"

    .line 1625
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    :cond_18
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq p0, v2, :cond_95

    const/4 v3, 0x5

    const-string v4, " configKey:"

    if-eq p0, v3, :cond_8c

    const/4 v3, 0x6

    if-eq p0, v3, :cond_8c

    const/16 v3, 0x64

    if-eq p0, v3, :cond_7a

    const/16 v3, 0x65

    if-eq p0, v3, :cond_8c

    packed-switch p0, :pswitch_data_b4

    goto/16 :goto_ae

    :pswitch_32
    const-string p0, " screen "

    .line 1638
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/os/Message;->arg1:I

    if-ne p0, v2, :cond_3e

    const-string p0, "on"

    goto :goto_40

    :cond_3e
    const-string p0, "off"

    :goto_40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ae

    .line 1644
    :pswitch_44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/os/Message;->arg1:I

    if-ne p0, v2, :cond_5f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connected "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_61

    :cond_5f
    const-string p0, "disconnected"

    :goto_61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ae

    .line 1634
    :pswitch_65
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1635
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceStateString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ae

    :cond_7a
    const-string p0, " wifi "

    .line 1641
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/os/Message;->arg1:I

    if-ne p0, v2, :cond_86

    const-string p0, "enabled"

    goto :goto_88

    :cond_86
    const-string p0, "disabled"

    :goto_88
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ae

    .line 1631
    :cond_8c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_ae

    .line 1647
    :cond_95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/os/Message;->arg1:I

    if-ne p0, v2, :cond_9f

    const-string p0, "available"

    goto :goto_a1

    :cond_9f
    const-string p0, "unavailable"

    :goto_a1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " reason:"

    .line 1648
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1653
    :goto_ae
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_b4
    .packed-switch 0x67
        :pswitch_65
        :pswitch_44
        :pswitch_32
    .end packed-switch
.end method

.method public getNetworkLocations()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .line 415
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceManager:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getMeasuredGeoLocations()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method getNextIntervalMsForTesting()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1906
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mSearchFavoriteNetworkState:Lcom/android/internal/util/State;

    check-cast p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->-$$Nest$fgetmNextIntervalMs(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .registers 3

    .line 1658
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGetWhatToString:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    return-object v0

    .line 1662
    :cond_b
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->getWhatToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasNetworkLocations(Ljava/lang/String;)Z
    .registers 2

    .line 419
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceManager:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->hasGeofenceConfiguration(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isAvailable()Z
    .registers 7

    .line 694
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mDefaultState:Lcom/android/internal/util/State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_c

    move v0, v3

    goto :goto_d

    :cond_c
    move v0, v2

    :goto_d
    if-nez v0, :cond_37

    .line 696
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mScanner:Lcom/samsung/android/server/wifi/autowifi/Scanner;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->isAvailable()Z

    move-result v1

    .line 697
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAvailable false, scanning: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AutoWifiController"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_37

    const-string v1, "trying to recovery state"

    .line 699
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "settings"

    .line 700
    invoke-virtual {p0, v3, v3, v2, v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessage(IIILjava/lang/Object;)V

    :cond_37
    return v0
.end method

.method isTargetConfig(Landroid/net/wifi/WifiConfiguration;Lcom/samsung/android/wifi/SemWifiConfiguration;)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 477
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/4 v1, 0x0

    const-string v2, "AutoWifiController"

    const/4 v3, -0x1

    if-eq v0, v3, :cond_23

    .line 478
    sget-boolean p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->DBG_PRODUCT_DEV:Z

    if-eqz p0, :cond_22

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "it\'s vendor ap netId:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return v1

    .line 481
    :cond_23
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 482
    sget-boolean p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->DBG_PRODUCT_DEV:Z

    if-eqz p0, :cond_43

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "it\'s passpoint ap netId:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    return v1

    .line 485
    :cond_44
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    if-nez v0, :cond_63

    .line 486
    sget-boolean p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->DBG_PRODUCT_DEV:Z

    if-eqz p0, :cond_62

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "it\'s not allowing auto reconnect ap netId:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    return v1

    :cond_63
    if-eqz p2, :cond_86

    .line 489
    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 490
    sget-boolean p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->DBG_PRODUCT_DEV:Z

    if-eqz p0, :cond_85

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "it\'s lock down network netId:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    return v1

    .line 493
    :cond_86
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo(Z)Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_ab

    .line 494
    invoke-static {p0}, Lcom/samsung/android/server/wifi/util/WifiUtils;->isAndroidHotspot(Landroid/net/wifi/WifiInfo;)Z

    move-result p0

    if-eqz p0, :cond_ab

    const-string p0, "it is Android Hotspot"

    .line 495
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_aa

    .line 496
    iget p0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->isFavoriteNetwork(I)Z

    move-result p0

    if-eqz p0, :cond_aa

    const-string p0, "it is already favorite Network"

    .line 498
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_aa
    return v1

    :cond_ab
    return p1
.end method

.method public restoreNetworkLocation(Ljava/lang/String;DD)V
    .registers 12

    .line 707
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceManager:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->restoreNetworkLocation(Ljava/lang/String;DD)V

    return-void
.end method

.method public setScreenState(Z)V
    .registers 4

    .line 541
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastScreenState:Z

    const/4 v0, 0x0

    const/16 v1, 0x69

    .line 542
    invoke-virtual {p0, v1, p1, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setTestSettings(Landroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x1

    .line 580
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mTestSettings:Z

    .line 581
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->switchWifiState(Landroid/os/Bundle;)V

    .line 582
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->switchGeofenceController(Landroid/os/Bundle;)V

    .line 583
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->updateGeofenceState(Landroid/os/Bundle;)V

    .line 584
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->updateTimeoutSettings(Landroid/os/Bundle;)V

    .line 585
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->updateCellCountLimits(Landroid/os/Bundle;)V

    .line 586
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->updateNetworkScore(Landroid/os/Bundle;)V

    .line 587
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->updateNetworkScoreTimeValues(Landroid/os/Bundle;)V

    .line 588
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->updateAverageTimeValues(Landroid/os/Bundle;)V

    .line 589
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->updateTotalNumberOfAverage(Landroid/os/Bundle;)V

    return-void
.end method

.method public setWifiEnabledByUser(Z)V
    .registers 3

    if-nez p1, :cond_5

    .line 424
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->disableAutoWakeupController()V

    :cond_5
    const/4 v0, 0x4

    .line 426
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessage(II)V

    return-void
.end method
