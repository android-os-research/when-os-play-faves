.class public Lcom/samsung/android/server/wifi/SemClientModeImpl;
.super Lcom/android/internal/util/StateMachine;
.source "SemClientModeImpl.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/ISemClientModeImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectedState;,
        Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;,
        Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;,
        Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;,
        Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;,
        Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;,
        Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;
    }
.end annotation


# static fields
.field public static final ANDROID_AUTO_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.projection.gearhead"

.field static final BASE:I = 0x20000

.field static final CMD_ADVANCED_DEBUG_LOG_STATE_CHANGED:I = 0x2020a

.field static final CMD_AIRPLANE_MODE_CHANGED:I = 0x2006d

.field static final CMD_BCMPKTLOG_FILTER_DISABLE:I = 0x20209

.field static final CMD_BCMPKTLOG_FILTER_ENABLE:I = 0x20208

.field static final CMD_DISABLE_RANDOM_MAC:I = 0x2006a

.field static final CMD_DISCONNECT:I = 0x20049

.field static final CMD_DISCONNECTING_WATCHDOG_TIMER:I = 0x20060

.field static final CMD_ENABLE_B2B_NETWORK:I = 0x2006b

.field static final CMD_IMS_CALL_ESTABLISHED:I = 0x200f3

.field static final CMD_INITIALIZE:I = 0x20087

.field static final CMD_IP_CONFIGURATION_LOST:I = 0x2008b

.field static final CMD_IP_CONFIGURATION_SUCCESSFUL:I = 0x2008a

.field static final CMD_LINK_CONFIGURATION_POLLING:I = 0x2008c

.field static final CMD_PRIMARY_INTERFACE_CHANGED:I = 0x2008d

.field static final CMD_RESET_SIM_NETWORKS:I = 0x20065

.field static final CMD_SCAN_RESULT_AVAILABLE:I = 0x201f6

.field static final CMD_SET_ADPS_MODE:I = 0x20137

.field static final CMD_SET_DTIM_IN_SUSPEND_MODE:I = 0x201f5

.field static final CMD_SET_MAX_DTIM_IN_SUSPEND_MODE:I = 0x201f4

.field static final CMD_START_CONNECT_MODE:I = 0x20088

.field static final CMD_STOP_CONNECT_MODE:I = 0x20089

.field static final CMD_TELEPHONY_COUNTRY_CODE_CHANGED:I = 0x20070

.field static final CMD_TELEPHONY_SERVICE_STATE_CHANGED:I = 0x2006e

.field static final CMD_UPDATE_B2B_POLICY:I = 0x2006c

.field static final CMD_WIFI_SAFE_MODE_CHANGED:I = 0x2006f

.field public static final CONNECT_MODE:I = 0x1

.field private static final DBG_PRODUCT_DEV:Z

.field public static final DISABLED_MODE:I = 0x4

.field private static final DISCONNECTING_GUARD_TIMER_MS:J = 0x1388L

.field public static final EAP_EVENT_ANONYMOUS_IDENTITY_UPDATED:I = 0x1

.field public static final EAP_EVENT_DEAUTH_8021X_AUTH_FAILED:I = 0x2

.field public static final EAP_EVENT_EAP_FAILURE:I = 0x3

.field public static final EAP_EVENT_ERROR_MESSAGE:I = 0x4

.field public static final EAP_EVENT_LOGGING:I = 0x5

.field public static final EAP_EVENT_NOTIFICATION:I = 0x7

.field public static final EAP_EVENT_NOTI_NO_INFO:I = 0x1

.field public static final EAP_EVENT_NOTI_SERVER_CERT_VALID:I = 0x2

.field public static final EAP_EVENT_NO_CREDENTIALS:I = 0x6

.field public static final EAP_EVENT_SUCCESS:I = 0x8

.field public static final EAP_EVENT_TLS_ALERT:I = 0x9

.field public static final EAP_EVENT_TLS_CERT_ERROR:I = 0xa

.field public static final EAP_EVENT_TLS_HANDSHAKE_FAIL:I = 0xb

.field public static final EAP_NOTIFICATION_NO_NOTIFICATION_INFORMATION:I = 0x3ade68b1

.field public static final EAP_TLS_FAIL_ALTSUBJECT_MISMATCH:I = 0x6

.field public static final EAP_TLS_FAIL_BAD_CERTIFICATE:I = 0x7

.field public static final EAP_TLS_FAIL_DN_MISMATCH:I = 0xc

.field public static final EAP_TLS_FAIL_DOMAIN_MISMATCH:I = 0xa

.field public static final EAP_TLS_FAIL_DOMAIN_SUFFIX_MISMATCH:I = 0x9

.field public static final EAP_TLS_FAIL_EXPIRED:I = 0x4

.field public static final EAP_TLS_FAIL_INSUFFICIENT_KEY_LEN:I = 0xb

.field public static final EAP_TLS_FAIL_NOT_YET_VALID:I = 0x3

.field public static final EAP_TLS_FAIL_REVOKED:I = 0x2

.field public static final EAP_TLS_FAIL_SERVER_CHAIN_PROBE:I = 0x8

.field public static final EAP_TLS_FAIL_SUBJECT_MISMATCH:I = 0x5

.field public static final EAP_TLS_FAIL_UNSPECIFIED:I = 0x0

.field public static final EAP_TLS_FAIL_UNTRUSTED:I = 0x1

.field static final ENABLE_B2B_NETWORK_DELAY_MS:J = 0xbb8L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final ERROR_CODE_802_1X_AUTH_FAILED:I = 0x13953

.field public static final ERROR_CODE_NO_ERROR_AUTH_FAILED:I = -0x1

.field public static final ERROR_CODE_SIM_GENERAL_FAILURE_AFTER_AUTH_FAILED:I = 0x0

.field public static final ERROR_CODE_SIM_GENERAL_FAILURE_BEFORE_AUTH_FAILED:I = 0x4000

.field public static final ERROR_CODE_SIM_NOT_SUBSCRIBED_AUTH_FAILED:I = 0x407

.field public static final ERROR_CODE_SIM_TEMPORARILY_DENIED_AUTH_FAILED:I = 0x402

.field public static final ERROR_CODE_SIM_VENDOR_SPECIFIC_CERT_EXPIRED_AUTH_FAILED:I = 0x4001

.field static final LINK_CONFIGURATION_POLLING_DELAY_MS:J = 0x3e8L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NUM_LOG_RECS_NORMAL:S = 0x1f4s
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NUM_LOG_RECS_VERBOSE:S = 0xbb8s
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NUM_LOG_RECS_VERBOSE_LOW_MEMORY:S = 0xc8s
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final REMOVE_CHIPSET_LOG_TIMEOUT_MS:I = 0x927c0

.field public static final SUPPLICANT_BSSID_ANY:Ljava/lang/String; = "any"

.field private static final TAG:Ljava/lang/String; = "SemClientModeImpl"

.field private static final WIFI_MONITOR_EVENTS:[I

.field private static final sGetWhatToString:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMessageClasses:[Ljava/lang/Class;


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

.field private final mCellularStateManager:Lcom/samsung/android/server/wifi/SemCellularStateManager;

.field private final mConnectModeState:Lcom/android/internal/util/State;

.field private final mConnectedState:Lcom/android/internal/util/State;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private final mDisconnectedState:Lcom/android/internal/util/State;

.field private final mDisconnectingState:Lcom/android/internal/util/State;

.field private mDisconnectingWatchdogCount:I

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mFwLogTimer:Ljava/util/Timer;

.field private final mInterfaceName:Ljava/lang/String;

.field private final mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mIsAuthFailedWithTlsCertFail:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mIsImsCallEstablished:Z

.field private final mIsPrimary:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mIsServerCertValid:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mIsSupportAdps:Z

.field private final mIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

.field private final mIssueTrackerLogManager:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

.field private final mL2ConnectedState:Lcom/android/internal/util/State;

.field private final mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

.field private mLastNetworkType:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

.field mLastRejectedSaeConfigKey:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mLastSubId:I

.field private mListener:Lcom/samsung/android/server/wifi/ClientModeImplStateListener;

.field private final mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

.field private mMessageHandlingStatus:I

.field private final mObtainingIpState:Lcom/android/internal/util/State;

.field private mOperationalMode:I

.field private final mPickerDialogController:Lcom/samsung/android/server/wifi/ui/PickerDialogController;

.field private final mRoamingAssistant:Lcom/samsung/android/server/wifi/SemRoamingAssistant;

.field private final mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

.field private final mScanResultUpdatedListener:Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;

.field private mScreenOn:Z

.field private final mSemMobileWipsFrameworkService:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

.field private final mStrongRssiRoaming:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

.field private mTargetBssid:Ljava/lang/String;

.field mTargetNetworkId:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

.field private mTlsCertFailReason:I

.field private mTlsCertFailReasonString:Ljava/lang/String;

.field private mVerboseLoggingEnabled:Z

.field private mWifiAdpsEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

.field private final mWifiBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

.field private final mWifiCoexManager:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

.field private final mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private final mWifiNl80211Util:Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

.field private final mWifiNotificationController:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

.field private final mWifiSafeModeObserver:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

.field private final mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;


# direct methods
.method public static synthetic $r8$lambda$192ZMPXqlL93BCH947D9qiJB1Is(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->lambda$isBssidAllowSsid$4(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$BAAncVst-uw4AgcH_28uR2U_0hg(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/net/wifi/WifiConfiguration;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->lambda$enableB2bNetworks$1(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FGpacVaYUozai9EKThNyy6IFH_E(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->lambda$new$2(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Is5eNWJwr7Wxky-IMCisIGtJ8jI(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$uTEjRd5d1Vs22jDry0V1RuPOoiA(ILandroid/net/wifi/SecurityParams;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->lambda$isBssidAllowedAkms$3(ILandroid/net/wifi/SecurityParams;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBigDataManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCellularStateManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemCellularStateManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mCellularStateManager:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectedState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mConnectedState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mDefaultState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisconnectedState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mDisconnectedState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisconnectingState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mDisconnectingState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisconnectingWatchdogCount(Lcom/samsung/android/server/wifi/SemClientModeImpl;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mDisconnectingWatchdogCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsActive(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsImsCallEstablished(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsImsCallEstablished:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPrimary(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsPrimary:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSupportAdps(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsSupportAdps:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastNetworkType(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/diagnostics/NetworkType;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastNetworkType:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ClientModeImplStateListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mListener:Lcom/samsung/android/server/wifi/ClientModeImplStateListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/LogUtils;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmObtainingIpState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mObtainingIpState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPickerDialogController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ui/PickerDialogController;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mPickerDialogController:Lcom/samsung/android/server/wifi/ui/PickerDialogController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRoamingAssistant(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemRoamingAssistant;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mRoamingAssistant:Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/ScanPool;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanResultUpdatedListener(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mScanResultUpdatedListener:Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mScreenOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemMobileWipsFrameworkService(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mSemMobileWipsFrameworkService:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStrongRssiRoaming(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mStrongRssiRoaming:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetBssid:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTlsCertFailReason(Lcom/samsung/android/server/wifi/SemClientModeImpl;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTlsCertFailReason:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTlsCertFailReasonString(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTlsCertFailReasonString:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mVerboseLoggingEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiAdpsEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiAdpsEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiB2BPolicyManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiBackOffController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiCoexManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiCoexManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiCoexManager:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiNl80211Util(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/WifiNl80211Util;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNl80211Util:Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiNotificationController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNotificationController:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiSafeModeObserver(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiSafeModeObserver:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDisconnectingWatchdogCount(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mDisconnectingWatchdogCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFwLogTimer(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/util/Timer;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mFwLogTimer:Ljava/util/Timer;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsImsCallEstablished(Lcom/samsung/android/server/wifi/SemClientModeImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsImsCallEstablished:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastNetworkType(Lcom/samsung/android/server/wifi/SemClientModeImpl;Lcom/samsung/android/server/wifi/diagnostics/NetworkType;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastNetworkType:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastSubId(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastSubId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMessageHandlingStatus(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mMessageHandlingStatus:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOperationalMode(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mOperationalMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetBssid:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/net/wifi/WifiConfiguration;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearTlsCertErrorData(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->clearTlsCertErrorData()V

    return-void
.end method

.method static bridge synthetic -$$Nest$menableB2bNetworks(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->enableB2bNetworks()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetMatchedWifiConfig(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->getMatchedWifiConfig(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;Z)Landroid/net/wifi/WifiInfo;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->getWifiInfo(Z)Landroid/net/wifi/WifiInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleAdvancedLogStateChanged(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->handleAdvancedLogStateChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleNetworkDisconnect(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->handleNetworkDisconnect()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSupplicantStateChange(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misEapMethodServerCertUsed(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/net/wifi/WifiConfiguration;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->isEapMethodServerCertUsed(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSupplicantConnecting(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/net/wifi/SupplicantState;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->isSupplicantConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misTlsDomainMismatch(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->isTlsDomainMismatch(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mlogStateAndMessage(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/os/Message;Lcom/android/internal/util/State;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessBigDataLogEvent(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->processBigDataLogEvent(Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreport(Lcom/samsung/android/server/wifi/SemClientModeImpl;ILandroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->report(ILandroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetFwLogFolder(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->resetFwLogFolder()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mretryConnectionForB2bNetwork(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->retryConnectionForB2bNetwork()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendNetworkConnectionFailEventToSettings(Lcom/samsung/android/server/wifi/SemClientModeImpl;ILjava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sendNetworkConnectionFailEventToSettings(ILjava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAdpsEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->setAdpsEnabled(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshouldSuggestEapTofu(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->shouldSuggestEapTofu()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetDBG_PRODUCT_DEV()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->DBG_PRODUCT_DEV:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 110
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->DBG_PRODUCT_DEV:Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 246
    const-class v2, Lcom/android/internal/util/AsyncChannel;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/samsung/android/server/wifi/SemClientModeImpl;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sMessageClasses:[Ljava/lang/Class;

    .line 249
    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sGetWhatToString:Landroid/util/SparseArray;

    const/16 v0, 0x14

    new-array v0, v0, [I

    .line 970
    fill-array-data v0, :array_26

    sput-object v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->WIFI_MONITOR_EVENTS:[I

    return-void

    nop

    :array_26
    .array-data 4
        0x2402e
        0x2402d
        0x2402b
        0x24007
        0x24003
        0x24004
        0x24006
        0x24051
        0x24052
        0x2400d
        0x2402f
        0x2406a
        0x2406b
        0x2406c
        0x2406d
        0x2406e
        0x2406f
        0x24070
        0x24071
        0x24072
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v3, "SemClientModeImpl"

    move-object/from16 v4, p4

    .line 332
    invoke-direct {v0, v3, v4}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    const/4 v3, 0x0

    .line 150
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mScreenOn:Z

    .line 153
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 154
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsPrimary:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 156
    sget-object v4, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->UNKNOWN:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastNetworkType:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    const/4 v4, 0x4

    .line 165
    iput v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mOperationalMode:I

    .line 191
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiAdpsEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v4, "any"

    .line 195
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetBssid:Ljava/lang/String;

    const/4 v4, -0x1

    .line 199
    iput v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    const/4 v5, 0x0

    .line 201
    iput-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 203
    iput v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mDisconnectingWatchdogCount:I

    .line 300
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsAuthFailedWithTlsCertFail:Z

    .line 302
    iput v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTlsCertFailReason:I

    const-string v5, ""

    .line 303
    iput-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTlsCertFailReasonString:Ljava/lang/String;

    .line 304
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsServerCertValid:Z

    .line 308
    new-instance v5, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;

    invoke-direct {v5, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    iput-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mDefaultState:Lcom/android/internal/util/State;

    .line 310
    new-instance v6, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;

    invoke-direct {v6, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    iput-object v6, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mConnectModeState:Lcom/android/internal/util/State;

    .line 312
    new-instance v7, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;

    invoke-direct {v7, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    iput-object v7, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mL2ConnectedState:Lcom/android/internal/util/State;

    .line 314
    new-instance v8, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;

    invoke-direct {v8, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    iput-object v8, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mObtainingIpState:Lcom/android/internal/util/State;

    .line 316
    new-instance v9, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;

    invoke-direct {v9, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    iput-object v9, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mConnectedState:Lcom/android/internal/util/State;

    .line 318
    new-instance v10, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;

    invoke-direct {v10, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    iput-object v10, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mDisconnectingState:Lcom/android/internal/util/State;

    .line 320
    new-instance v11, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectedState;

    invoke-direct {v11, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectedState;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    iput-object v11, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mDisconnectedState:Lcom/android/internal/util/State;

    .line 439
    iput v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mMessageHandlingStatus:I

    .line 1547
    new-instance v12, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda0;

    invoke-direct {v12, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    iput-object v12, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mScanResultUpdatedListener:Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;

    .line 333
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mContext:Landroid/content/Context;

    move-object/from16 v12, p2

    .line 334
    iput-object v12, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 335
    iput-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-object/from16 v12, p5

    .line 336
    iput-object v12, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    move-object/from16 v12, p6

    .line 337
    iput-object v12, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 338
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object v13

    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 339
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiMonitor()Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    move-result-object v13

    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 340
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getScanPoll()Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object v13

    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 341
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v13

    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 342
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNotificationController()Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    move-result-object v13

    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNotificationController:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    .line 343
    const-class v13, Landroid/app/ActivityManager;

    invoke-virtual {v1, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager;

    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 344
    new-instance v13, Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-direct {v13}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 346
    new-instance v13, Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    invoke-direct {v13}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;-><init>()V

    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 347
    iput v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastSubId:I

    .line 348
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 349
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    move-result v4

    iput-boolean v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mVerboseLoggingEnabled:Z

    .line 350
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiBackOffController()Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 351
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getMobileWipsFrameworkService()Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mSemMobileWipsFrameworkService:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    .line 352
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getCellularStateManager()Lcom/samsung/android/server/wifi/SemCellularStateManager;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mCellularStateManager:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 353
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getBigDataLogManager()Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 354
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiIssueDetector()Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 355
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNl80211Util()Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNl80211Util:Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    .line 356
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getB2BPolicyManager()Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 358
    new-instance v13, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda1;

    invoke-direct {v13, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    invoke-virtual {v4, v13}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->registerListener(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$B2bPolicyListener;)V

    .line 367
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiSafeModeObserver()Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiSafeModeObserver:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    .line 368
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupportedAdps()Z

    move-result v4

    iput-boolean v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsSupportAdps:Z

    .line 369
    new-instance v13, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v14, 0x1

    const-string v15, "wifi_adps_enable"

    if-eqz v4, :cond_11c

    .line 370
    invoke-virtual {v2, v1, v15, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v14, :cond_11c

    goto :goto_11d

    :cond_11c
    move v14, v3

    :goto_11d
    invoke-direct {v13, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiAdpsEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v4, :cond_134

    .line 372
    invoke-static {v15}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v12, Lcom/samsung/android/server/wifi/SemClientModeImpl$1;

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->getHandler()Landroid/os/Handler;

    move-result-object v13

    invoke-direct {v12, v0, v13}, Lcom/samsung/android/server/wifi/SemClientModeImpl$1;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/os/Handler;)V

    .line 372
    invoke-virtual {v2, v1, v4, v3, v12}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 383
    :cond_134
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getPickerDialogController()Lcom/samsung/android/server/wifi/ui/PickerDialogController;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mPickerDialogController:Lcom/samsung/android/server/wifi/ui/PickerDialogController;

    .line 384
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getRoamingAssistant()Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mRoamingAssistant:Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    .line 385
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getStrongRssiRoaming()Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mStrongRssiRoaming:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 386
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiCoexManager()Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiCoexManager:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 388
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getIssueTrackerLogManager()Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIssueTrackerLogManager:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    .line 391
    invoke-virtual {v0, v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->addState(Lcom/android/internal/util/State;)V

    .line 392
    invoke-virtual {v0, v6, v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 393
    invoke-virtual {v0, v7, v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 394
    invoke-virtual {v0, v8, v7}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 395
    invoke-virtual {v0, v9, v7}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 396
    invoke-virtual {v0, v10, v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 397
    invoke-virtual {v0, v11, v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 400
    invoke-virtual {v0, v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->setInitialState(Lcom/android/internal/util/State;)V

    const/16 v1, 0x1f4

    .line 402
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->setLogRecSize(I)V

    .line 403
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->setLogOnlyTransitions(Z)V

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V
    .registers 2

    .line 104
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V
    .registers 2

    .line 104
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V
    .registers 2

    .line 104
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V
    .registers 2

    .line 104
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logw(Ljava/lang/String;)V

    return-void
.end method

.method private checkAndSendIpConfigurationState(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;)V
    .registers 5

    .line 711
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mConnectedState:Lcom/android/internal/util/State;

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    if-nez p1, :cond_11

    const-string p1, "networkInfo == null"

    .line 715
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    return-void

    .line 718
    :cond_11
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-nez p1, :cond_25

    invoke-virtual {p2}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result p1

    if-eqz p1, :cond_1e

    goto :goto_25

    :cond_1e
    const p1, 0x2008b

    .line 721
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sendMessage(I)V

    goto :goto_2b

    :cond_25
    :goto_25
    const p1, 0x2008a

    .line 719
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sendMessage(I)V

    :goto_2b
    return-void
.end method

.method private clearTlsCertErrorData()V
    .registers 3

    const-string v0, "Clear TLS cert error"

    .line 2449
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2450
    iput v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTlsCertFailReason:I

    .line 2451
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsAuthFailedWithTlsCertFail:Z

    const-string v1, ""

    .line 2452
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTlsCertFailReasonString:Ljava/lang/String;

    .line 2453
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsServerCertValid:Z

    return-void
.end method

.method private deregisterForWifiMonitorEvents()V
    .registers 8

    .line 1027
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 1028
    sget-object v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->WIFI_MONITOR_EVENTS:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    aget v3, v0, v2

    .line 1029
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v6}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->deregisterHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1d
    return-void
.end method

.method private eapMessageToString(IILjava/lang/String;)Ljava/lang/String;
    .registers 5

    packed-switch p1, :pswitch_data_5e

    .line 2089
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mVerboseLoggingEnabled:Z

    if-eqz p1, :cond_2b

    const-string p1, "ignore eap message : not implementation yet"

    .line 2090
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->loge(Ljava/lang/String;)V

    goto :goto_2b

    :pswitch_d
    const-string p0, "TLS_CERT_ERROR "

    goto :goto_2c

    :pswitch_10
    const-string p0, "TLS_HANDSHAKE_FAIL "

    goto :goto_2c

    :pswitch_13
    const-string p0, "SUCCESS "

    goto :goto_2c

    :pswitch_16
    const-string p0, "NOTIFICATION "

    goto :goto_2c

    :pswitch_19
    const-string p0, "NO_CREDENTIALS "

    goto :goto_2c

    :pswitch_1c
    const-string p0, "LOG "

    goto :goto_2c

    :pswitch_1f
    const-string p0, "ERROR "

    goto :goto_2c

    :pswitch_22
    const-string p0, "FAIL "

    goto :goto_2c

    :pswitch_25
    const-string p0, "DEAUTH_8021X_AUTH_FAILED "

    goto :goto_2c

    :pswitch_28
    const-string p0, "ANONYMOUS_IDENTITY_UPDATED "

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 p0, 0x0

    .line 2095
    :goto_2c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "events: { EAP_EVENT_"

    .line 2096
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "},"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p0, 0x3ade68b1

    if-eq p2, p0, :cond_4b

    const-string p0, " notification_status="

    .line 2098
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4b
    const-string p0, " extra_info: { "

    .line 2100
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2101
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_10
    .end packed-switch
.end method

.method private enableB2bNetworks()V
    .registers 3

    .line 848
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object v0

    .line 849
    new-instance v1, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private getMacAddressFromBssidString(Ljava/lang/String;)Landroid/net/MacAddress;
    .registers 4

    const/4 p0, 0x0

    if-eqz p1, :cond_1e

    .line 2369
    :try_start_3
    invoke-static {p1}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_7} :catch_8

    goto :goto_1e

    .line 2371
    :catch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid BSSID format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemClientModeImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    :goto_1e
    return-object p0
.end method

.method private getMatchedWifiConfig(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .registers 3

    .line 2180
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->hasNetworkIdInWifiInfo()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2181
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    return-object p0

    .line 2183
    :cond_13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->getConfigKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 2184
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2185
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    return-object p0

    :cond_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method private getWifiInfo(Z)Landroid/net/wifi/WifiInfo;
    .registers 3

    .line 2042
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsPrimary:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2043
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo(Z)Landroid/net/wifi/WifiInfo;

    move-result-object p1

    .line 2044
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->updateWifiInfo(Ljava/lang/String;Landroid/net/wifi/WifiInfo;)V

    return-object p1

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method private handleAdvancedLogStateChanged(I)V
    .registers 2

    return-void
.end method

.method private handleNetworkDisconnect()V
    .registers 3

    .line 771
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->reset()V

    .line 772
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->getWifiInfo(Z)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->setWifiInfo(Landroid/net/wifi/WifiInfo;)V

    const/4 v0, -0x1

    .line 773
    iput v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastSubId:I

    return-void
.end method

.method private handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .registers 2

    .line 762
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/server/wifi/halclient/SemStateChangeResult;

    .line 763
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemStateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    return-object p0
.end method

.method private isEapMethodServerCertUsed(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 2

    if-eqz p1, :cond_13

    .line 2422
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isEnterprise()Z

    move-result p0

    if-eqz p0, :cond_13

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 2423
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->isEapMethodServerCertUsed()Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x1

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x0

    return p0
.end method

.method private isForceConnectionB2bNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 859
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isNetworkRequiresForceConnection(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isSupplicantConnecting(Landroid/net/wifi/SupplicantState;)Z
    .registers 2

    .line 2033
    sget-object p0, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    if-eq p1, p0, :cond_17

    sget-object p0, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    if-eq p1, p0, :cond_17

    sget-object p0, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    if-eq p1, p0, :cond_17

    sget-object p0, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-eq p1, p0, :cond_17

    sget-object p0, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-ne p1, p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method private isTlsDomainMismatch(I)Z
    .registers 2

    const/16 p0, 0x9

    if-eq p1, p0, :cond_e

    const/16 p0, 0xa

    if-eq p1, p0, :cond_e

    const/4 p0, 0x6

    if-ne p1, p0, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$enableB2bNetworks$1(Landroid/net/wifi/WifiConfiguration;)V
    .registers 4

    .line 850
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->isForceConnectionB2bNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable b2b network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logi(Ljava/lang/String;)V

    .line 852
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->enableNetwork(IZ)Z

    :cond_24
    return-void
.end method

.method private static synthetic lambda$isBssidAllowSsid$4(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 2240
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$isBssidAllowedAkms$3(ILandroid/net/wifi/SecurityParams;)Z
    .registers 2

    .line 2231
    invoke-virtual {p1}, Landroid/net/wifi/SecurityParams;->getAllowedKeyManagement()Ljava/util/BitSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    const v0, 0x2006c

    .line 359
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sendMessage(I)V

    .line 360
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getInstance()Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 362
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 363
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isConnectivityCheckDisabled()Z

    move-result p0

    .line 362
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setConnectivityCheckDisabled(Z)V

    :cond_15
    return-void
.end method

.method private synthetic lambda$new$2(Ljava/util/List;)V
    .registers 2

    const p1, 0x201f6

    .line 1548
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sendMessage(I)V

    return-void
.end method

.method private logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V
    .registers 6

    const/4 v0, 0x0

    .line 518
    iput v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mMessageHandlingStatus:I

    .line 519
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 520
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    .line 519
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->updateClientModeImplProcessMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 521
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_3c

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    :cond_3c
    return-void
.end method

.method private parseTlsCertErrorToSuggestTofu(Ljava/lang/String;)V
    .registers 5

    .line 2468
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_18

    .line 2469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parse error message to suggest TOFU, message= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    :cond_18
    const-string v0, "reason="

    .line 2480
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    const-string v0, "depth="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    const-string v0, "err="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    :try_start_30
    const-string v0, "reason=|depth=|subject=|err="

    .line 2482
    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2483
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->setTlsCertErrorData([Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_30 .. :try_end_39} :catch_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_39} :catch_3a

    goto :goto_54

    :catch_3a
    move-exception v0

    .line 2485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse TLS error message, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SemClientModeImpl"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2486
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->clearTlsCertErrorData()V

    :cond_54
    :goto_54
    return-void
.end method

.method private processBigDataLogEvent(Landroid/os/Bundle;)V
    .registers 5

    .line 781
    invoke-static {p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getBigDataFeature(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 782
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    .line 785
    :cond_b
    invoke-static {p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getBigDataArgument(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 786
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    return-void

    .line 789
    :cond_16
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->reportBigDataLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsPrimary:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_22

    return-void

    .line 794
    :cond_22
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sendBigData(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private registerForWifiMonitorEvents()V
    .registers 8

    .line 994
    sget-object v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->WIFI_MONITOR_EVENTS:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_16

    aget v3, v0, v2

    .line 995
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v6}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 997
    :cond_16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    new-instance v2, Lcom/samsung/android/server/wifi/SemClientModeImpl$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$3;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setupInterfaceForClientInConnectivityMode(Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceCallback;)Ljava/lang/String;

    move-result-object v0

    .line 1021
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 1022
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to setup WifiMonitor, iface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->loge(Ljava/lang/String;)V

    :cond_3f
    return-void
.end method

.method private removeFolderFiles(Ljava/io/File;)V
    .registers 7

    .line 503
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 504
    array-length v0, p1

    if-nez v0, :cond_a

    goto :goto_31

    .line 507
    :cond_a
    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_36

    aget-object v2, p1, v1

    .line 508
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 509
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to remove "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->loge(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_32

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_31
    :goto_31
    return-void

    :catch_32
    move-exception p0

    .line 513
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_36
    return-void
.end method

.method private report(ILandroid/os/Bundle;)V
    .registers 3

    if-eqz p2, :cond_9

    .line 2245
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    if-eqz p0, :cond_9

    .line 2246
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->report(ILandroid/os/Bundle;)V

    .line 2248
    :cond_9
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getInstance()Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 2250
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setCaptivePortalMode(ILandroid/os/Bundle;)V

    :cond_12
    return-void
.end method

.method private reportBigDataLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 813
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_72

    goto :goto_2d

    :sswitch_d
    const-string v0, "HANG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_2d

    :cond_16
    const/4 v2, 0x2

    goto :goto_2d

    :sswitch_18
    const-string v0, "DISC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    goto :goto_2d

    :cond_21
    const/4 v2, 0x1

    goto :goto_2d

    :sswitch_23
    const-string v0, "ASSO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v2, v1

    :goto_2d
    packed-switch v2, :pswitch_data_80

    goto :goto_71

    :pswitch_31
    const/4 p1, 0x7

    .line 828
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 829
    invoke-static {v0, p2}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForFwHang(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 828
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->report(ILandroid/os/Bundle;)V

    .line 830
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->increaseEventCounter(I)V

    .line 831
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIssueTrackerLogManager:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->sendBroadcastIssueTrackerSysDump(I)V

    goto :goto_71

    :pswitch_46
    const/16 p1, 0xc8

    .line 815
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastNetworkType:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    .line 818
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 819
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getAndResetLastInternalReason()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    iget v3, v3, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->networkId:I

    .line 816
    invoke-static {v0, p2, v1, v2, v3}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataFromBigDataParamsOfDISC(Ljava/lang/String;Ljava/lang/String;III)Landroid/os/Bundle;

    move-result-object p2

    .line 815
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->report(ILandroid/os/Bundle;)V

    goto :goto_71

    :pswitch_62
    const/16 p1, 0xca

    .line 823
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    iget v1, v1, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->networkId:I

    .line 824
    invoke-static {v0, p2, v1}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataFromBigDataParamsOfASSO(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p2

    .line 823
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->report(ILandroid/os/Bundle;)V

    :goto_71
    return-void

    :sswitch_data_72
    .sparse-switch
        0x1ece0e -> :sswitch_23
        0x200595 -> :sswitch_18
        0x21b872 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_62
        :pswitch_46
        :pswitch_31
    .end packed-switch
.end method

.method private resetFwLogFolder()V
    .registers 3

    .line 483
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->DBG_PRODUCT_DEV:Z

    if-eqz v0, :cond_5

    return-void

    .line 487
    :cond_5
    :try_start_5
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/wifi/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 489
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->removeFolderFiles(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception v0

    .line 492
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 496
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->removeVendorLogFiles()Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "Removing vendor logs got failed."

    .line 497
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->loge(Ljava/lang/String;)V

    :cond_27
    return-void
.end method

.method private retryConnectionForB2bNetwork()V
    .registers 5

    const v0, 0x2006b

    .line 840
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 841
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->isForceConnectionB2bNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 842
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sendMessageDelayed(IIJ)V

    :cond_1a
    return-void
.end method

.method private runFwLogTimer()V
    .registers 5

    .line 465
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->DBG_PRODUCT_DEV:Z

    if-eqz v0, :cond_5

    return-void

    .line 468
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mFwLogTimer:Ljava/util/Timer;

    if-eqz v0, :cond_15

    const-string v0, "SemClientModeImpl"

    const-string v1, "mFwLogTimer timer cancled"

    .line 469
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mFwLogTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 472
    :cond_15
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mFwLogTimer:Ljava/util/Timer;

    .line 473
    new-instance v1, Lcom/samsung/android/server/wifi/SemClientModeImpl$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$2;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private sendBigData(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "DISC"

    .line 798
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 799
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 801
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->getCurrentBackOffType(Ljava/lang/String;)I

    move-result v1

    .line 799
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValue(II)V

    .line 802
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    const/16 v0, 0xf

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 804
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->getBackOffDurationSecondForCurrentNetwork(Ljava/lang/String;)I

    move-result v1

    .line 802
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValue(II)V

    .line 805
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    const/16 v0, 0x10

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 807
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->getBackOffCountForCurrentNetwork(Ljava/lang/String;)I

    move-result v1

    .line 805
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValue(II)V

    .line 809
    :cond_35
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->insertLog(Landroid/os/Bundle;)V

    return-void
.end method

.method private sendNetworkConnectionFailEventToSettings(ILjava/lang/String;I)V
    .registers 6

    .line 1034
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.net.wifi.NETWORK_CONNECT_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 1035
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "reason_code"

    .line 1036
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "bssid"

    .line 1037
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "networkId"

    .line 1038
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1039
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string p3, "android.permission.NETWORK_SETTINGS"

    invoke-virtual {p1, v0, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1042
    sget-boolean p1, Lcom/samsung/android/server/wifi/SemClientModeImpl;->DBG_PRODUCT_DEV:Z

    if-eqz p1, :cond_39

    .line 1043
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string p2, "com.samsung.android.net.wifi.wlanautotest"

    .line 1044
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1045
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_39
    return-void
.end method

.method private setAdpsEnabled(Z)V
    .registers 4

    .line 2358
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setAdpsEnabled(Ljava/lang/String;Z)Z

    .line 2359
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValue(II)V

    return-void
.end method

.method private setTlsCertErrorData([Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    if-eqz p1, :cond_42

    .line 2457
    array-length v0, p1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_42

    const/4 v0, 0x1

    .line 2458
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTlsCertFailReason:I

    const/4 v1, 0x4

    .line 2459
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTlsCertFailReasonString:Ljava/lang/String;

    .line 2460
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsAuthFailedWithTlsCertFail:Z

    .line 2461
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mVerboseLoggingEnabled:Z

    if-eqz p1, :cond_42

    .line 2462
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EAP TLS Certification failure, reason="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTlsCertFailReason:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", detail="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTlsCertFailReasonString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logi(Ljava/lang/String;)V

    :cond_42
    return-void
.end method

.method private shouldSuggestEapTofu()Z
    .registers 6

    .line 2430
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isTrustOnFirstUseSupported()Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsAuthFailedWithTlsCertFail:Z

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsServerCertValid:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 2431
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->isEapMethodServerCertUsed(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 2432
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasEverConnected()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 2433
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_30

    :cond_2f
    return v2

    .line 2435
    :cond_30
    :goto_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldSuggestEapTofu - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isTrustOnFirstUseSupported()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsAuthFailedWithTlsCertFail:Z

    xor-int/2addr v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsServerCertValid:Z

    xor-int/2addr v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 2438
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->isEapMethodServerCertUsed(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    xor-int/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2439
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-nez v2, :cond_6f

    const-string v1, "true"

    goto :goto_96

    .line 2440
    :cond_6f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "false/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasEverConnected()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 2441
    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2435
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private updateLinkProperties(Landroid/net/LinkProperties;)V
    .registers 3

    .line 726
    invoke-virtual {p1}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 727
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->updateLinkProperties(Ljava/lang/String;Landroid/net/LinkProperties;)V

    .line 728
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsPrimary:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 729
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->updateDhcpResults(Ljava/lang/String;Landroid/net/DhcpInfo;)V

    :cond_1e
    return-void
.end method


# virtual methods
.method checkAndUpdateAllowedBssidNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .registers 7

    .line 2191
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getBssidAllowlistInternal()Ljava/util/List;

    move-result-object v0

    .line 2192
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->getMacAddressFromBssidString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object p2

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 2195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2a

    :cond_11
    if-eqz p2, :cond_2a

    .line 2197
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/MacAddress;

    .line 2198
    invoke-virtual {p2, v3}, Landroid/net/MacAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v1, 0x1

    :cond_2a
    :goto_2a
    if-eqz p2, :cond_39

    if-nez v1, :cond_39

    .line 2205
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2206
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setBssidAllowlist(Ljava/util/List;)V

    .line 2207
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    :cond_39
    return-void
.end method

.method public disableRandomMac()V
    .registers 2

    const v0, 0x2006a

    .line 2364
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sendMessage(I)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 451
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 452
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SafeWifiMode: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiSafeModeObserver:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->isWifiSafeModeEnabled()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mIsImsCallEstablished "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsImsCallEstablished:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mOperationalMode "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mOperationalMode:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 455
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mTargetWifiConfiguration: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 456
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mTargetNetworkId: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mLastInfo: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mWifiAdpsEnabled: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiAdpsEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 459
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 460
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mRoamingAssistant:Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->dump(Ljava/io/PrintWriter;)V

    .line 461
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->runFwLogTimer()V

    return-void
.end method

.method public enableVerboseLogging(I)V
    .registers 3

    if-lez p1, :cond_16

    const/4 v0, 0x1

    .line 416
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mVerboseLoggingEnabled:Z

    .line 417
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0xc8

    goto :goto_12

    :cond_10
    const/16 v0, 0xbb8

    :goto_12
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->setLogRecSize(I)V

    goto :goto_1e

    :cond_16
    const/4 v0, 0x0

    .line 420
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mVerboseLoggingEnabled:Z

    const/16 v0, 0x1f4

    .line 421
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->setLogRecSize(I)V

    .line 423
    :goto_1e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->enableVerboseLogging(I)V

    .line 424
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->enableVerboseLogging(I)V

    .line 425
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mStrongRssiRoaming:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    if-eqz p0, :cond_2f

    .line 426
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->enableVerboseLogging(I)V

    :cond_2f
    return-void
.end method

.method public getChannelUtilization()I
    .registers 2

    .line 2256
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getChannelUtilization(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getCountryRev()Ljava/lang/String;
    .registers 2

    .line 2306
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->getCountryRev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 1

    .line 1059
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    return-object p0
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .registers 5

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screen="

    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mScreenOn:Z

    if-eqz v1, :cond_11

    const-string v1, "on"

    goto :goto_13

    :cond_11
    const-string v1, "off"

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    iget v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mMessageHandlingStatus:I

    if-eqz v1, :cond_29

    const-string v1, "("

    .line 542
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mMessageHandlingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    :cond_29
    iget v1, p1, Landroid/os/Message;->sendingUid:I

    if-lez v1, :cond_3d

    iget v1, p1, Landroid/os/Message;->sendingUid:I

    const/16 v2, 0x3f2

    if-eq v1, v2, :cond_3d

    const-string v1, " uid="

    .line 545
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->sendingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3d
    const-string v1, " "

    .line 547
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 552
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_102

    goto/16 :goto_fd

    .line 564
    :sswitch_56
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 565
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_fd

    .line 566
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v2, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->eapMessageToString(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_fd

    :sswitch_6d
    const-string p0, " ssid="

    .line 570
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_fd

    .line 573
    :sswitch_79
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object p1

    const-string v1, " state="

    .line 574
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/SupplicantState;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " targetNetworkId="

    .line 575
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " targetBssid="

    .line 576
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetBssid:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_fd

    .line 554
    :sswitch_a4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getPrintableBssid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " nid="

    .line 555
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    iget p1, p1, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->networkId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 556
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->hasConfigKey()Z

    move-result p1

    if-eqz p1, :cond_fd

    const-string p1, " configKey="

    .line 557
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getConfigKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_fd

    :sswitch_d9
    const-string p1, " isPrimary="

    .line 579
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsPrimary:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_fd

    :sswitch_e8
    const-string p0, " networkId="

    .line 582
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_fd

    :sswitch_f3
    const-string p1, " cur="

    .line 561
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mDisconnectingWatchdogCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 588
    :cond_fd
    :goto_fd
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_102
    .sparse-switch
        0x20060 -> :sswitch_f3
        0x2006b -> :sswitch_e8
        0x2008d -> :sswitch_d9
        0x24003 -> :sswitch_a4
        0x24006 -> :sswitch_79
        0x2402f -> :sswitch_6d
        0x24051 -> :sswitch_56
    .end sparse-switch
.end method

.method public getMaxTdlsSession()I
    .registers 2

    .line 2403
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getMaxTdlsSession(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .registers 2

    .line 436
    new-instance v0, Landroid/os/Messenger;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getNumOfTdlsSession()I
    .registers 2

    .line 2408
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getNumOfTdlsSession(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected getOperationalModeForTest()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 446
    iget p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mOperationalMode:I

    return p0
.end method

.method public getRoamBand()I
    .registers 2

    .line 2296
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->getRoamBand(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getRoamDelta()I
    .registers 2

    .line 2276
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->getRoamDelta(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getRoamScanPeriod()I
    .registers 2

    .line 2286
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->getRoamScanPeriod(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getRoamTrigger()I
    .registers 2

    .line 2266
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->getRoamTrigger(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .registers 3

    .line 593
    sget-object p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sGetWhatToString:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_b

    return-object p0

    :cond_b
    sparse-switch p1, :sswitch_data_74

    .line 680
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "what:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_72

    :sswitch_21
    const-string p0, "LEAKY_AP_DETECTION_EVENT"

    goto/16 :goto_72

    :sswitch_25
    const-string p0, "SCHEDULED_PM_TEARDOWN_EVENT"

    goto :goto_72

    :sswitch_28
    const-string p0, "CHANNEL_SWITCH_EVENT"

    goto :goto_72

    :sswitch_2b
    const-string p0, "TWT_NOTIFICATION_EVENT"

    goto :goto_72

    :sswitch_2e
    const-string p0, "TWT_TEARDOWN_EVENT"

    goto :goto_72

    :sswitch_31
    const-string p0, "TWT_SETUP_EVENT"

    goto :goto_72

    :sswitch_34
    const-string p0, "BEACON_ABORT_EVENT"

    goto :goto_72

    :sswitch_37
    const-string p0, "BEACON_INTERVAL_EVENT"

    goto :goto_72

    :sswitch_3a
    const-string p0, "NETWORK_ADDED_EVENT"

    goto :goto_72

    :sswitch_3d
    const-string p0, "EAP_MESSAGE_HANDLE_EVENT"

    goto :goto_72

    :sswitch_40
    const-string p0, "MBO_OCE_BSS_TM_HANDLING_DONE"

    goto :goto_72

    :sswitch_43
    const-string p0, "HS20_REMEDIATION_EVENT"

    goto :goto_72

    :sswitch_46
    const-string p0, "RX_HS20_ANQP_ICON_EVENT"

    goto :goto_72

    :sswitch_49
    const-string p0, "GAS_QUERY_DONE_EVENT"

    goto :goto_72

    :sswitch_4c
    const-string p0, "GAS_QUERY_START_EVENT"

    goto :goto_72

    :sswitch_4f
    const-string p0, "NETWORK_NOT_FOUND_EVENT"

    goto :goto_72

    :sswitch_52
    const-string p0, "ASSOCIATED_BSSID_EVENT"

    goto :goto_72

    :sswitch_55
    const-string p0, "ANQP_DONE_EVENT"

    goto :goto_72

    :sswitch_58
    const-string p0, "ASSOCIATION_REJECTION_EVENT"

    goto :goto_72

    :sswitch_5b
    const-string p0, "SUP_REQUEST_IDENTITY"

    goto :goto_72

    :sswitch_5e
    const-string p0, "SUP_BIGDATA_EVENT"

    goto :goto_72

    :sswitch_61
    const-string p0, "AUTHENTICATION_FAILURE_EVENT"

    goto :goto_72

    :sswitch_64
    const-string p0, "SUPPLICANT_STATE_CHANGE_EVENT"

    goto :goto_72

    :sswitch_67
    const-string p0, "NETWORK_DISCONNECTION_EVENT"

    goto :goto_72

    :sswitch_6a
    const-string p0, "NETWORK_CONNECTION_EVENT"

    goto :goto_72

    :sswitch_6d
    const-string p0, "CMD_CHANNEL_DISCONNECTED"

    goto :goto_72

    :sswitch_70
    const-string p0, "CMD_CHANNEL_HALF_CONNECTED"

    :goto_72
    return-object p0

    nop

    :sswitch_data_74
    .sparse-switch
        0x11000 -> :sswitch_70
        0x11004 -> :sswitch_6d
        0x24003 -> :sswitch_6a
        0x24004 -> :sswitch_67
        0x24006 -> :sswitch_64
        0x24007 -> :sswitch_61
        0x2400d -> :sswitch_5e
        0x2400f -> :sswitch_5b
        0x2402b -> :sswitch_58
        0x2402c -> :sswitch_55
        0x2402d -> :sswitch_52
        0x2402f -> :sswitch_4f
        0x24033 -> :sswitch_4c
        0x24034 -> :sswitch_49
        0x24035 -> :sswitch_46
        0x2403d -> :sswitch_43
        0x24047 -> :sswitch_40
        0x24051 -> :sswitch_3d
        0x24052 -> :sswitch_3a
        0x2406a -> :sswitch_37
        0x2406b -> :sswitch_34
        0x2406d -> :sswitch_31
        0x2406e -> :sswitch_2e
        0x2406f -> :sswitch_2b
        0x24070 -> :sswitch_28
        0x24071 -> :sswitch_25
        0x24072 -> :sswitch_21
    .end sparse-switch
.end method

.method public handleAirplaneModeChanged(Z)V
    .registers 3

    const v0, 0x2006d

    .line 748
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sendMessage(II)V

    return-void
.end method

.method public handleCapabilitiesChanged(Landroid/net/wifi/WifiInfo;)V
    .registers 2

    return-void
.end method

.method handleEapMessage(IILjava/lang/String;)V
    .registers 8

    .line 2130
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_54

    const v0, 0x3ade68b1

    if-ne p2, v0, :cond_c

    const-string v0, "none"

    goto :goto_10

    .line 2132
    :cond_c
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 2133
    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eap message : mLastNetworkId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    iget v2, v2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mLastSubId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mTargetNetworkId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", event ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] , status ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], message: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    :cond_54
    const/16 v0, 0x13

    .line 2140
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1, p1, p2, p3, v2}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForEapMessage(Ljava/lang/String;IILjava/lang/String;Landroid/net/wifi/WifiConfiguration;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->report(ILandroid/os/Bundle;)V

    .line 2143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_af

    const/4 v2, 0x2

    if-eq p1, v2, :cond_af

    const/4 v3, 0x3

    if-eq p1, v3, :cond_af

    const/4 v3, 0x7

    if-eq p1, v3, :cond_a2

    packed-switch p1, :pswitch_data_b4

    goto :goto_b2

    :pswitch_76
    const-string p1, "Certificate verification failed. Reason: "

    .line 2157
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->insertKnoxAuditLogAndNotifyCertificationFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 2159
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isTrustOnFirstUseSupported()Z

    move-result p1

    if-eqz p1, :cond_b2

    .line 2160
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->parseTlsCertErrorToSuggestTofu(Ljava/lang/String;)V

    goto :goto_b2

    :pswitch_91
    const-string p1, "EAP-TLS handshake failed. Reason: "

    .line 2165
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 2166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->insertKnoxAuditLogAndNotifyCertificationFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b2

    .line 2151
    :cond_a2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isTrustOnFirstUseSupported()Z

    move-result p1

    if-eqz p1, :cond_b2

    if-ne p2, v2, :cond_b2

    .line 2153
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsServerCertValid:Z

    goto :goto_b2

    .line 2148
    :cond_af
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->updateAnonymousIdentityForEnterpriseNetwork()V

    :cond_b2
    :goto_b2
    return-void

    nop

    :pswitch_data_b4
    .packed-switch 0x9
        :pswitch_91
        :pswitch_76
        :pswitch_91
    .end packed-switch
.end method

.method public handleLinkConfiguredChanged(Landroid/net/Network;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;)V
    .registers 4

    .line 705
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->checkAndSendIpConfigurationState(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;)V

    .line 706
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->updateLinkProperties(Landroid/net/LinkProperties;)V

    return-void
.end method

.method public handleNetworkStateChanged(Landroid/net/Network;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;)V
    .registers 4

    .line 698
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->checkAndSendIpConfigurationState(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;)V

    .line 699
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->updateLinkProperties(Landroid/net/LinkProperties;)V

    return-void
.end method

.method public handleScreenStateChanged(Z)V
    .registers 4

    .line 688
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mScreenOn:Z

    .line 689
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_2a

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleScreenStateChanged: screenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " state "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 690
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method public handleSimStateChanged(Z)V
    .registers 3

    const v0, 0x20065

    .line 743
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sendMessage(II)V

    return-void
.end method

.method public handleTelephonyCountryCodeChanged(Ljava/lang/String;)V
    .registers 3

    const v0, 0x20070

    .line 758
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public handleTelephonyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 3

    const v0, 0x2006e

    .line 753
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public initialize()V
    .registers 2

    const v0, 0x20087

    .line 2003
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sendMessage(I)V

    return-void
.end method

.method insertKnoxAuditLogAndNotifyCertificationFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 2119
    invoke-static {}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->isSupported()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2121
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 2122
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->notifyCertificateFailureAsUser(Landroid/content/Context;Ljava/lang/String;)V

    .line 2124
    :cond_12
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "SemClientModeImpl"

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->auditLog(Landroid/content/Context;IIZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isActive()Z
    .registers 1

    .line 1095
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isAvailableTdls()Z
    .registers 2

    .line 2388
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->isAvailableTdls(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method isBssidAllowNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_22

    .line 2212
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getSecurityParamsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_22

    .line 2214
    :cond_e
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->isBssidAllowedAkms(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_15

    return v0

    .line 2215
    :cond_15
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->isBssidAllowSsid(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_20

    return v0

    :cond_20
    const/4 p0, 0x1

    return p0

    :cond_22
    :goto_22
    return v0
.end method

.method isBssidAllowSsid(Ljava/lang/String;)Z
    .registers 3

    const-string p0, "iptime"

    const-string v0, "iptime5G"

    .line 2239
    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    .line 2240
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method isBssidAllowedAkms(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 8

    const/4 p0, 0x5

    new-array v0, p0, [I

    .line 2221
    fill-array-data v0, :array_26

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, p0, :cond_24

    .line 2229
    aget v3, v0, v2

    .line 2230
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getSecurityParamsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda4;

    invoke-direct {v5, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda4;-><init>(I)V

    .line 2231
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_24
    return v1

    nop

    :array_26
    .array-data 4
        0x0
        0x1
        0x4
        0x8
        0x9
    .end array-data
.end method

.method public isConnected()Z
    .registers 2

    .line 2051
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mConnectedState:Lcom/android/internal/util/State;

    if-ne v0, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isNCHOModeEnabled()Z
    .registers 2

    .line 2311
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isNCHOModeEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isWesModeEnabled()Z
    .registers 2

    .line 2337
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isWesModeEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isWiderBandwidthTdlsSupported()Z
    .registers 2

    .line 2393
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->isWiderBandwidthTdlsSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected log(Ljava/lang/String;)V
    .registers 4

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .registers 4

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .registers 4

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected recordLogRec(Landroid/os/Message;)Z
    .registers 2

    .line 528
    iget p0, p1, Landroid/os/Message;->what:I

    const p1, 0x2406a

    if-eq p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public sendReassociationRequestFrame(Ljava/lang/String;I)Z
    .registers 4

    .line 2354
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->sendReassociationRequestFrame(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public sendVendorSpecificActionFrame(Ljava/lang/String;IILjava/lang/String;)Z
    .registers 11

    .line 2348
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->sendVendorSpecificActionFrame(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setCountryRev(Ljava/lang/String;)Z
    .registers 3

    .line 2301
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setCountryRev(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setDtimInSuspendMode(I)V
    .registers 4

    const v0, 0x201f5

    const/4 v1, 0x0

    .line 2029
    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sendMessage(III)V

    return-void
.end method

.method public setImsCallEstablished(Z)V
    .registers 4

    const/4 v0, 0x0

    const v1, 0x200f3

    .line 2378
    invoke-virtual {p0, v1, p1, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sendMessage(III)V

    return-void
.end method

.method public setListener(Lcom/samsung/android/server/wifi/ClientModeImplStateListener;)V
    .registers 2

    .line 1064
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mListener:Lcom/samsung/android/server/wifi/ClientModeImplStateListener;

    return-void
.end method

.method public setMaxDtimInSuspendMode(Z)V
    .registers 4

    const/4 v0, 0x0

    const v1, 0x201f4

    .line 2016
    invoke-virtual {p0, v1, p1, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sendMessage(III)V

    return-void
.end method

.method public setNCHOModeEnabled(Z)Z
    .registers 3

    .line 2316
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->isActive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2317
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setNCHOModeEnabled(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_f
    if-nez p1, :cond_18

    .line 2319
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->resetNCHOMode()V

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public setPrimary(Z)V
    .registers 3

    .line 1100
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsPrimary:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq v0, p1, :cond_13

    .line 1101
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsPrimary:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const v0, 0x2008d

    .line 1102
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sendMessage(II)V

    :cond_13
    return-void
.end method

.method public setRoamBand(I)Z
    .registers 3

    .line 2291
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setRoamBand(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setRoamDelta(I)Z
    .registers 3

    .line 2271
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setRoamDelta(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setRoamScanChannels([Ljava/lang/String;)Z
    .registers 3

    .line 2332
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setRoamScanChannels(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setRoamScanEnabled(Z)Z
    .registers 3

    .line 2327
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setRoamScanEnabled(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setRoamScanPeriod(I)Z
    .registers 3

    .line 2281
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setRoamScanPeriod(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setRoamTrigger(I)Z
    .registers 3

    .line 2261
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setRoamTrigger(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setTdlsEnabled(Z)Z
    .registers 3

    .line 2398
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setTdlsEnabled(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setWesModeEnabled(Z)Z
    .registers 3

    .line 2342
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setWesModeEnabled(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setupClientMode()V
    .registers 3

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setupClientMode() iface = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemClientModeImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_29

    .line 1074
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->registerForWifiMonitorEvents()V

    .line 1075
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_29
    const v0, 0x20088

    .line 1077
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sendMessage(I)V

    return-void
.end method

.method public stopClientMode()V
    .registers 3

    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopClientMode() iface = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemClientModeImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1087
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->deregisterForWifiMonitorEvents()V

    .line 1088
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_29
    const v0, 0x20089

    .line 1090
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sendMessage(I)V

    return-void
.end method

.method public syncGetRssi()I
    .registers 3

    .line 2383
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNl80211Util:Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/util/WifiNl80211Util;)V

    const/16 p0, -0xc8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method updateAnonymousIdentityForEnterpriseNetwork()V
    .registers 5

    .line 2105
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_49

    .line 2106
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v1, :cond_49

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 2107
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 2108
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_49

    .line 2111
    :cond_1d
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 2112
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 2113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update sim based EAP TargetConfig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " netId = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    :cond_49
    :goto_49
    return-void
.end method
