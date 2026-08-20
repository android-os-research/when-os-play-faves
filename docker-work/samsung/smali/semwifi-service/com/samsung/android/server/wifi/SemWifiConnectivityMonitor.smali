.class public Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;
.super Lcom/android/internal/util/StateMachine;
.source "SemWifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;,
        Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNoCheckState;,
        Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;,
        Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;,
        Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;,
        Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;,
        Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;,
        Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidBlockState;,
        Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;,
        Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;,
        Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$CaptivePortalState;,
        Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;,
        Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;,
        Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;,
        Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final IMS_REGISTRATION:Ljava/lang/String; = "com.samsung.ims.action.IMS_REGISTRATION"

.field private static final NETWISE_CONTENT_URL:Ljava/lang/String; = "content://com.smithmicro.netwise.director.comcast.oem.apiprovider/managed_networks"

.field private static final SUPPORTDONGLEFEATURE_SPF:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiConnectivityMonitor"

.field public static final TEST_CAPTIVE_PORTAL_HTTPS_URL:Ljava/lang/String; = "test_captive_portal_https_url"

.field public static final TEST_CAPTIVE_PORTAL_HTTP_URL:Ljava/lang/String; = "test_captive_portal_http_url"

.field private static final TEST_URL_EXPIRATION_MS:J

.field public static final TEST_URL_EXPIRATION_TIME:Ljava/lang/String; = "test_url_expiration_time"

.field private static final VERSION:I = 0x4

.field private static final lock:Ljava/lang/Object;

.field private static final mCurrentBssidLock:Ljava/lang/Object;

.field private static mInitialResultSentToSystemUi:Z

.field private static mLinkDetectMode:I

.field private static mUserSelectionConfirmed:Z

.field private static mWcm:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

.field private static final sPktLogsWlan:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/util/LocalLog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final COMCAST_WIFI_SUPPORTED:Z

.field private final FACTORY_BINARY:Z

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

.field private final OP_BRANDING:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

.field private final SALESCODE_CAPTIVE_PORTAL_EXCEPTION:Ljava/lang/String;

.field private SAMSUNG_WIFI_CHINA_URL_OVERLAY:Ljava/lang/String;

.field private final SHOW_DATA_SELECT_POPUP_ON_BOOTUP:Z

.field private final WIFI_ONLY:Z

.field private bSetQcResult:Z

.field private incrCountryCodeUpdate:I

.field private incrScanResult:I

.field private isQCExceptionSummary:Ljava/lang/String;

.field private l2Log:Ljava/lang/String;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAggressiveModeEnabled:Z

.field private mAirPlaneMode:Z

.field private mAnalyticsDisconnectReason:S

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBssidCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/wcm/BssidStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptivePortalExceptionReason:I

.field private mCaptivePortalState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$CaptivePortalState;

.field private mCheckRoamedNetwork:Z

.field private mCheckValidationBlock:Z

.field private mConnectedState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCountryCodeFromScanResult:Ljava/lang/String;

.field private mCountryIso:Ljava/lang/String;

.field private mCscCountryIso:Ljava/lang/String;

.field private mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

.field private mCurrentLoss:Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

.field private mCurrentMode:I

.field private mDefaultNetworkHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;

.field private mDelayedDisablingNetworkMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEleDebug:Z

.field private mEleNeedRecoveryFromEle:Z

.field private mEleScanFlag:Z

.field private final mEmptyBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

.field private mEvaluatedState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;

.field private final mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mGoodEnoughRssiToRecover:I

.field private mGoodLinkLastRssi:I

.field private mGoodTargetCount:I

.field private mHideIconHistory:[Ljava/lang/String;

.field private mHideIconHistoryHead:I

.field private mHideIconHistoryTotal:I

.field private mIWCChannel:Lcom/android/internal/util/AsyncChannel;

.field private mIgnorableNetworkReason:I

.field private mImsRegistered:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mInterfaceNameProvider:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

.field private mInvalidBlockState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidBlockState;

.field private mInvalidState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;

.field private mInvalidationFailHistory:Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

.field private mInvalidationRssi:I

.field private mIs204CheckInterval:Z

.field mIsConnectivityCheckDisabled:Z

.field private mIsInDhcpSession:Z

.field private mIsInRoamSession:Z

.field private mIsManualSelection:Z

.field private mIsMobileActiveNetwork:Z

.field private mIsScreenOn:Z

.field private mIsUsingProxy:Z

.field private mIwcCurrentQai:I

.field private mLastChinaConfirmedTime:J

.field private mLastDnsResult:I

.field private mLastLlsTxGood:J

.field private mLastLlsTxRetries:J

.field private mLastLoggingTimeSSVI:J

.field private mLastManualSelectionInput:Z

.field public mLastPoorDetectedTime:J

.field private mLastRxGood:J

.field private mLastTxBad:I

.field private mLastTxGood:I

.field private mLastVisibilityOfWifiIcon:Z

.field private mLatestAlternativeNetworkId:I

.field private mLatestAlternativeNetworkSearchTime:J

.field private mLevel1State:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;

.field private mLevel2State:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;

.field private mLinkLossOccurred:I

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private final mLogUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

.field private mLossHasGone:I

.field private mLossSampleCount:I

.field private mLowQualityFailHistory:Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

.field private mMptcpEnabled:Z

.field private mMultiNetworkHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedInheritForAcceptUnvalidatedPolicy:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mNetwork:Landroid/net/Network;

.field private final mNetworkCallbackController:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

.field private mNetworkReplacementInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mNetworkStatsAnalyzer:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

.field private mNotConnectedState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;

.field private mOpenNetworkQosCallbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$OpenNetworkQosCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mOvercomingCount:I

.field private mOverlayManager:Landroid/content/om/IOverlayManager;

.field private mOverlayUserID:I

.field private mPoorLinkLastRssi:I

.field private mPoorNetworkAvoidanceSummary:Ljava/lang/String;

.field private mPoorNetworkDetectionEnabled:Z

.field private mPoorNetworkDetectionSummary:Ljava/lang/String;

.field mPreviousCaptivePortalMode:I

.field private mPreviousLoss:D

.field private mProxyAddress:Ljava/lang/String;

.field private mProxyPort:I

.field private mQai3InvalidAwaitFinished:Z

.field private mQcDumpHistory:[Ljava/lang/String;

.field private final mQcDumpVer:Ljava/lang/String;

.field private mQcHistoryHead:I

.field private mQcHistoryTotal:I

.field private mReportedPoorNetworkDetectionEnabled:Z

.field private mReportedQai:I

.field private mRssiFetchHistory:[Ljava/lang/String;

.field private mRssiFetchHistoryHead:I

.field private mRssiFetchHistoryTotal:I

.field private mSamplingIntervalMS:J

.field private final mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

.field private final mScanPoolListener:Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;

.field private mScoreQC:Lcom/samsung/android/server/wifi/wcm/ScoreQC;

.field private final mSemMobileWipsFrameworkService:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

.field private mSemTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

.field private mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

.field private final mSemWifiRssiBasePoller:Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;

.field private mSemWifiSwitchForIndividualAppsService:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

.field private mStopWcmPollCount:I

.field private mTelephonyCountryIso:Ljava/lang/String;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTrafficPollHistory:[Ljava/lang/String;

.field private mTrafficPollHistoryHead:I

.field private mTrafficPollHistoryTotal:I

.field private mTrafficPollToken:I

.field private mUIEnabled:Z

.field private mUsagePackageChanged:Z

.field private mUsageStatsPackageName:Ljava/lang/String;

.field private mUsageStatsUid:I

.field private final mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

.field private mUserOwner:Z

.field private mValidNoCheckState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNoCheckState;

.field private mValidNonSwitchableState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;

.field private mValidState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;

.field private mValidSwitchableState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;

.field private mValidationBlock:Z

.field private mValidationCheckCount:I

.field private mValidationCheckEnabledTime:J

.field private mValidationCheckMode:Z

.field private mValidationCheckTime:I

.field private mVolumeWeightedHistory:[Ljava/lang/String;

.field private mVolumeWeightedTime:Ljava/lang/String;

.field private mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

.field private mWcmBigDataSCNT:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;

.field private mWcmBigDataSSVI:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;

.field private mWcmConnectivityPacketLogForWlan0:Landroid/util/LocalLog;

.field private mWcmPacketTrackerForWlan0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

.field private mWcmPollOngoing:Z

.field private final mWifiBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

.field private mWifiChipsetVendorName:Ljava/lang/String;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

.field private final mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private final mWifiScoreMediator:Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;

.field private final mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

.field private mWifiTrafficPollerInterval:I

.field private mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

.field private summaryCountryCodeFromScanResults:[Ljava/lang/String;

.field private summaryCountryCodeUpdates:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$dduQ5ZyREU6OeJw1mtbp5uKwSxY(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->lambda$new$0(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetOP_BRANDING(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->OP_BRANDING:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetSHOW_DATA_SELECT_POPUP_ON_BOOTUP(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->SHOW_DATA_SELECT_POPUP_ON_BOOTUP:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetWIFI_ONLY(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->WIFI_ONLY:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmActivityManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/app/ActivityManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mActivityManager:Landroid/app/ActivityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAggressiveModeEnabled(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mAggressiveModeEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAirPlaneMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mAirPlaneMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBssidCache(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/util/LruCache;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mBssidCache:Landroid/util/LruCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptivePortalState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$CaptivePortalState;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCaptivePortalState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$CaptivePortalState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCheckRoamedNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCheckRoamedNetwork:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCheckValidationBlock(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCheckValidationBlock:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectedState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mConnectedState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCountryIso(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentLoss(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentLoss:Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEleNeedRecoveryFromEle(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mEleNeedRecoveryFromEle:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrameworkFacade(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIWCChannel(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIWCChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsRegistered(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mImsRegistered:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInvalidBlockState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidBlockState;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInvalidBlockState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidBlockState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInvalidState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInvalidState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInvalidationFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInvalidationFailHistory:Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInvalidationRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInvalidationRssi:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIs204CheckInterval(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIs204CheckInterval:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsInDhcpSession(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsInDhcpSession:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsInRoamSession(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsInRoamSession:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsManualSelection(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsManualSelection:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsMobileActiveNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsMobileActiveNetwork:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsScreenOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsUsingProxy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsUsingProxy:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIwcCurrentQai(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIwcCurrentQai:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastDnsResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastDnsResult:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastManualSelectionInput(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastManualSelectionInput:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastRxGood(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastRxGood:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLastTxBad(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastTxBad:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastTxGood(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastTxGood:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLevel1State(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLevel1State:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLevel2State(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLevel2State:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLinkProperties(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/LinkProperties;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLogUtils(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/util/LogUtils;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLogUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLowQualityFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLowQualityFailHistory:Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMptcpEnabled(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mMptcpEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedInheritForAcceptUnvalidatedPolicy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNeedInheritForAcceptUnvalidatedPolicy:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/Network;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkCallbackController(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNetworkCallbackController:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkReplacementInProgress(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNetworkReplacementInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNetworkStatsAnalyzer:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotConnectedState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNotConnectedState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPoorNetworkDetectionEnabled(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProxyAddress(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mProxyAddress:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProxyPort(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mProxyPort:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmQai3InvalidAwaitFinished(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mQai3InvalidAwaitFinished:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmReportedPoorNetworkDetectionEnabled(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mReportedPoorNetworkDetectionEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmReportedQai(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mReportedQai:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSamplingIntervalMS(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSamplingIntervalMS:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmScoreQC(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/ScoreQC;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mScoreQC:Lcom/samsung/android/server/wifi/wcm/ScoreQC;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemMobileWipsFrameworkService(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemMobileWipsFrameworkService:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemTrafficStats(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemWifiRssiBasePoller(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiRssiBasePoller:Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemWifiSwitchForIndividualAppsService(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiSwitchForIndividualAppsService:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonyManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/telephony/TelephonyManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTrafficPollToken:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUIEnabled(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUIEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsageStatsPackageName(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUsageStatsPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmValidNoCheckState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNoCheckState;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidNoCheckState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNoCheckState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmValidNonSwitchableState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidNonSwitchableState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmValidState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmValidSwitchableState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidSwitchableState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmValidationBlock(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidationBlock:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmValidationCheckCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidationCheckCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmValidationCheckTime(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidationCheckTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWcmPollOngoing(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmPollOngoing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiBackOffController(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiScoreMediator(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiScoreMediator:Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiTrafficPoller(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiTrafficPollerInterval(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiTrafficPollerInterval:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiTrafficStatsCallback(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputbSetQcResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->bSetQcResult:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmActivityManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/app/ActivityManager;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mActivityManager:Landroid/app/ActivityManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAnalyticsDisconnectReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;S)V
    .registers 2

    iput-short p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mAnalyticsDisconnectReason:S

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCaptivePortalExceptionReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCaptivePortalExceptionReason:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCheckRoamedNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCheckRoamedNetwork:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCheckValidationBlock(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCheckValidationBlock:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentLoss(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentLoss:Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEleDebug(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mEleDebug:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEleNeedRecoveryFromEle(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mEleNeedRecoveryFromEle:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEleScanFlag(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mEleScanFlag:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGoodEnoughRssiToRecover(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mGoodEnoughRssiToRecover:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGoodLinkLastRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mGoodLinkLastRssi:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGoodTargetCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mGoodTargetCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIgnorableNetworkReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIgnorableNetworkReason:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmImsRegistered(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mImsRegistered:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInvalidationRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInvalidationRssi:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIs204CheckInterval(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIs204CheckInterval:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsInRoamSession(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsInRoamSession:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsManualSelection(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsManualSelection:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsMobileActiveNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsMobileActiveNetwork:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsScreenOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsUsingProxy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsUsingProxy:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIwcCurrentQai(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIwcCurrentQai:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastDnsResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastDnsResult:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastManualSelectionInput(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastManualSelectionInput:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLossHasGone(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLossHasGone:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLossSampleCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLossSampleCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMptcpEnabled(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mMptcpEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/Network;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNetwork:Landroid/net/Network;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOvercomingCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mOvercomingCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviousLoss(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;D)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPreviousLoss:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProxyAddress(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mProxyAddress:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProxyPort(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mProxyPort:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmQai3InvalidAwaitFinished(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mQai3InvalidAwaitFinished:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReportedPoorNetworkDetectionEnabled(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mReportedPoorNetworkDetectionEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReportedQai(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mReportedQai:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSemTrafficStats(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTrafficPollToken:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUsagePackageChanged(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUsagePackageChanged:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUsageStatsPackageName(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUsageStatsPackageName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUsageStatsUid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUsageStatsUid:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUserOwner(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUserOwner:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmValidationBlock(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidationBlock:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmValidationCheckCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidationCheckCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmValidationCheckEnabledTime(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidationCheckEnabledTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmValidationCheckMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidationCheckMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmValidationCheckTime(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidationCheckTime:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWcmPollOngoing(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmPollOngoing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiChipsetVendorName(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiChipsetVendorName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiTrafficPollerInterval(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiTrafficPollerInterval:I

    return-void
.end method

.method static bridge synthetic -$$Nest$maddDefaultNetworkChangeEventToString(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/Network;Landroid/net/NetworkCapabilities;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->addDefaultNetworkChangeEventToString(Landroid/net/Network;Landroid/net/NetworkCapabilities;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddMultiNetworkWifiConfigurationToString(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/wifi/WifiConfiguration;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->addMultiNetworkWifiConfigurationToString(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyQai3Policy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->applyQai3Policy()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mchangeWifiIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->changeWifiIcon(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeWifiIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->changeWifiIcon(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAndUnsetNoInternetConfig(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/Network;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->checkAndUnsetNoInternetConfig(Landroid/net/Network;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckCountryCodeFromScanResults(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->checkCountryCodeFromScanResults()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckDisabledNetworks(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->checkDisabledNetworks()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckIdleAndStopPoll(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;IIJI)Z
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->checkIdleAndStopPoll(IIJI)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckSCNTBigDataOnInitialQC(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->checkSCNTBigDataOnInitialQC(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckTransitionToLevel2State(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->checkTransitionToLevel2State()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckVPNSetting(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->checkVPNSetting()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearDisabledReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->clearDisabledReason(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdetermineMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->determineMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisableDelayedNetworks(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->disableDelayedNetworks()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisableNetworkWithReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;IIZ)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->disableNetworkWithReason(IIZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdoNotStartNSA(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->doNotStartNSA()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$meleCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->eleCheck(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$meleCheckStart(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->eleCheckStart()V

    return-void
.end method

.method static bridge synthetic -$$Nest$meleCreateObjects(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->eleCreateObjects()V

    return-void
.end method

.method static bridge synthetic -$$Nest$meleScreenOffInitialize(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->eleScreenOffInitialize()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mevaluateLinkLayerStatus(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;IIIJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->evaluateLinkLayerStatus(IIIJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCm(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/ConnectivityManager;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCm()Landroid/net/ConnectivityManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getRssi()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetRxLinkSpeed(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getRxLinkSpeed()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetTxLinkSpeed(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getTxLinkSpeed()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetUpdatedRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getUpdatedRssi()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minChinaNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->inChinaNetwork()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misAggressiveModeSupported(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isAggressiveModeSupported()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misCaptivePortalExceptionOnly(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isCaptivePortalExceptionOnly(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misCarrierWifi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isCarrierWifi()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misConnectedState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isConnectedState()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misCtsTestRunning(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isCtsTestRunning()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misEthernetDefault(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isEthernetDefault()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misIgnorableNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Ljava/lang/String;I)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isIgnorableNetwork(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misInvalidState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isInvalidState()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misLegacyMultiNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isLegacyMultiNetwork()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misMultiNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isMultiNetwork()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSkipInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isSkipInternetCheck()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSupportEleDetection(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isSupportEleDetection()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misValidState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isValidState()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misVzwNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isVzwNetwork()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mpoorLinkDetected(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Lcom/samsung/android/server/wifi/wcm/BssidStatistics;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->poorLinkDetected(Lcom/samsung/android/server/wifi/wcm/BssidStatistics;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterForMptcpChange(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->registerForMptcpChange()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterForSettingsChanges(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->registerForSettingsChanges()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterForVPNChanges(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->registerForVPNChanges()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterForWatchdogToggle(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->registerForWatchdogToggle()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->requestInternetCheck(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->requestInternetCheck(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscanCompleted(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->scanCompleted()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendBroadcastWCMStatusChanged(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendBroadcastWCMStatusChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendBroadcastWCMTestResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendBroadcastWCMTestResult(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendBroadcastWCMTestResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendBroadcastWCMTestResult(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendConfigurationChanged(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendConfigurationChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendMessageWithNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ILandroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessageWithNetwork(ILandroid/net/Network;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setCurrentMode(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLinkDetectMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setLinkDetectMode(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetNoInternetAccessExpected(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setNoInternetAccessExpected(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetQcFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Lcom/samsung/android/server/wifi/wcm/QcFailHistory;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setQcFailHistory(Lcom/samsung/android/server/wifi/wcm/QcFailHistory;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetRoamAndDhcp(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setRoamAndDhcp(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetRssiTargetHistoryList(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;[Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setRssiTargetHistoryList([Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTrafficPollHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;JJJJ)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setTrafficPollHistory(JJJJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetUsePrivateDns(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Lcom/samsung/android/server/wifi/wcm/BssidStatistics;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setUsePrivateDns(Lcom/samsung/android/server/wifi/wcm/BssidStatistics;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetValidationBlock(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setValidationBlock(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetWifiScoreAndIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setWifiScoreAndIcon(ZZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetWifiScoreAndIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZZZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setWifiScoreAndIcon(ZZZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetupNetworkReceiver(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setupNetworkReceiver()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartPacketTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/NetworkInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->startPacketTracker(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartScan(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->startScan()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopPacketTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->stopPacketTracker()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msyncGetCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateCountryIsoCode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->updateCountryIsoCode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->updateCurrentBssid(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLinkProperties(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/LinkProperties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->updateLinkProperties(Landroid/net/LinkProperties;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePoorNetworkParameters(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->updatePoorNetworkParameters()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSettings(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->updateSettings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->DBG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmInitialResultSentToSystemUi()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInitialResultSentToSystemUi:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmLinkDetectMode()I
    .registers 1

    sget v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkDetectMode:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmUserSelectionConfirmed()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUserSelectionConfirmed:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputmInitialResultSentToSystemUi(Z)V
    .registers 1

    sput-boolean p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInitialResultSentToSystemUi:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmUserSelectionConfirmed(Z)V
    .registers 1

    sput-boolean p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUserSelectionConfirmed:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 149
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sPktLogsWlan:Ljava/util/concurrent/ConcurrentHashMap;

    .line 150
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->DBG:Z

    .line 151
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->lock:Ljava/lang/Object;

    .line 152
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssidLock:Ljava/lang/Object;

    const/4 v0, 0x2

    .line 155
    sput v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkDetectMode:I

    const/4 v0, 0x0

    .line 157
    sput-boolean v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInitialResultSentToSystemUi:Z

    .line 158
    sput-boolean v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUserSelectionConfirmed:Z

    .line 5439
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->TEST_URL_EXPIRATION_MS:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "WifiConnectivityMonitor"

    .line 384
    invoke-direct {v1, v2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 159
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastManualSelectionInput:Z

    .line 160
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsManualSelection:Z

    .line 185
    iput v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiTrafficPollerInterval:I

    const-string v4, "2.1"

    .line 189
    iput-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mQcDumpVer:Ljava/lang/String;

    .line 190
    new-instance v4, Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-direct {v4}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    iput-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLogUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    const-wide/16 v4, 0x0

    .line 192
    iput-wide v4, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastPoorDetectedTime:J

    .line 193
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsConnectivityCheckDisabled:Z

    const/4 v6, -0x1

    .line 197
    iput v6, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIwcCurrentQai:I

    .line 198
    iput v6, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastDnsResult:I

    const/4 v7, 0x0

    .line 199
    iput-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIWCChannel:Lcom/android/internal/util/AsyncChannel;

    .line 200
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsInDhcpSession:Z

    .line 201
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsInRoamSession:Z

    .line 202
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCheckRoamedNetwork:Z

    .line 203
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mMptcpEnabled:Z

    .line 204
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mImsRegistered:Z

    .line 205
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mAirPlaneMode:Z

    const/4 v8, 0x1

    .line 206
    iput-boolean v8, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUserOwner:Z

    .line 207
    sget-wide v9, Lcom/samsung/android/server/wifi/wcm/Constant;->LINK_SAMPLING_INTERVAL_MS:J

    iput-wide v9, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSamplingIntervalMS:J

    .line 209
    new-instance v9, Landroid/util/LruCache;

    const/16 v10, 0x14

    invoke-direct {v9, v10}, Landroid/util/LruCache;-><init>(I)V

    iput-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mBssidCache:Landroid/util/LruCache;

    .line 211
    iput v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTrafficPollToken:I

    .line 213
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsMobileActiveNetwork:Z

    .line 216
    iput-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentLoss:Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    .line 217
    iput-boolean v8, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsScreenOn:Z

    .line 218
    iput-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 219
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mEleNeedRecoveryFromEle:Z

    .line 220
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mEleScanFlag:Z

    .line 221
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mEleDebug:Z

    .line 222
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mQai3InvalidAwaitFinished:Z

    .line 228
    iput-wide v4, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastLoggingTimeSSVI:J

    .line 235
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsUsingProxy:Z

    .line 236
    iput-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mProxyAddress:Ljava/lang/String;

    .line 237
    iput v6, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mProxyPort:I

    .line 238
    iput-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    .line 239
    iput-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTelephonyCountryIso:Ljava/lang/String;

    const-string v9, ""

    .line 242
    iput-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    .line 243
    iput v8, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentMode:I

    .line 247
    iput-wide v4, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastLlsTxRetries:J

    .line 248
    iput-wide v4, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastLlsTxGood:J

    .line 249
    iput v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    .line 251
    iput v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLossHasGone:I

    .line 253
    iput v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mGoodEnoughRssiToRecover:I

    const-wide/16 v10, 0x0

    .line 254
    iput-wide v10, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPreviousLoss:D

    .line 255
    iput v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mGoodLinkLastRssi:I

    const/16 v10, -0xc8

    .line 256
    iput v10, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorLinkLastRssi:I

    .line 257
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIs204CheckInterval:Z

    .line 258
    iput v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mOvercomingCount:I

    .line 260
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mReportedPoorNetworkDetectionEnabled:Z

    .line 261
    iput v6, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mReportedQai:I

    .line 265
    iput v6, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mQcHistoryHead:I

    .line 266
    iput v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mQcHistoryTotal:I

    .line 267
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->bSetQcResult:Z

    const/16 v10, 0x1e

    new-array v10, v10, [Ljava/lang/String;

    .line 268
    iput-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mQcDumpHistory:[Ljava/lang/String;

    .line 269
    new-instance v10, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    invoke-direct {v10}, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;-><init>()V

    iput-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInvalidationFailHistory:Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    .line 270
    new-instance v10, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    invoke-direct {v10}, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;-><init>()V

    iput-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLowQualityFailHistory:Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    .line 271
    new-instance v10, Landroid/net/wifi/WifiInfo;

    invoke-direct {v10}, Landroid/net/wifi/WifiInfo;-><init>()V

    iput-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 274
    iput v6, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCaptivePortalExceptionReason:I

    .line 275
    iput v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mHideIconHistoryHead:I

    .line 276
    iput v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mHideIconHistoryTotal:I

    const/16 v10, 0x64

    new-array v10, v10, [Ljava/lang/String;

    .line 277
    iput-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mHideIconHistory:[Ljava/lang/String;

    const/16 v10, 0x600

    .line 281
    iput-short v10, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mAnalyticsDisconnectReason:S

    .line 283
    iput v6, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIgnorableNetworkReason:I

    .line 284
    iput-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isQCExceptionSummary:Ljava/lang/String;

    .line 285
    iput-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkAvoidanceSummary:Ljava/lang/String;

    .line 286
    iput-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkDetectionSummary:Ljava/lang/String;

    .line 288
    iput-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mVolumeWeightedTime:Ljava/lang/String;

    const/16 v9, 0x4c

    new-array v9, v9, [Ljava/lang/String;

    .line 289
    iput-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mVolumeWeightedHistory:[Ljava/lang/String;

    .line 290
    iput v6, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mRssiFetchHistoryHead:I

    .line 291
    iput v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mRssiFetchHistoryTotal:I

    const/16 v9, 0x1388

    new-array v9, v9, [Ljava/lang/String;

    .line 292
    iput-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mRssiFetchHistory:[Ljava/lang/String;

    .line 293
    iput v6, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTrafficPollHistoryHead:I

    .line 294
    iput v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTrafficPollHistoryTotal:I

    const/16 v9, 0xbb8

    new-array v9, v9, [Ljava/lang/String;

    .line 295
    iput-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTrafficPollHistory:[Ljava/lang/String;

    const/16 v9, 0xa

    new-array v10, v9, [Ljava/lang/String;

    .line 296
    iput-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->summaryCountryCodeFromScanResults:[Ljava/lang/String;

    new-array v9, v9, [Ljava/lang/String;

    .line 297
    iput-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->summaryCountryCodeUpdates:[Ljava/lang/String;

    .line 298
    iput v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->incrCountryCodeUpdate:I

    .line 299
    iput v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->incrScanResult:I

    .line 300
    iput-wide v4, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastChinaConfirmedTime:J

    .line 301
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidationBlock:Z

    .line 302
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCheckValidationBlock:Z

    .line 303
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidationCheckMode:Z

    .line 304
    iput-wide v4, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidationCheckEnabledTime:J

    const/16 v9, 0x20

    .line 305
    iput v9, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidationCheckTime:I

    .line 306
    iput v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidationCheckCount:I

    .line 309
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUsagePackageChanged:Z

    .line 310
    iput-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiChipsetVendorName:Ljava/lang/String;

    .line 312
    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v9, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNetworkReplacementInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 313
    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v9, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNeedInheritForAcceptUnvalidatedPolicy:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 315
    new-instance v9, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$1;

    invoke-direct {v9, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    iput-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    .line 349
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmPollOngoing:Z

    .line 350
    iput v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mStopWcmPollCount:I

    .line 351
    iput-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mOpenNetworkQosCallbackList:Ljava/util/ArrayList;

    .line 353
    new-instance v10, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;

    invoke-direct {v10, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    iput-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mDefaultState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;

    .line 354
    new-instance v10, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;

    invoke-direct {v10, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    iput-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNotConnectedState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;

    .line 355
    new-instance v10, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;

    invoke-direct {v10, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    iput-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mConnectedState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;

    .line 356
    new-instance v10, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$CaptivePortalState;

    invoke-direct {v10, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$CaptivePortalState;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    iput-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCaptivePortalState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$CaptivePortalState;

    .line 357
    new-instance v10, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;

    invoke-direct {v10, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    iput-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mEvaluatedState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;

    .line 358
    new-instance v10, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;

    invoke-direct {v10, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    iput-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInvalidState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;

    .line 359
    new-instance v10, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidBlockState;

    invoke-direct {v10, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidBlockState;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    iput-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInvalidBlockState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidBlockState;

    .line 360
    new-instance v10, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;

    invoke-direct {v10, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    iput-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;

    .line 361
    new-instance v10, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;

    invoke-direct {v10, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    iput-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidNonSwitchableState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;

    .line 362
    new-instance v10, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;

    invoke-direct {v10, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    iput-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidSwitchableState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;

    .line 363
    new-instance v10, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;

    invoke-direct {v10, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    iput-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLevel1State:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;

    .line 364
    new-instance v10, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;

    invoke-direct {v10, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    iput-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLevel2State:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;

    .line 365
    new-instance v10, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNoCheckState;

    invoke-direct {v10, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNoCheckState;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    iput-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidNoCheckState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNoCheckState;

    .line 366
    new-instance v10, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$2;

    invoke-direct {v10, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$2;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    iput-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 378
    iput v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mOverlayUserID:I

    const-string v10, "com.samsung.android.wcmurlsnetworkstack"

    .line 379
    iput-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->SAMSUNG_WIFI_CHINA_URL_OVERLAY:Ljava/lang/String;

    .line 5126
    iput v6, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPreviousCaptivePortalMode:I

    const-string v10, "com.samsung.android.oneconnect"

    const-string v11, "com.samsung.android.app.mirrorlink"

    const-string v12, "com.google.android.gms"

    const-string v13, "com.google.android.projection.gearhead"

    .line 5203
    filled-new-array {v10, v11, v12, v13}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    iput-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->MULTINETWORK_ALLOWING_SYSTEM_PACKAGE_LIST:Ljava/util/List;

    const-string v11, "com.android.systemui"

    const-string v12, "android.uid.systemui"

    const-string v13, "com.samsung.android.app.aodservice"

    const-string v14, "com.sec.android.cover.ledcover"

    const-string v15, "com.samsung.android.app.routines"

    const-string v16, "com.android.systemui"

    const-string v17, "com.sec.android.dexsystemui"

    const-string v18, "com.samsung.android.gesture.MotionRecognitionService"

    const-string v19, "com.android.systemui.sensor.PickupController"

    const-string v20, "com.samsung.uready.agent"

    const-string v21, "com.google.android.apps.carrier.carrierwifi"

    .line 5209
    filled-new-array/range {v11 .. v21}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    iput-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->MULTINETWORK_EXCEPTION_PACKAGE_LIST:Ljava/util/List;

    .line 5393
    iput-wide v4, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLatestAlternativeNetworkSearchTime:J

    .line 5394
    iput v6, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLatestAlternativeNetworkId:I

    .line 385
    iput-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    .line 386
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContentResolver:Landroid/content/ContentResolver;

    .line 387
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object v5

    iput-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-object/from16 v5, p3

    .line 388
    iput-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInterfaceNameProvider:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 389
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v5

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getNetworkRemovedListener()Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->registerNetworkRemovedListener(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;)V

    .line 391
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiLinkInfoCollector()Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    move-result-object v5

    iput-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    .line 392
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v5

    iput-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 393
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTrafficPoller()Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    move-result-object v10

    iput-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 394
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getScanPoll()Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object v10

    iput-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 395
    new-instance v11, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$3;

    invoke-direct {v11, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$3;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    iput-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mScanPoolListener:Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;

    .line 402
    invoke-virtual {v10, v11}, Lcom/samsung/android/server/wifi/util/ScanPool;->registerScanResultUpdatedListener(Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;)V

    .line 403
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiBackOffController()Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    move-result-object v10

    iput-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 405
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v10

    iput-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 407
    new-instance v11, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;

    invoke-direct {v11}, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;-><init>()V

    iput-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiScoreMediator:Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;

    .line 409
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v12

    .line 408
    invoke-virtual {v5, v12, v11}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setWifiConnectedNetworkScorer(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorer;)Z

    .line 411
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getMobileWipsFrameworkService()Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    move-result-object v5

    iput-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemMobileWipsFrameworkService:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    .line 412
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiIssueDetector()Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    move-result-object v5

    iput-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    const-string v5, "connectivity"

    .line 414
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    iput-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 415
    new-instance v5, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    invoke-direct {v5, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    iput-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNetworkCallbackController:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    const-string v5, "phone"

    .line 416
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 417
    new-instance v5, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    const-string v11, "00:00:00:00:00:00"

    invoke-direct {v5, v0, v11, v6}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mEmptyBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    .line 418
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mDefaultState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;

    invoke-virtual {v1, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->addState(Lcom/android/internal/util/State;)V

    .line 419
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNotConnectedState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mDefaultState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;

    invoke-virtual {v1, v5, v11}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 420
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mConnectedState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mDefaultState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;

    invoke-virtual {v1, v5, v11}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 421
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCaptivePortalState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$CaptivePortalState;

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mConnectedState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;

    invoke-virtual {v1, v5, v11}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 422
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mEvaluatedState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mConnectedState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;

    invoke-virtual {v1, v5, v11}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 423
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInvalidState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mEvaluatedState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;

    invoke-virtual {v1, v5, v11}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 424
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInvalidBlockState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidBlockState;

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInvalidState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;

    invoke-virtual {v1, v5, v11}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 425
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mEvaluatedState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;

    invoke-virtual {v1, v5, v11}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 426
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidNonSwitchableState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;

    invoke-virtual {v1, v5, v11}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 427
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidSwitchableState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;

    invoke-virtual {v1, v5, v11}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 428
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLevel1State:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidSwitchableState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;

    invoke-virtual {v1, v5, v11}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 429
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLevel2State:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidSwitchableState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;

    invoke-virtual {v1, v5, v11}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 430
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidNoCheckState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNoCheckState;

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;

    invoke-virtual {v1, v5, v11}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 431
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNotConnectedState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;

    invoke-virtual {v1, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setInitialState(Lcom/android/internal/util/State;)V

    .line 432
    sget-boolean v5, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->DBG:Z

    if-eqz v5, :cond_2a5

    const/16 v5, 0x3e8

    goto :goto_2a7

    :cond_2a5
    const/16 v5, 0x1f4

    :goto_2a7
    invoke-virtual {v1, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setLogRecSize(I)V

    .line 435
    new-instance v5, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    invoke-direct {v5, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;-><init>(Landroid/content/Context;)V

    iput-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    const-string v11, "SSMA"

    .line 436
    invoke-virtual {v5, v11}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->getBigDataFeature(Ljava/lang/String;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;

    iput-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSCNT:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;

    .line 437
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    const-string v11, "SSVI"

    invoke-virtual {v5, v11}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->getBigDataFeature(Ljava/lang/String;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;

    iput-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSSVI:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;

    .line 440
    invoke-virtual {v10}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSetupwizardFinished()Z

    move-result v5

    const-string v11, "wifi_watchdog_poor_network_test_enabled"

    if-nez v5, :cond_2e2

    .line 441
    invoke-virtual {v10, v4, v11, v6}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_2e2

    .line 443
    invoke-virtual {v10}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSnsDefaultOn()Z

    move-result v5

    if-eqz v5, :cond_2df

    .line 444
    invoke-virtual {v10, v4, v11, v8}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2e2

    .line 447
    :cond_2df
    invoke-virtual {v10, v4, v11, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2e2
    :goto_2e2
    const-string v5, "ro.carrier"

    const-string v12, "Unknown"

    .line 454
    invoke-virtual {v10, v5, v12}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v12, "wifi-only"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_30d

    const-string v5, "ro.radio.noril"

    const-string v12, "no"

    .line 455
    invoke-virtual {v10, v5, v12}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v12, "yes"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30b

    goto :goto_30d

    :cond_30b
    move v5, v3

    goto :goto_30e

    :cond_30d
    :goto_30d
    move v5, v8

    :goto_30e
    iput-boolean v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->WIFI_ONLY:Z

    if-eqz v5, :cond_31a

    .line 458
    invoke-virtual {v10, v4, v11, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v5, "set WIFI_WATCHDOG_POOR_NETWORK_TEST_ENABLED to 0 for wifi only"

    .line 460
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_31a
    invoke-virtual {v10}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getOpBranding()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object v5

    iput-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->OP_BRANDING:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 465
    invoke-virtual {v10}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isShowDataSelectPopupOnBootup()Z

    move-result v5

    iput-boolean v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->SHOW_DATA_SELECT_POPUP_ON_BOOTUP:Z

    const-string v5, "CscFeature_Wifi_CaptivePortalException"

    .line 468
    invoke-virtual {v10, v5}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getStringCscFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->SALESCODE_CAPTIVE_PORTAL_EXCEPTION:Ljava/lang/String;

    .line 470
    invoke-virtual {v10}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isFactoryBinary()Z

    move-result v5

    iput-boolean v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->FACTORY_BINARY:Z

    const-string v5, "overlay"

    .line 473
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v5

    iput-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mOverlayManager:Landroid/content/om/IOverlayManager;

    .line 474
    invoke-direct {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setResourceOverlayForChina(Z)V

    const-string v3, "CountryISO"

    .line 475
    invoke-virtual {v10, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getStringCscFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCscCountryIso:Ljava/lang/String;

    .line 477
    invoke-virtual {v10}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isComcastVendor()Z

    move-result v3

    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->COMCAST_WIFI_SUPPORTED:Z

    .line 480
    iput-boolean v8, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastVisibilityOfWifiIcon:Z

    const-string v3, "check_private_ip_mode"

    .line 481
    invoke-virtual {v10, v4, v3, v8}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 484
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->updateCountryIsoCode()V

    .line 486
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "NetworkStatsThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 488
    new-instance v4, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v4, v3, v0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNetworkStatsAnalyzer:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    .line 489
    iget v3, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentMode:I

    invoke-virtual {v4, v3}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->setCurrentWCMMode(I)V

    .line 490
    new-instance v3, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$4;

    invoke-direct {v3, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$4;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    invoke-virtual {v4, v3}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->setNetworkStatsAnalyzerCallBack(Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;)V

    .line 545
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "WifiRssiBasePollerThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 547
    new-instance v4, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v4, v3, v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiRssiBasePoller:Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;

    .line 548
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$5;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$5;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    invoke-virtual {v4, v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->setSemWifiRssiBasePollerCallBack(Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller$ISemWifiRssiBasePollerCallBack;)V

    .line 564
    iput v6, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUsageStatsUid:I

    const-string v0, "default"

    .line 565
    iput-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUsageStatsPackageName:Ljava/lang/String;

    :try_start_3a4
    const-string v0, "usagestats"

    .line 567
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v0

    .line 568
    invoke-interface {v0, v9}, Landroid/app/usage/IUsageStatsManager;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V
    :try_end_3b1
    .catch Ljava/lang/Exception; {:try_start_3a4 .. :try_end_3b1} :catch_3b2

    goto :goto_3ca

    :catch_3b2
    move-exception v0

    .line 570
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurred while register UsageStatWatcher "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 574
    :goto_3ca
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    .line 585
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isIndividualAppSupported()Z

    move-result v0

    if-eqz v0, :cond_3df

    move-object/from16 v2, p4

    .line 586
    iput-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiSwitchForIndividualAppsService:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    goto :goto_3e1

    .line 587
    :cond_3df
    iput-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiSwitchForIndividualAppsService:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 590
    :goto_3e1
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/wcm/ScoreQC;-><init>()V

    iput-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mScoreQC:Lcom/samsung/android/server/wifi/wcm/ScoreQC;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    .line 140
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    .line 140
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    .line 140
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    .line 140
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    .line 140
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    .line 140
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    .line 140
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    .line 140
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    .line 140
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    .line 140
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    .line 140
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    .line 140
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    .line 140
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    .line 140
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    .line 140
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    .line 140
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    .line 140
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    .line 140
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    .line 140
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    .line 140
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    .line 140
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    .line 140
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    .line 140
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    .line 140
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .registers 2

    .line 140
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V

    return-void
.end method

.method private addDefaultNetworkChangeEventToString(Landroid/net/Network;Landroid/net/NetworkCapabilities;Z)V
    .registers 6

    .line 5303
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mDefaultNetworkHistory:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 5304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mDefaultNetworkHistory:Ljava/util/ArrayList;

    .line 5306
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mDefaultNetworkHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1b

    .line 5307
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mDefaultNetworkHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5309
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5310
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentTimeSimpleDateFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_31

    const-string p3, "New default : "

    goto :goto_33

    :cond_31
    const-string p3, "Lost Default : "

    .line 5311
    :goto_33
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4e

    .line 5312
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4e
    if-eqz p2, :cond_57

    .line 5313
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5314
    :cond_57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5315
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mDefaultNetworkHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addMultiNetworkWifiConfigurationToString(Landroid/net/wifi/WifiConfiguration;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 5277
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mMultiNetworkHistory:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    .line 5278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mMultiNetworkHistory:Ljava/util/ArrayList;

    .line 5280
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mMultiNetworkHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1e

    .line 5281
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mMultiNetworkHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5283
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5284
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentTimeSimpleDateFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ID: "

    .line 5285
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " SSID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " BSSID: "

    .line 5286
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CarrierId: "

    .line 5287
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5288
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result v2

    if-eqz v2, :cond_67

    const-string v2, " ephemeral"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5289
    :cond_67
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    if-eqz v2, :cond_70

    const-string v2, " fromWifiNetworkSuggestion"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5290
    :cond_70
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    if-eqz v2, :cond_79

    const-string v2, " fromWifiNetworkSpecifier"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5292
    :cond_79
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    if-eqz v2, :cond_87

    const-string v2, " cuid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5293
    :cond_87
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    if-eqz v2, :cond_95

    const-string v2, " cname="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5294
    :cond_95
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    if-eqz v2, :cond_a3

    const-string v2, " luid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5295
    :cond_a3
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    if-eqz v2, :cond_b1

    const-string v2, " lname="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5296
    :cond_b1
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    if-eqz v2, :cond_bf

    const-string v2, " updateIdentifier="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_bf
    const-string v2, " lcuid="

    .line 5297
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5300
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mMultiNetworkHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private applyQai3Policy()Z
    .registers 5

    .line 800
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIwcCurrentQai:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    goto :goto_d

    :cond_8
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastDnsResult:I

    if-eq p0, v2, :cond_d

    move v1, v2

    :cond_d
    :goto_d
    return v1
.end method

.method private changeWifiIcon(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 1067
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->changeWifiIcon(ZZ)V

    return-void
.end method

.method private changeWifiIcon(ZZ)V
    .registers 6

    .line 1079
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;->ACCEPTED:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;

    .line 1081
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastVisibilityOfWifiIcon:Z

    if-ne p1, v1, :cond_b

    if-nez p2, :cond_b

    .line 1082
    sget-object v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;->DUPLICATED_REQUEST:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;

    goto :goto_28

    :cond_b
    if-nez p1, :cond_1c

    .line 1083
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isEthernetDefault()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isMobileDataConnected()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1084
    sget-object v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;->MOBILE_DATA_NOT_CONNECTED:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;

    goto :goto_28

    :cond_1c
    if-eqz p1, :cond_27

    .line 1085
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isEthernetDefault()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1086
    sget-object v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;->ETHERNET_DEFAULT:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$iconChangeResult;

    goto :goto_28

    :cond_27
    move-object v1, v0

    :goto_28
    const-string v2, "WifiConnectivityMonitor"

    if-eq v1, v0, :cond_43

    if-nez p2, :cond_43

    .line 1090
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "changeWifiIcon - Icon change request ignored : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1094
    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeWifiIcon - visible("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") force("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendBroadCastWCMHideIcon(Z)V

    .line 1096
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastVisibilityOfWifiIcon:Z

    return-void
.end method

.method private checkAlternativeNetworksFromScanResults(Ljava/util/List;Landroid/net/wifi/WifiConfiguration;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Landroid/net/wifi/WifiConfiguration;",
            ")I"
        }
    .end annotation

    .line 2032
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 2033
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->qualifiedToHandover(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2034
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "checkAlternativeNetworks - There\'s internet available AP. Disable current AP. "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " RSSI: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiConnectivityMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    iget p0, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_3c

    :cond_3b
    const/4 p0, -0x1

    :goto_3c
    return p0
.end method

.method private checkAndUnsetNoInternetConfig(Landroid/net/Network;)V
    .registers 4

    .line 5831
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 5832
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isNoInternetAccessExpected()Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "WifiConnectivityMonitor"

    const-string v1, "Set noInternetAccessExpected config to false"

    .line 5833
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5834
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCm()Landroid/net/ConnectivityManager;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/ConnectivityManager;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    :cond_22
    return-void
.end method

.method private checkCountryCodeFromScanResults()V
    .registers 11

    .line 2286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2288
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/util/ScanPool;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 2289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaxScannedCountryCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WifiConnectivityMonitor"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentTimeSimpleDateFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  |  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Win: "

    .line 2292
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2294
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b1

    const-string v2, "CN"

    .line 2296
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 2297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastChinaConfirmedTime:J

    .line 2299
    :cond_4c
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCountryCodeFromScanResult:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_92

    const-wide/32 v4, 0x5265c00

    .line 2301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastChinaConfirmedTime:J

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gez v2, :cond_79

    const-string v2, "  |  CISO Updated [24h expired] - CN -> "

    .line 2303
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2304
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCountryCodeFromScanResult:Ljava/lang/String;

    .line 2305
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->updateCountryIsoCode()V

    goto :goto_b1

    :cond_79
    const-string v2, "  |  CISO changed but not updated - CN -X-> "

    .line 2307
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , maintain CN for next "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x3e8

    div-long/2addr v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b1

    .line 2309
    :cond_92
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCountryCodeFromScanResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b1

    const-string v2, "  |  Updated - "

    .line 2310
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCountryCodeFromScanResult:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2311
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCountryCodeFromScanResult:Ljava/lang/String;

    .line 2312
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->updateCountryIsoCode()V

    .line 2315
    :cond_b1
    :goto_b1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->summaryCountryCodeFromScanResults:[Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->incrScanResult:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->incrScanResult:I

    rem-int/lit8 v2, v2, 0xa

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    .line 2316
    sget-boolean p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->DBG:Z

    if-eqz p0, :cond_cc

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cc
    return-void
.end method

.method private checkDisabledNetworks()V
    .registers 17

    move-object/from16 v0, p0

    .line 2331
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 2332
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_326

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 2333
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    .line 2335
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object v4

    iget v5, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getSemWifiConfiguration(IZ)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object v4

    const-string v5, "checkDisabledNetworks "

    const-string v7, "WifiConnectivityMonitor"

    if-nez v4, :cond_49

    .line 2337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " semConfig is null"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 2340
    :cond_49
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mDelayedDisablingNetworkMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v8, :cond_6d

    invoke-virtual {v8, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6d

    .line 2341
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mDelayedDisablingNetworkMap.containsKey(config)"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 2347
    :cond_6d
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v5

    const/4 v8, 0x4

    const/4 v9, 0x6

    const/4 v10, 0x0

    if-eq v5, v8, :cond_7c

    .line 2348
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v5

    if-ne v5, v9, :cond_aa

    .line 2349
    :cond_7c
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    iget v11, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v11, v10}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->enableNetwork(IZ)Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 2350
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " network enabled by WCM. Disabled reason was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->clearDisabledReason(I)V

    goto/16 :goto_c

    .line 2356
    :cond_aa
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v3

    const/4 v5, 0x2

    const/4 v11, 0x3

    const-wide/16 v12, 0x0

    if-eqz v3, :cond_10f

    .line 2357
    iget-wide v8, v4, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    cmp-long v3, v8, v12

    if-nez v3, :cond_c0

    iget-wide v8, v4, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    cmp-long v3, v8, v12

    if-eqz v3, :cond_c

    .line 2359
    :cond_c0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(Bug)checkDisabledNetworks - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " enable network wcm="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v4, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ele="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v4, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    iget-wide v3, v4, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    cmp-long v3, v3, v12

    if-eqz v3, :cond_108

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    if-eqz v3, :cond_108

    .line 2362
    invoke-virtual {v3, v10}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->setEleState(I)V

    .line 2363
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isConnectedState()Z

    move-result v3

    if-nez v3, :cond_108

    iget v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentMode:I

    if-eq v3, v5, :cond_103

    if-ne v3, v11, :cond_108

    .line 2364
    :cond_103
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->unregisterPedometer()V

    .line 2367
    :cond_108
    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->clearDisabledReason(I)V

    goto/16 :goto_c

    .line 2370
    :cond_10f
    iget v3, v4, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    const-wide/16 v14, 0x3e8

    const-string v6, "checkDisabledNetworks - "

    if-eq v3, v9, :cond_244

    iget-wide v8, v4, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_11f

    goto/16 :goto_244

    .line 2394
    :cond_11f
    iget v8, v4, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    const/16 v9, 0x9

    if-eq v8, v9, :cond_12b

    iget-wide v8, v4, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_c

    .line 2396
    :cond_12b
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    if-eqz v8, :cond_161

    .line 2397
    sget-boolean v8, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->DBG:Z

    if-eqz v8, :cond_15c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " disabled by ELE, "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-wide v5, v4, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    sub-long/2addr v12, v5

    div-long/2addr v12, v14

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " seconds ago."

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2397
    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    :cond_15c
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->registerPedometer()V

    .line 2403
    :cond_161
    iget-boolean v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUIEnabled:Z

    const-string v6, "IAME"

    const-string v8, "SSIV"

    if-nez v5, :cond_196

    .line 2404
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " network enabled by ELE. - SNS is turned off"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    iget-boolean v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mEleDebug:Z

    if-eqz v3, :cond_18e

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string v4, "ELE - enable by sns off"

    invoke-static {v3, v4, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 2408
    :cond_18e
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v8, v6, v4}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    :goto_194
    const/4 v6, 0x1

    goto :goto_206

    .line 2410
    :cond_196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-wide v4, v4, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    sub-long/2addr v12, v4

    const-wide/32 v4, 0xea60

    cmp-long v4, v12, v4

    if-lez v4, :cond_1cf

    .line 2411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " network enabled by ELE. - Disable time expired"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    iget-boolean v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mEleDebug:Z

    if-eqz v3, :cond_1c9

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string v4, "ELE - enable by time expired"

    invoke-static {v3, v4, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 2415
    :cond_1c9
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    invoke-virtual {v3, v8, v6, v11}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_194

    .line 2417
    :cond_1cf
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    if-eqz v4, :cond_205

    .line 2418
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->getEleState()I

    move-result v4

    if-ne v4, v11, :cond_205

    .line 2419
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " network enabled by ELE. - over 10 Steps"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    iget-boolean v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mEleDebug:Z

    if-eqz v4, :cond_1fe

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string v5, "ELE - enable by steps"

    invoke-static {v4, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2423
    :cond_1fe
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    const/4 v3, 0x4

    invoke-virtual {v4, v8, v6, v3}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_194

    :cond_205
    move v6, v10

    :goto_206
    if-eqz v6, :cond_c

    .line 2429
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    invoke-virtual {v3, v8}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->insertLog(Ljava/lang/String;)V

    .line 2430
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    invoke-virtual {v3, v8}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->clearFeature(Ljava/lang/String;)Z

    .line 2432
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    iget v4, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4, v10}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->enableNetwork(IZ)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2433
    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->clearDisabledReason(I)V

    .line 2434
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    if-eqz v2, :cond_23a

    .line 2435
    invoke-virtual {v2, v10}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->setEleState(I)V

    .line 2436
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isConnectedState()Z

    move-result v2

    if-nez v2, :cond_23a

    iget v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_235

    if-ne v2, v11, :cond_23a

    .line 2437
    :cond_235
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->unregisterPedometer()V

    .line 2440
    :cond_23a
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->startScan()V

    const-string v2, "start scan to auto reconnect after network enabled"

    .line 2441
    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 2372
    :cond_244
    :goto_244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "is disabled by WCM, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v8, v4, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    sub-long/2addr v5, v8

    div-long/2addr v5, v14

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " seconds ago. "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2372
    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    iget-boolean v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUIEnabled:Z

    if-nez v3, :cond_299

    .line 2375
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    iget v4, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4, v10}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->enableNetwork(IZ)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2376
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " network enabled by WCM. - SNS is turned off"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->clearDisabledReason(II)V

    goto/16 :goto_c

    .line 2379
    :cond_299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v8, v4, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    sub-long/2addr v5, v8

    const-wide/32 v8, 0x1d4c0

    cmp-long v3, v5, v8

    if-lez v3, :cond_2cf

    .line 2380
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    iget v4, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4, v10}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->enableNetwork(IZ)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2381
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " network enabled by WCM. - Disable time expired"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->clearDisabledReason(II)V

    goto/16 :goto_c

    .line 2384
    :cond_2cf
    iget v3, v4, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    if-eqz v3, :cond_c

    .line 2385
    invoke-direct {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getRssiFromScanResult(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    .line 2386
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Rssi from scan result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", target rssi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    iget v4, v4, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    if-le v3, v4, :cond_c

    .line 2388
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    iget v4, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4, v10}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->enableNetwork(IZ)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " network enabled by WCM. - RSSI is good enough"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->clearDisabledReason(II)V

    goto/16 :goto_c

    :cond_326
    return-void
.end method

.method private checkIdleAndStopPoll(IIJI)Z
    .registers 11

    .line 3141
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->WIFI_ONLY:Z

    const/4 v1, 0x0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isMonitoring()Z

    move-result v0

    if-eqz v0, :cond_10

    return v1

    .line 3147
    :cond_10
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidationBlock:Z

    if-eqz v0, :cond_15

    return v1

    .line 3151
    :cond_15
    sget v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkDetectMode:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1e

    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentMode:I

    if-ne v0, v2, :cond_72

    .line 3153
    :cond_1e
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getRssi()I

    move-result v0

    .line 3154
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_30

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v3

    if-eqz v3, :cond_30

    const/16 v3, -0x40

    if-le v0, v3, :cond_3f

    :cond_30
    const/16 v3, -0x37

    if-le v0, v3, :cond_3f

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    iget v0, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastGoodRxRssi:I

    if-gez v0, :cond_3d

    if-lt v0, p5, :cond_3d

    goto :goto_3f

    :cond_3d
    const/4 p5, 0x4

    goto :goto_41

    :cond_3f
    :goto_3f
    const/16 p5, 0x8

    :goto_41
    if-nez p2, :cond_51

    const-wide/16 v3, 0x0

    cmp-long p2, p3, v3

    if-nez p2, :cond_51

    if-nez p1, :cond_51

    .line 3162
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mStopWcmPollCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mStopWcmPollCount:I

    goto :goto_53

    .line 3164
    :cond_51
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mStopWcmPollCount:I

    .line 3166
    :goto_53
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mStopWcmPollCount:I

    if-le p1, p5, :cond_72

    .line 3167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Stop WCM Poll. cnt : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mStopWcmPollCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WifiConnectivityMonitor"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3168
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mStopWcmPollCount:I

    return v2

    :cond_72
    return v1
.end method

.method private checkReportId(I)I
    .registers 3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_c

    const/16 v0, 0xb

    if-eq p1, v0, :cond_b

    packed-switch p1, :pswitch_data_e

    const/4 p0, -0x1

    :cond_b
    return p0

    :cond_c
    :pswitch_c
    const/4 p0, 0x2

    return p0

    :pswitch_data_e
    .packed-switch 0xd
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method private checkSCNTBigDataOnInitialQC(I)V
    .registers 7

    .line 5402
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSCNT:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;

    iget v1, v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsStage:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    return-void

    :cond_8
    const/4 v1, 0x2

    .line 5403
    iput v1, v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsStage:I

    .line 5405
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_2c

    .line 5406
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getWifiConfiguration(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 5408
    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLatestAlternativeNetworkId:I

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, v0, :cond_28

    .line 5409
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSCNT:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;

    iput v2, v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsSuccess:I

    goto :goto_2c

    .line 5411
    :cond_28
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSCNT:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;

    iput v1, v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsSuccess:I

    .line 5415
    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSCNT:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;

    iput p1, v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsQcResult:I

    .line 5416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLatestAlternativeNetworkSearchTime:J

    sub-long/2addr v1, v3

    long-to-int p1, v1

    iput p1, v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsTimeDelay:I

    .line 5417
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendBigDataFeatureForSCNT()V

    .line 5418
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->resetBigDataFeatureForSCNT()V

    return-void
.end method

.method private checkTransitionToLevel1StateState()V
    .registers 4

    .line 2450
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTrafficPollToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTrafficPollToken:I

    const v1, 0x21019

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    .line 2451
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLevel1State:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private checkTransitionToLevel2State()V
    .registers 3

    .line 2455
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentMode:I

    if-nez v0, :cond_5

    return-void

    .line 2458
    :cond_5
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIwcCurrentQai:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    .line 2459
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLevel2State:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_17

    :cond_10
    const-string p0, "WifiConnectivityMonitor"

    const-string v0, "Transition to Level2State blocked by QAI 3"

    .line 2461
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    return-void
.end method

.method private checkVPNSetting()V
    .registers 6

    .line 754
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string v2, "always_on_vpn_app"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureStringSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "WifiConnectivityMonitor"

    const/4 v2, 0x0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string v4, "always_on_vpn_lockdown"

    .line 755
    invoke-virtual {v0, v3, v4, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2b

    .line 756
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNetworkStatsAnalyzer:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->setIsVPNOnlyNetwork(Z)V

    const-string p0, "VPN Setting changed, enabled."

    .line 757
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 759
    :cond_2b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNetworkStatsAnalyzer:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->setIsVPNOnlyNetwork(Z)V

    const-string p0, "VPN Setting changed, disabled."

    .line 760
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    return-void
.end method

.method private clearDisabledReason(I)V
    .registers 4

    .line 2199
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getSavedNetworks(I)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 2200
    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 2201
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2202
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->clearDisabledReason(Landroid/net/wifi/WifiConfiguration;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1d
    return-void
.end method

.method private clearDisabledReason(II)V
    .registers 7

    .line 2212
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getSemWifiConfiguration(IZ)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 2213
    iget v0, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    if-ne v0, p2, :cond_2e

    .line 2214
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getSavedNetworks(I)Ljava/util/List;

    move-result-object p1

    .line 2215
    :goto_1b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_2d

    .line 2216
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiConfiguration;

    .line 2217
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->clearDisabledReason(Landroid/net/wifi/WifiConfiguration;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2d
    return-void

    .line 2221
    :cond_2e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mDelayedDisablingNetworkMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_6d

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 2222
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mDelayedDisablingNetworkMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    .line 2223
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_47
    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2224
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 2225
    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p1, v3, :cond_47

    .line 2226
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p2, :cond_47

    .line 2227
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->clearDisabledReason(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_47

    :cond_6d
    return-void
.end method

.method private clearDisabledReason(Landroid/net/wifi/WifiConfiguration;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 2239
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mDelayedDisablingNetworkMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2240
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object v0

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getSemWifiConfiguration(IZ)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 2242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearDisabledReason:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WifiConnectivityMonitor"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    iget v1, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    if-eqz v1, :cond_41

    .line 2244
    iput v2, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    :cond_41
    const-wide/16 v3, 0x0

    .line 2246
    iput-wide v3, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    .line 2247
    iput-wide v3, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    .line 2248
    iput v2, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    .line 2249
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string v3, "sem_wifi"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiManager;

    .line 2250
    invoke-virtual {v1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    .line 2252
    :cond_56
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->enableNetwork(IZ)Z

    return-void
.end method

.method private compareSsidAndSecurity(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z
    .registers 7

    .line 1995
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1996
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)I

    move-result p2

    .line 1998
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_42

    if-eqz v0, :cond_42

    .line 2000
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x2

    if-le v1, v3, :cond_42

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 2001
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2002
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getSecurityTypeFromScanResult(Landroid/net/wifi/ScanResult;)I

    move-result v0

    if-ne p2, v0, :cond_42

    iget-object p2, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz p2, :cond_42

    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p2, :cond_42

    iget-object p1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2005
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_42

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    return v2
.end method

.method private createPacketTracker(Lcom/android/net/module/util/InterfaceParams;Landroid/util/LocalLog;)Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;
    .registers 5

    .line 2904
    :try_start_0
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p0}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;-><init>(Landroid/os/Handler;Lcom/android/net/module/util/InterfaceParams;Landroid/util/LocalLog;Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception p0

    .line 2906
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to get ConnectivityPacketTracker object: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiConnectivityMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private detectIpv6ProvisioningFailure(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z
    .registers 7

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    if-nez p2, :cond_7

    return p0

    .line 1491
    :cond_7
    invoke-virtual {p1}, Landroid/net/LinkProperties;->isIpv6Provisioned()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    invoke-virtual {p2}, Landroid/net/LinkProperties;->isIpv6Provisioned()Z

    move-result v0

    if-nez v0, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    move v0, p0

    .line 1492
    :goto_17
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIpv4Address()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasIpv4Address()Z

    move-result v2

    if-nez v2, :cond_25

    move v2, v1

    goto :goto_26

    :cond_25
    move v2, p0

    .line 1493
    :goto_26
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIpv6DefaultRoute()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasIpv6DefaultRoute()Z

    move-result p2

    if-nez p2, :cond_34

    move p2, v1

    goto :goto_35

    :cond_34
    move p2, p0

    :goto_35
    if-eqz v2, :cond_38

    return p0

    :cond_38
    const-string v2, "WifiConnectivityMonitor"

    if-eqz v0, :cond_42

    const-string p0, "lostIPv6"

    .line 1499
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1503
    :cond_42
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasGlobalIpv6Address()Z

    move-result p1

    if-eqz p1, :cond_50

    if-eqz p2, :cond_50

    const-string p0, "return true by ipv6 provisioning failure"

    .line 1504
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_50
    return p0
.end method

.method private determineMode()V
    .registers 9

    .line 820
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_d

    .line 821
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_d
    const-string v0, ""

    .line 822
    :goto_f
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    goto :goto_19

    :cond_18
    const/4 v1, -0x1

    .line 824
    :goto_19
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentMode:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v2, :cond_23

    move v4, v5

    goto :goto_5e

    .line 828
    :cond_23
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isIgnorableNetwork(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_5a

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isCaptivePortalExceptionOnly(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_5a

    .line 831
    :cond_30
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    if-eqz v1, :cond_55

    .line 832
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->applyQai3Policy()Z

    move-result v1

    if-nez v1, :cond_51

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isQCExceptionOnly(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    goto :goto_51

    .line 835
    :cond_41
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isAggressiveModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 836
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setCurrentMode(I)V

    const/4 v4, 0x4

    goto :goto_5e

    .line 839
    :cond_4c
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setCurrentMode(I)V

    const/4 v4, 0x5

    goto :goto_5e

    .line 833
    :cond_51
    :goto_51
    invoke-direct {p0, v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setCurrentMode(I)V

    goto :goto_5e

    .line 843
    :cond_55
    invoke-direct {p0, v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setCurrentMode(I)V

    const/4 v4, 0x6

    goto :goto_5e

    .line 829
    :cond_5a
    :goto_5a
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setCurrentMode(I)V

    move v4, v6

    .line 847
    :goto_5e
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->updateNetworkAvoidBadWifiSetting()V

    .line 849
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssidLock:Ljava/lang/Object;

    monitor-enter v0

    .line 850
    :try_start_64
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    if-eqz v1, :cond_85

    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mEmptyBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    if-eq v1, v7, :cond_85

    .line 851
    iget v7, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentMode:I

    invoke-virtual {v1, v7}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->updateCurrentMode(I)V

    .line 852
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isConnectedState()Z

    move-result v1

    if-nez v1, :cond_79

    move v3, v5

    goto :goto_80

    :cond_79
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isValidState()Z

    move-result v1

    if-eqz v1, :cond_80

    move v3, v6

    .line 854
    :cond_80
    :goto_80
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->setCurrentConnectionState(I)V

    .line 856
    :cond_85
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_64 .. :try_end_86} :catchall_c0

    .line 857
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentMode:I

    if-eq v2, v0, :cond_a9

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reason : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->logi(Ljava/lang/String;)V

    goto :goto_bf

    .line 860
    :cond_a9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->logi(Ljava/lang/String;)V

    :goto_bf
    return-void

    :catchall_c0
    move-exception p0

    .line 856
    :try_start_c1
    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c0

    throw p0
.end method

.method private disableDelayedNetworks()V
    .registers 5

    .line 2262
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mDelayedDisablingNetworkMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3f

    .line 2263
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mDelayedDisablingNetworkMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2264
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_30

    const/4 v2, 0x7

    .line 2268
    :cond_30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->updateDisableReason(Landroid/net/wifi/WifiConfiguration;I)Z

    goto :goto_15

    .line 2270
    :cond_3a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mDelayedDisablingNetworkMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_3f
    :goto_3f
    return-void
.end method

.method private disableNetworkWithReason(IIZ)Z
    .registers 14

    .line 2145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableNetworkWithReason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectivityMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_31

    .line 2146
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mDelayedDisablingNetworkMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_31

    .line 2147
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mDelayedDisablingNetworkMap:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_31
    const/4 v0, 0x0

    .line 2149
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getSavedNetworks(I)Ljava/util/List;

    move-result-object v1

    .line 2150
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    if-eqz p3, :cond_69

    const/16 v3, 0x12d

    .line 2152
    iget-short v6, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mAnalyticsDisconnectReason:S

    iget-boolean v7, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    iget-boolean v8, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mAggressiveModeEnabled:Z

    .line 2155
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getRssi()I

    move-result v9

    move v4, p1

    move v5, p2

    .line 2153
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForUnwanted(IIIZZI)Landroid/os/Bundle;

    move-result-object v4

    .line 2152
    invoke-direct {p0, v3, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->reportIssue(ILandroid/os/Bundle;)V

    .line 2156
    invoke-direct {p0, v2, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->updateDisableReason(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_40

    .line 2158
    :cond_69
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mDelayedDisablingNetworkMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    :cond_73
    return v0
.end method

.method private doNotStartNSA()Z
    .registers 3

    .line 1209
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mAirPlaneMode:Z

    if-eqz v0, :cond_2d

    .line 1210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doNotStartNSA - ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->WIFI_ONLY:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mAirPlaneMode:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiConnectivityMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method

.method private dumpBssidQosMap()Ljava/lang/String;
    .registers 4

    .line 3225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3226
    sget-object v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssidLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3227
    :try_start_8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mBssidCache:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    .line 3228
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->dumpBssidQosMap()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 3230
    :cond_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_30

    .line 3231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_30
    move-exception p0

    .line 3230
    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p0
.end method

.method private eleCheck(II)V
    .registers 10

    const-string v0, "WifiConnectivityMonitor"

    .line 2987
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    if-nez v1, :cond_7

    return-void

    .line 2991
    :cond_7
    :try_start_7
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isInEleMoving()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2992
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mEleDebug:Z

    if-eqz p1, :cond_16

    const-string p1, "eleCheck: isInEleMoving"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    :cond_16
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->eleGetBcnCnt()I

    move-result p0

    invoke-virtual {p1, v1, p0, p2}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->checkDoorOpen(III)V

    goto/16 :goto_9e

    .line 2994
    :cond_2b
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isMonitoring()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 2995
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->getPollingEnabled()Z

    move-result v1

    if-nez v1, :cond_42

    .line 2996
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->setPollingSkip(Z)V

    return-void

    .line 3000
    :cond_42
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v2

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->eleGetBcnCnt()I

    move-result v3

    iget-boolean v6, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mEleScanFlag:Z

    move v4, p2

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isEleDetected(IIIIZ)I

    move-result p1

    const/4 p2, 0x0

    .line 3002
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mEleScanFlag:Z

    if-eqz p1, :cond_7f

    const/4 v1, 0x2

    if-eq p1, v1, :cond_69

    const p1, 0x21074

    .line 3012
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    goto :goto_6f

    :cond_69
    const p1, 0x21073

    .line 3009
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    .line 3016
    :goto_6f
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mEleDebug:Z

    if-eqz p1, :cond_9e

    .line 3017
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string p1, "Ele!"

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_9e

    .line 3006
    :cond_7f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->setPollingSkip(Z)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_84} :catch_85

    return-void

    :catch_85
    move-exception p0

    .line 3021
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mWifiEleStateTracker exception happened : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9e
    :goto_9e
    return-void
.end method

.method private eleCheckStart()V
    .registers 3

    .line 3026
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isInLevel1State()Z

    move-result v0

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    const/4 v1, 0x3

    if-ne v0, v1, :cond_24

    .line 3027
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    if-eqz v0, :cond_24

    const-string v0, "WifiConnectivityMonitor"

    const-string v1, "setMonitorEnabled true by EVENT_SCREEN_ON"

    .line 3028
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3029
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->setMonitorEnabled(ZZ)V

    .line 3030
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isBeginTimeGeoMagneticRequired()V

    :cond_24
    return-void
.end method

.method private eleCreateObjects()V
    .registers 6

    const-string v0, "WifiConnectivityMonitor"

    const-string v1, "eleCreateObjects"

    .line 2936
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2937
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    if-nez v1, :cond_31

    .line 2938
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isSupportEleDetection()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2939
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 2940
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$12;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$12;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->setSemWifiEleStateTrackerCallBack(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$ISemWifiEleStateTrackerCallBack;)V

    const-string p0, "eleCreateObjects done"

    .line 2968
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :cond_2c
    const-string p0, "eleCreateObjects ignored due to not available condition"

    .line 2970
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    :goto_31
    return-void
.end method

.method private eleGetBcnCnt()I
    .registers 4

    .line 2976
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInterfaceNameProvider:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 2977
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->getPrimaryInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 2976
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getWifiLinkLayerStats(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    move-result-object v0

    const-string v1, "WifiConnectivityMonitor"

    if-eqz v0, :cond_31

    .line 2979
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mEleDebug:Z

    if-eqz p0, :cond_2e

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eleGetBcnCnt: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->beacon_rx:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    :cond_2e
    iget p0, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->beacon_rx:I

    return p0

    .line 2982
    :cond_31
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mEleDebug:Z

    if-eqz p0, :cond_3a

    const-string p0, "eleGetBcnCnt: failed to get BcnCnt"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    const/4 p0, -0x1

    return p0
.end method

.method private eleScreenOffInitialize()V
    .registers 5

    .line 3036
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    if-eqz v0, :cond_4b

    const-string v0, "WifiConnectivityMonitor"

    const-string v1, "disable setMonitorEnabled by EVENT_SCREEN_OFF"

    .line 3037
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->setMonitorEnabled(ZZ)V

    .line 3039
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->getCurrentStepCnt()J

    .line 3040
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLevel2State:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_3f

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isInEleMoving()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mEleNeedRecoveryFromEle:Z

    if-eqz v0, :cond_3f

    :cond_2b
    const v0, 0x21019

    .line 3041
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTrafficPollToken:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTrafficPollToken:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    .line 3042
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLevel1State:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 3044
    :cond_3f
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mEleNeedRecoveryFromEle:Z

    .line 3045
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->clearEleMoving()V

    .line 3046
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    invoke-virtual {p0, v1, v3, v3}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->resetParameters(IZZ)V

    :cond_4b
    return-void
.end method

.method private enableValidationCheck()V
    .registers 5

    .line 2493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ValidationCheckMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidationCheckMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ValidationCheckCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidationCheckCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ValidationBlock : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidationBlock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectivityMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidationCheckMode:Z

    if-eqz v0, :cond_3a

    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidationCheckCount:I

    if-lez v0, :cond_3a

    const-string p0, "Validation Check was already enabled."

    .line 2495
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3a
    const/4 v0, 0x0

    .line 2498
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidationCheckCount:I

    const/4 v0, 0x1

    .line 2499
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidationCheckMode:Z

    const/16 v2, 0x20

    .line 2500
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidationCheckTime:I

    const/4 v2, 0x4

    const/16 v3, 0x12

    .line 2501
    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->reportNetworkConnectivityToNM(ZII)Z

    move-result v2

    .line 2503
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidationBlock:Z

    if-eqz v3, :cond_83

    const v3, 0x2102c

    if-eqz v2, :cond_75

    .line 2505
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidationCheckCount:I

    .line 2506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mValidationCheckCount : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidationCheckCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidationCheckTime:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p0, v3, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    goto :goto_83

    :cond_75
    const-string v0, "Starting to check VALIDATION_CHECK_FORCE is delayed."

    .line 2509
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x40

    .line 2510
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidationCheckTime:I

    const-wide/16 v0, 0x2710

    .line 2511
    invoke-virtual {p0, v3, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    :cond_83
    :goto_83
    return-void
.end method

.method private evaluateLinkLayerStatus(IIIJ)V
    .registers 32

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move-wide/from16 v11, p4

    .line 5500
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 5502
    iget v0, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastTxBad:I

    sub-int v2, v9, v0

    .line 5503
    iget v0, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastTxGood:I

    sub-int v0, v10, v0

    add-int v1, v2, v0

    const-string v3, ""

    .line 5505
    iput-object v3, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    .line 5507
    sget v3, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkDetectMode:I

    const-string v15, "enable to get validation result."

    const-wide/32 v16, 0x493e0

    const/16 v6, 0xc

    const-string v5, "WifiConnectivityMonitor"

    const/4 v4, 0x1

    if-ne v3, v4, :cond_238

    .line 5508
    iget v3, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mGoodLinkLastRssi:I

    add-int/2addr v3, v8

    const/4 v12, 0x2

    div-int/2addr v3, v12

    .line 5511
    iget-object v4, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    iget-wide v11, v4, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastTimeSample:J

    sub-long v11, v13, v11

    sget-wide v22, Lcom/samsung/android/server/wifi/wcm/Constant;->LINK_SAMPLING_INTERVAL_MS:J

    const-wide/16 v18, 0x2

    mul-long v22, v22, v18

    cmp-long v11, v11, v22

    if-gez v11, :cond_1c1

    .line 5512
    iget-object v11, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentLoss:Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    move-wide/from16 v22, v13

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    if-nez v11, :cond_4d

    .line 5513
    invoke-virtual {v4, v12, v13}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->getCurrentLoss(D)Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    move-result-object v4

    iput-object v4, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentLoss:Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    :cond_4d
    if-lez v1, :cond_1bc

    .line 5515
    iget-object v4, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentLoss:Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    if-eqz v4, :cond_1bc

    move-object v11, v15

    int-to-double v14, v2

    int-to-double v12, v1

    div-double v12, v14, v12

    .line 5518
    invoke-virtual {v4, v12, v13, v1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->update(DI)V

    .line 5519
    iget-object v4, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    invoke-virtual {v4, v3, v12, v13, v1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->updateLoss(IDI)V

    .line 5522
    iget-object v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    invoke-virtual {v1, v3, v2, v0}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->updateBssidQosMapOnPerUpdate(III)V

    .line 5525
    iget v0, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14e

    .line 5526
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isUpdateLloByTxRetiresSupported()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-direct {v7, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getTxRatio(I)D

    move-result-wide v0

    move-wide/from16 v24, v0

    goto :goto_79

    :cond_77
    const-wide/16 v24, 0x0

    :goto_79
    move-object/from16 v0, p0

    move v1, v3

    move v14, v3

    const/4 v15, 0x1

    move-wide v3, v12

    move-object v13, v5

    move v12, v6

    move-wide/from16 v5, v24

    .line 5527
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->updateLloCount(IIDD)V

    .line 5528
    iget-object v0, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v0

    if-nez v0, :cond_99

    iget-object v0, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->is6GHz()Z

    move-result v0

    if-eqz v0, :cond_97

    goto :goto_99

    :cond_97
    const/4 v1, 0x5

    goto :goto_9e

    :cond_99
    :goto_99
    iget v0, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_b3

    :goto_9e
    iget-object v0, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 5529
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v0

    if-eqz v0, :cond_1c7

    iget v0, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    const/16 v2, -0x46

    if-lt v0, v1, :cond_ae

    if-ge v14, v2, :cond_b3

    :cond_ae
    const/4 v1, 0x3

    if-lt v0, v1, :cond_1c7

    if-ge v14, v2, :cond_1c7

    .line 5530
    :cond_b3
    iget-object v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNetworkStatsAnalyzer:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->getStayingPoorRssi()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_ea

    .line 5531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "LLO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - Staying under last Poor link, r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    .line 5533
    iget-object v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLowQualityFailHistory:Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    const/16 v2, 0x16

    iput v2, v1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcTrigger:I

    goto :goto_f0

    .line 5536
    :cond_ea
    iget-object v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLowQualityFailHistory:Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    const/16 v2, 0x17

    iput v2, v1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcTrigger:I

    .line 5539
    :goto_f0
    iget-object v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNetworkStatsAnalyzer:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->initStayingPoorRssi()V

    const/4 v1, 0x0

    .line 5540
    iput v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    const-wide/16 v2, 0x0

    .line 5541
    iput-wide v2, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPreviousLoss:D

    .line 5542
    iput v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLossHasGone:I

    .line 5543
    iput-boolean v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->bSetQcResult:Z

    .line 5544
    iget-object v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    invoke-direct {v7, v1, v14, v15}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->poorLinkDetected(Lcom/samsung/android/server/wifi/wcm/BssidStatistics;II)V

    .line 5546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[[[poorLinkDetected]]]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    .line 5547
    iput v8, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorLinkLastRssi:I

    .line 5549
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLevel1State:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;

    if-ne v1, v2, :cond_147

    .line 5550
    iget-object v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLowQualityFailHistory:Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    iput v12, v1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->error:I

    .line 5552
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->line:I

    .line 5553
    iget-object v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInvalidationFailHistory:Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    iget-object v2, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLowQualityFailHistory:Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    iget v2, v2, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcTrigger:I

    iput v2, v1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcTriggerTemp:I

    .line 5555
    invoke-direct {v7, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->requestInternetCheck(I)V

    .line 5556
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->checkTransitionToLevel2State()V

    .line 5558
    :cond_147
    iget-object v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLowQualityFailHistory:Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    invoke-direct {v7, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setQcFailHistory(Lcom/samsung/android/server/wifi/wcm/QcFailHistory;)V

    goto/16 :goto_1c7

    :cond_14e
    move v14, v3

    move-object v13, v5

    const/4 v15, 0x1

    .line 5562
    iget-object v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentLoss:Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    iget-wide v2, v1, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mValue:D

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1b8

    iget-wide v1, v1, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mVolume:D

    sget-wide v3, Lcom/samsung/android/server/wifi/wcm/Constant;->POOR_LINK_MIN_VOLUME:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1b8

    .line 5564
    iget-object v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLowQualityFailHistory:Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    const/16 v2, 0xb

    iput v2, v1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->error:I

    .line 5565
    iget v2, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLossSampleCount:I

    add-int/2addr v2, v15

    iput v2, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLossSampleCount:I

    const/4 v0, 0x3

    if-lt v2, v0, :cond_1c7

    const/16 v2, 0x18

    .line 5566
    iput v2, v1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcTrigger:I

    const/16 v1, -0x50

    if-ge v14, v1, :cond_1a3

    const/4 v1, 0x0

    .line 5568
    iput-boolean v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->bSetQcResult:Z

    .line 5569
    iget-object v2, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    invoke-direct {v7, v2, v14, v15}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->poorLinkDetected(Lcom/samsung/android/server/wifi/wcm/BssidStatistics;II)V

    .line 5571
    iput v8, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorLinkLastRssi:I

    .line 5572
    iget v2, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentMode:I

    if-ne v2, v15, :cond_18b

    .line 5573
    invoke-direct {v7, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setLinkDetectMode(I)V

    goto :goto_19d

    :cond_18b
    const/4 v1, 0x2

    if-ne v2, v1, :cond_19d

    .line 5575
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLevel1State:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;

    if-ne v1, v2, :cond_19d

    .line 5576
    iget-object v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLowQualityFailHistory:Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    iget v1, v1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcTrigger:I

    invoke-direct {v7, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->requestInternetCheck(I)V

    .line 5579
    :cond_19d
    :goto_19d
    iget-object v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLowQualityFailHistory:Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    invoke-direct {v7, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setQcFailHistory(Lcom/samsung/android/server/wifi/wcm/QcFailHistory;)V

    goto :goto_1c7

    :cond_1a3
    const/16 v1, -0x4b

    if-lt v14, v1, :cond_1b0

    .line 5580
    iget-object v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_1c7

    .line 5581
    :cond_1b0
    iget-object v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLowQualityFailHistory:Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    iget v1, v1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcTrigger:I

    invoke-direct {v7, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->requestInternetCheck(I)V

    goto :goto_1c7

    :cond_1b8
    const/4 v1, 0x0

    .line 5585
    iput v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLossSampleCount:I

    goto :goto_1c7

    :cond_1bc
    move v14, v3

    move-object v13, v5

    move-object v11, v15

    const/4 v15, 0x1

    goto :goto_1c7

    :cond_1c1
    move-wide/from16 v22, v13

    move-object v11, v15

    const/4 v15, 0x1

    move v14, v3

    move-object v13, v5

    .line 5591
    :cond_1c7
    :goto_1c7
    iget v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1cf

    const/4 v0, 0x3

    if-ne v1, v0, :cond_20f

    .line 5592
    :cond_1cf
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInvalidBlockState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidBlockState;

    if-ne v0, v1, :cond_20f

    .line 5593
    iget v0, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInvalidationRssi:I

    const/4 v1, 0x5

    add-int/2addr v0, v1

    if-lt v8, v0, :cond_1f6

    .line 5594
    iget v0, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mOvercomingCount:I

    add-int/2addr v0, v15

    iput v0, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mOvercomingCount:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_20f

    move-object v0, v11

    .line 5595
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x11

    .line 5596
    invoke-direct {v7, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->requestInternetCheck(I)V

    const/4 v0, 0x0

    .line 5597
    iput v0, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mOvercomingCount:I

    .line 5598
    invoke-direct {v7, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setValidationBlock(Z)V

    goto :goto_20f

    :cond_1f6
    const/4 v0, 0x0

    .line 5601
    iput v0, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mOvercomingCount:I

    .line 5602
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isMultiNetwork()Z

    move-result v0

    if-nez v0, :cond_20f

    .line 5603
    iget-wide v0, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidationCheckEnabledTime:J

    sub-long v0, v22, v0

    cmp-long v0, v0, v16

    if-lez v0, :cond_20f

    .line 5604
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->enableValidationCheck()V

    move-wide/from16 v3, v22

    .line 5605
    iput-wide v3, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidationCheckEnabledTime:J

    goto :goto_211

    :cond_20f
    :goto_20f
    move-wide/from16 v3, v22

    .line 5611
    :goto_211
    iget-object v0, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    iput-wide v3, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastTimeSample:J

    .line 5612
    iput v9, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastTxBad:I

    .line 5613
    iput v10, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastTxGood:I

    move-wide/from16 v5, p4

    .line 5614
    iput-wide v5, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastRxGood:J

    .line 5615
    iput v8, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mGoodLinkLastRssi:I

    .line 5616
    iget v11, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastGoodRxRssi:I

    iget v12, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    iget-object v13, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move/from16 v5, p1

    move v6, v14

    move v7, v11

    move v8, v12

    move-object v9, v13

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setRssiFetchHistory(IIJIIIILjava/lang/String;)V

    goto/16 :goto_3a7

    :cond_238
    move v12, v6

    move-object v0, v15

    const/4 v11, 0x0

    move v15, v4

    move-wide v3, v13

    move-object v13, v5

    move-wide/from16 v5, p4

    .line 5619
    iget v14, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorLinkLastRssi:I

    add-int/2addr v14, v8

    const/16 v20, 0x2

    div-int/lit8 v14, v14, 0x2

    .line 5622
    iget-object v12, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    iget-wide v11, v12, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastTimeSample:J

    sub-long v11, v3, v11

    sget-wide v21, Lcom/samsung/android/server/wifi/wcm/Constant;->LINK_SAMPLING_INTERVAL_MS:J

    const-wide/16 v18, 0x2

    mul-long v21, v21, v18

    cmp-long v11, v11, v21

    if-gez v11, :cond_268

    if-lez v1, :cond_268

    .line 5623
    iget-object v11, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentLoss:Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    if-eqz v11, :cond_268

    int-to-double v5, v2

    int-to-double v9, v1

    div-double/2addr v5, v9

    .line 5626
    invoke-virtual {v11, v5, v6, v1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->update(DI)V

    .line 5627
    iget-object v2, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    invoke-virtual {v2, v14, v5, v6, v1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->updateLoss(IDI)V

    .line 5631
    :cond_268
    iget-object v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    iget-wide v5, v1, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssidAvoidTimeMax:J

    sub-long/2addr v5, v3

    .line 5632
    iget-wide v9, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastPoorDetectedTime:J

    sub-long v9, v3, v9

    const-wide/16 v11, 0x7530

    cmp-long v2, v9, v11

    if-lez v2, :cond_283

    .line 5633
    iget v2, v1, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEnhancedTargetRssi:I

    if-eqz v2, :cond_283

    .line 5635
    iget v9, v1, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    sub-int/2addr v9, v2

    iput v9, v1, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    const/4 v2, 0x0

    .line 5636
    iput v2, v1, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEnhancedTargetRssi:I

    .line 5639
    :cond_283
    iget-boolean v2, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsScreenOn:Z

    if-nez v2, :cond_297

    sget-boolean v2, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInitialResultSentToSystemUi:Z

    if-eqz v2, :cond_297

    cmp-long v2, v5, v11

    if-gez v2, :cond_297

    add-long v13, v3, v11

    .line 5640
    iput-wide v13, v1, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssidAvoidTimeMax:J

    const/4 v0, 0x0

    .line 5642
    iput v0, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mGoodTargetCount:I

    return-void

    .line 5646
    :cond_297
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLevel2State:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;

    if-ne v1, v2, :cond_2cb

    const/16 v1, -0x3c

    if-lt v14, v1, :cond_2c3

    .line 5648
    iget v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mGoodEnoughRssiToRecover:I

    add-int/2addr v1, v15

    iput v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mGoodEnoughRssiToRecover:I

    .line 5649
    rem-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_2cb

    .line 5650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Good Enough rssi reach "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mGoodEnoughRssiToRecover:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2cb

    :cond_2c3
    const/4 v1, 0x0

    .line 5653
    iput v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mGoodEnoughRssiToRecover:I

    const-string v1, "Good Enough rssi init"

    .line 5654
    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5658
    :cond_2cb
    :goto_2cb
    iget v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentMode:I

    if-ne v1, v15, :cond_30c

    .line 5659
    iget-boolean v0, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsScreenOn:Z

    if-eqz v0, :cond_384

    .line 5660
    iget-object v0, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    iget v1, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    if-lt v14, v1, :cond_307

    .line 5661
    iget v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mGoodTargetCount:I

    add-int/2addr v1, v15

    iput v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mGoodTargetCount:I

    iget v0, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetCount:I

    if-lt v1, v0, :cond_384

    .line 5663
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->DBG:Z

    if-eqz v0, :cond_2eb

    const-string v0, "check Internet connectivity"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5664
    :cond_2eb
    invoke-direct {v7, v15}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setLinkDetectMode(I)V

    .line 5665
    iput v8, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mGoodLinkLastRssi:I

    .line 5666
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInvalidState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;

    if-ne v0, v1, :cond_2fd

    const/16 v0, 0xc

    .line 5667
    invoke-direct {v7, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->requestInternetCheck(I)V

    .line 5669
    :cond_2fd
    iput-boolean v15, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIs204CheckInterval:Z

    const v0, 0x21025

    .line 5670
    invoke-virtual {v7, v0, v11, v12}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    goto/16 :goto_384

    :cond_307
    const/4 v1, 0x0

    .line 5674
    iput v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mGoodTargetCount:I

    goto/16 :goto_384

    :cond_30c
    const/4 v1, 0x0

    .line 5678
    iget-object v2, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    iget v5, v2, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    const/16 v6, 0x3c

    if-ge v14, v5, :cond_338

    iget v5, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mGoodEnoughRssiToRecover:I

    if-le v5, v6, :cond_31a

    goto :goto_338

    .line 5703
    :cond_31a
    iput v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mGoodTargetCount:I

    .line 5704
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInvalidState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;

    if-ne v0, v1, :cond_384

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isMultiNetwork()Z

    move-result v0

    if-nez v0, :cond_384

    .line 5705
    iget-wide v0, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidationCheckEnabledTime:J

    sub-long v0, v3, v0

    cmp-long v0, v0, v16

    if-lez v0, :cond_384

    .line 5706
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->enableValidationCheck()V

    .line 5707
    iput-wide v3, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidationCheckEnabledTime:J

    goto :goto_384

    .line 5679
    :cond_338
    :goto_338
    iget v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mGoodEnoughRssiToRecover:I

    if-le v1, v6, :cond_352

    .line 5680
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLevel2State:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;

    if-ne v0, v1, :cond_384

    const/4 v0, 0x0

    .line 5681
    iput v0, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mGoodTargetCount:I

    .line 5682
    iput v8, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mGoodLinkLastRssi:I

    .line 5683
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->checkTransitionToLevel1StateState()V

    const-string v0, "Exit Level2 Good Enough rssi + 60"

    .line 5684
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_384

    .line 5686
    :cond_352
    iget v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mGoodTargetCount:I

    add-int/2addr v1, v15

    iput v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mGoodTargetCount:I

    iget v2, v2, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetCount:I

    if-lt v1, v2, :cond_384

    .line 5688
    iput v8, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mGoodLinkLastRssi:I

    .line 5689
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLevel2State:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;

    if-ne v1, v2, :cond_369

    .line 5690
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->checkTransitionToLevel1StateState()V

    goto :goto_381

    .line 5692
    :cond_369
    invoke-direct {v7, v15}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setLinkDetectMode(I)V

    .line 5693
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInvalidBlockState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidBlockState;

    if-ne v1, v2, :cond_381

    .line 5695
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 5696
    invoke-direct {v7, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setValidationBlock(Z)V

    const/16 v1, 0xc

    .line 5697
    invoke-direct {v7, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->requestInternetCheck(I)V

    goto :goto_382

    :cond_381
    :goto_381
    const/4 v0, 0x0

    .line 5700
    :goto_382
    iput v0, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mGoodTargetCount:I

    .line 5712
    :cond_384
    :goto_384
    iget-object v0, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    iput-wide v3, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastTimeSample:J

    move/from16 v1, p2

    .line 5713
    iput v1, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastTxBad:I

    move/from16 v2, p3

    .line 5714
    iput v2, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastTxGood:I

    move-wide/from16 v3, p4

    .line 5715
    iput-wide v3, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastRxGood:J

    .line 5716
    iput v8, v7, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorLinkLastRssi:I

    .line 5717
    iget v9, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastGoodRxRssi:I

    iget v10, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    const-string v11, ""

    move-object/from16 v0, p0

    move/from16 v5, p1

    move v6, v14

    move v7, v9

    move v8, v10

    move-object v9, v11

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setRssiFetchHistory(IIJIIIILjava/lang/String;)V

    :goto_3a7
    return-void
.end method

.method private getCaptivePortalMode()I
    .registers 3

    .line 5164
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "captive_portal_mode"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getCm()Landroid/net/ConnectivityManager;
    .registers 2

    .line 608
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_f

    .line 609
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    return-object p0

    :cond_f
    return-object v0
.end method

.method private getCurrentTimeSimpleDateFormat()Ljava/lang/String;
    .registers 5

    .line 5489
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5491
    :try_start_18
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 5492
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_2a} :catch_2b

    goto :goto_42

    :catch_2b
    move-exception v0

    .line 5494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalArgumentException occurred : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectivityMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_42
    return-object p0
.end method

.method public static getInstance()Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;
    .registers 1

    .line 604
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcm:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    return-object v0
.end method

.method private getIssueUidForConnectingNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 9

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 5246
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    const/4 v4, 0x1

    aput v2, v1, v4

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    const/4 v4, 0x2

    aput v2, v1, v4

    .line 5247
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :goto_18
    const v4, 0x186a0

    if-ge v3, v0, :cond_39

    .line 5248
    aget v5, v1, v3

    .line 5251
    rem-int/2addr v5, v4

    const/16 v4, 0x3f2

    if-gt v5, v4, :cond_25

    goto :goto_36

    .line 5254
    :cond_25
    :try_start_25
    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    .line 5255
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->MULTINETWORK_ALLOWING_SYSTEM_PACKAGE_LIST:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2f} :catch_32

    if-eqz v4, :cond_36

    return v5

    :catch_32
    move-exception v4

    .line 5259
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_36
    :goto_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 5262
    :cond_39
    iget p0, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_42

    iget p0, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    goto :goto_44

    :cond_42
    iget p0, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 5263
    :goto_44
    rem-int/2addr p0, v4

    return p0
.end method

.method private getKernelTime()Ljava/lang/String;
    .registers 5

    .line 2721
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 2723
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getRssi()I
    .registers 2

    .line 5175
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_b

    const/16 p0, -0x63

    return p0

    .line 5177
    :cond_b
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p0

    return p0
.end method

.method private getRssiFromScanResult(Landroid/net/wifi/WifiConfiguration;)I
    .registers 5

    .line 2320
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/ScanPool;->getLastScanResults()Ljava/util/List;

    move-result-object v0

    .line 2321
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 2322
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->compareSsidAndSecurity(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2323
    iget p0, v1, Landroid/net/wifi/ScanResult;->level:I

    return p0

    :cond_1f
    const/16 p0, -0x7f

    return p0
.end method

.method private getRxLinkSpeed()I
    .registers 2

    .line 5187
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 5189
    :cond_a
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRxLinkSpeedMbps()I

    move-result p0

    return p0
.end method

.method private getSecurityType(Landroid/net/wifi/WifiConfiguration;)I
    .registers 7

    .line 1966
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-nez p0, :cond_3d

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 1967
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_3d

    .line 1969
    :cond_15
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_21

    move v1, v2

    goto :goto_3e

    .line 1971
    :cond_21
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-nez p0, :cond_3e

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 1972
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_32

    goto :goto_3e

    .line 1975
    :cond_32
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    if-eqz p0, :cond_3a

    goto :goto_3b

    :cond_3a
    move v0, p1

    :goto_3b
    move v1, v0

    goto :goto_3e

    :cond_3d
    :goto_3d
    move v1, v3

    :cond_3e
    :goto_3e
    return v1
.end method

.method private getSecurityTypeFromScanResult(Landroid/net/wifi/ScanResult;)I
    .registers 3

    .line 1982
    iget-object p0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "EAP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x3

    goto :goto_31

    .line 1984
    :cond_c
    iget-object p0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "SAE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x4

    goto :goto_31

    .line 1986
    :cond_18
    iget-object p0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "PSK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_24

    const/4 p0, 0x2

    goto :goto_31

    .line 1988
    :cond_24
    iget-object p0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string p1, "WEP"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_30

    const/4 p0, 0x1

    goto :goto_31

    :cond_30
    const/4 p0, 0x0

    :goto_31
    return p0
.end method

.method private getSimState()I
    .registers 5

    .line 1594
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1597
    :cond_6
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    const/4 v2, 0x5

    if-eqz v0, :cond_21

    .line 1599
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    if-eq v3, v2, :cond_1f

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x1

    .line 1600
    invoke-virtual {p0, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p0

    if-eq p0, v2, :cond_1f

    goto :goto_27

    :cond_1f
    move v1, v2

    goto :goto_27

    .line 1606
    :cond_21
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 1609
    :goto_27
    sget-boolean p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->DBG:Z

    if-eqz p0, :cond_49

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimState - "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isMultiSim - "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiConnectivityMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    return v1
.end method

.method private getTestUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, "connectivity"

    const-string v1, "test_url_expiration_time"

    const/4 v2, 0x0

    .line 5449
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    return-object v2

    .line 5454
    :cond_c
    :try_start_c
    invoke-static {v1}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_10} :catch_26

    .line 5460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long p0, v3, v5

    if-ltz p0, :cond_25

    sub-long/2addr v3, v5

    .line 5461
    sget-wide v5, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->TEST_URL_EXPIRATION_MS:J

    cmp-long p0, v3, v5

    if-lez p0, :cond_20

    goto :goto_25

    .line 5462
    :cond_20
    invoke-static {v0, p1, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    :goto_25
    return-object v2

    :catch_26
    move-exception p1

    const-string v0, "Invalid test URL expiration time format"

    .line 5456
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private getTxLinkSpeed()I
    .registers 2

    .line 5181
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 5183
    :cond_a
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getTxLinkSpeedMbps()I

    move-result p0

    return p0
.end method

.method private getTxRatio(I)D
    .registers 14

    .line 5728
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInterfaceNameProvider:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 5729
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->getPrimaryInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 5728
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getWifiLinkLayerStats(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-string v3, "WifiConnectivityMonitor"

    if-eqz v0, :cond_91

    .line 5731
    iget-wide v4, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_be:J

    iget-wide v6, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_bk:J

    add-long/2addr v4, v6

    iget-wide v6, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_vi:J

    add-long/2addr v4, v6

    iget-wide v6, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_vo:J

    add-long/2addr v4, v6

    .line 5732
    iget-wide v6, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastLlsTxGood:J

    sub-long v6, v4, v6

    .line 5733
    iget-wide v8, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_be:J

    iget-wide v10, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_bk:J

    add-long/2addr v8, v10

    iget-wide v10, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_vi:J

    add-long/2addr v8, v10

    iget-wide v10, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_vo:J

    add-long/2addr v8, v10

    .line 5734
    iget-wide v10, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastLlsTxRetries:J

    sub-long v10, v8, v10

    .line 5735
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastLlsTxGood:J

    .line 5736
    iput-wide v8, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastLlsTxRetries:J

    .line 5737
    sget-boolean p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->DBG:Z

    if-eqz p0, :cond_58

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dLlsTxGood: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", dLlsTxRetries: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    const/16 v0, -0x4e

    if-lt p1, v0, :cond_5f

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    goto :goto_61

    :cond_5f
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :goto_61
    long-to-double v8, v6

    cmpl-double p1, v8, v4

    if-lez p1, :cond_6a

    add-long/2addr v6, v10

    long-to-double v0, v6

    div-double v1, v0, v8

    :cond_6a
    if-eqz p0, :cond_90

    .line 5743
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "txRatio: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, p1, v0

    const-string v0, "%.3f"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_90
    return-wide v1

    :cond_91
    const-string p0, "WifiLinkLayerStat is null"

    .line 5746
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method

.method private getUpdatedRssi()I
    .registers 1

    .line 5193
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getUpdatedRssi()I

    move-result p0

    return p0
.end method

.method private inChinaNetwork()Z
    .registers 3

    .line 1512
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    .line 1513
    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->updateCountryIsoCode()V

    .line 1515
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isChineseIso(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1516
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->DBG:Z

    if-eqz v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Need to skip captive portal check. CISO: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiConnectivityMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const/4 p0, 0x1

    return p0

    :cond_34
    const/4 p0, 0x0

    return p0
.end method

.method private intToIp(I)Ljava/lang/String;
    .registers 4

    .line 1481
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isAggressiveModeEnabled()Z
    .registers 5

    .line 883
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIwcCurrentQai:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3a

    const/4 v2, 0x3

    if-ne v0, v2, :cond_e

    goto :goto_3a

    .line 888
    :cond_e
    sget-object v0, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->KTT:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->OP_BRANDING:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    if-ne v0, v2, :cond_29

    .line 889
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isAggressiveModeSupported()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mAggressiveModeEnabled:Z

    if-nez v0, :cond_28

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mMptcpEnabled:Z

    if-eqz p0, :cond_27

    goto :goto_28

    :cond_27
    move v1, v3

    :cond_28
    :goto_28
    return v1

    .line 892
    :cond_29
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isAggressiveModeSupported()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    if-eqz v0, :cond_38

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mAggressiveModeEnabled:Z

    if-eqz p0, :cond_38

    goto :goto_39

    :cond_38
    move v1, v3

    :goto_39
    return v1

    :cond_3a
    :goto_3a
    return v3
.end method

.method private isAggressiveModeSupported()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method private isCaptivePortalExceptionOnly(Ljava/lang/String;)Z
    .registers 6

    .line 1255
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCaptivePortalExceptionReason:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_8e

    .line 1258
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_14

    if-nez p1, :cond_14

    .line 1261
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    .line 1264
    :cond_14
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->SALESCODE_CAPTIVE_PORTAL_EXCEPTION:Ljava/lang/String;

    const-string v3, "CCT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "com.smithmicro.netwise.director.comcast.oem"

    .line 1265
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isPackageExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isComcastSsid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    move p1, v1

    goto :goto_8c

    :cond_2e
    const-string v0, "\"attwifi\""

    .line 1267
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSetupwizardFinished()Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 p1, 0x2

    goto :goto_8c

    :cond_40
    const-string v0, "\"SFR WiFi\""

    .line 1271
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    const-string v0, "\"SFR WiFi Public\""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    const-string v0, "\"SFR WiFi Gares\""

    .line 1272
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    const-string v0, "\"SFR WiFi FON\""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    const-string v0, "\"WiFi Partenaires\""

    .line 1273
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    goto :goto_8b

    :cond_69
    const-string v0, "\"CelcomWifi\""

    .line 1275
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    const/4 p1, 0x6

    goto :goto_8c

    :cond_73
    const-string v0, "\"UL Mobile\""

    .line 1277
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    const/16 p1, 0x8

    goto :goto_8c

    :cond_7e
    const-string v0, "\"TranslinkWiFi\""

    .line 1279
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_89

    const/16 p1, 0x9

    goto :goto_8c

    :cond_89
    move p1, v2

    goto :goto_8c

    :cond_8b
    :goto_8b
    const/4 p1, 0x4

    .line 1284
    :goto_8c
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCaptivePortalExceptionReason:I

    .line 1287
    :cond_8e
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCaptivePortalExceptionReason:I

    if-lez p1, :cond_a9

    .line 1288
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isCaptivePortalExceptionOnly - reason #"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCaptivePortalExceptionReason:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->logd(Ljava/lang/String;)V

    return v1

    :cond_a9
    return v2
.end method

.method private isCarrierWifi()Z
    .registers 4

    .line 5267
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_e

    return v0

    .line 5269
    :cond_e
    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1c

    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    if-nez v1, :cond_1b

    iget-boolean p0, p0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    if-eqz p0, :cond_1c

    :cond_1b
    const/4 v0, 0x1

    :cond_1c
    return v0
.end method

.method private isChineseIso(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "cn"

    .line 1525
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isComcastSsid(Ljava/lang/String;)Z
    .registers 10

    .line 1715
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->COMCAST_WIFI_SUPPORTED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1719
    :cond_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    return v1

    :cond_d
    const-string v0, "\""

    const-string v2, ""

    .line 1724
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "content://com.smithmicro.netwise.director.comcast.oem.apiprovider/managed_networks"

    .line 1725
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1726
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_6b

    .line 1729
    :try_start_2b
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6b

    .line 1730
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_34
    const-string v0, "network"

    .line 1734
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "WifiConnectivityMonitor"

    .line 1735
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "netwiseSsid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_58
    .catchall {:try_start_2b .. :try_end_58} :catchall_66

    if-eqz v0, :cond_5f

    const/4 p1, 0x1

    .line 1743
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1

    .line 1739
    :cond_5f
    :try_start_5f
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_66

    if-nez v0, :cond_34

    goto :goto_6b

    :catchall_66
    move-exception p1

    .line 1743
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1745
    throw p1

    :cond_6b
    :goto_6b
    if-eqz p0, :cond_70

    .line 1743
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_70
    return v1
.end method

.method private isConnectedState()Z
    .registers 2

    .line 1217
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNotConnectedState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;

    if-eq v0, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private isCtsTestRunning()Z
    .registers 3

    .line 5433
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isCtsVerifierRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 5434
    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isTestCaptivePortalServerHttpsUrlSet()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isTestCaptivePortalServerHttpUrlSet()Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method private isCtsVerifierRunning()Z
    .registers 3

    .line 5430
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string v1, "com.android.cts.verifier"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isPackageRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isEthernetDefault()Z
    .registers 3

    .line 1100
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCm()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 1103
    :cond_c
    :try_start_c
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCm()Landroid/net/ConnectivityManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    const/4 v0, 0x3

    .line 1104
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_19} :catch_1d

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    return p0

    :catch_1d
    move-exception p0

    .line 1108
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_21
    return v1
.end method

.method private isIgnorableNetwork(Ljava/lang/String;I)Z
    .registers 8

    .line 1296
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIgnorableNetworkReason:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_159

    .line 1299
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v0, :cond_34

    if-eqz p1, :cond_1a

    const-string v0, ""

    .line 1304
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1305
    :cond_1a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    .line 1307
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getWifiConfiguration(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    if-ne p2, v4, :cond_34

    .line 1309
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p2

    :cond_34
    if-nez v3, :cond_42

    if-eq p2, v4, :cond_42

    .line 1313
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 1316
    :cond_42
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->SALESCODE_CAPTIVE_PORTAL_EXCEPTION:Ljava/lang/String;

    const-string v0, "ATT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x2

    if-eqz p2, :cond_5a

    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string v4, "com.synchronoss.dcs.att.r2g"

    .line 1317
    invoke-direct {p0, p2, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isPackageRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5a

    move v0, v1

    goto/16 :goto_157

    :cond_5a
    if-eqz p1, :cond_6e

    const-string p2, "DIRECT-"

    .line 1319
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6e

    const-string p2, ":NEX-"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6e

    goto/16 :goto_157

    .line 1321
    :cond_6e
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string v4, "de.telekom.hotspotlogin"

    invoke-direct {p0, p2, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isPackageRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7b

    const/4 v0, 0x3

    goto/16 :goto_157

    .line 1323
    :cond_7b
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string v4, "com.belgacom.fon"

    invoke-direct {p0, p2, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isPackageRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_88

    const/4 v0, 0x4

    goto/16 :goto_157

    .line 1325
    :cond_88
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->SALESCODE_CAPTIVE_PORTAL_EXCEPTION:Ljava/lang/String;

    const-string v4, "CHM"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_bd

    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string v4, "com.chinamobile.cmccwifi"

    .line 1326
    invoke-direct {p0, p2, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isPackageRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_ba

    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string v4, "com.chinamobile.cmccwifi.WelcomeActivity"

    .line 1327
    invoke-direct {p0, p2, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isPackageRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_ba

    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string v4, "com.chinamobile.cmccwifi.MainActivity"

    .line 1328
    invoke-direct {p0, p2, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isPackageRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_ba

    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string v4, "com.android.settings.wifi.CMCCChargeWarningDialog"

    .line 1329
    invoke-direct {p0, p2, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isPackageRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_bd

    :cond_ba
    const/4 v0, 0x6

    goto/16 :goto_157

    :cond_bd
    const-string p2, "\"au_Wi-Fi\""

    .line 1331
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_ed

    const-string p2, "\"Wi2\""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_ed

    const-string p2, "\"Wi2premium\""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_ed

    const-string p2, "\"Wi2premium_club\""

    .line 1332
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_ed

    const-string p2, "\"UQ_Wi-Fi\""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_ed

    const-string p2, "\"wifi_square\""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_fe

    :cond_ed
    const-string p2, "com.kddi.android.au_wifi_connect"

    .line 1333
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isPackageExists(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_156

    const-string p2, "com.kddi.android.au_wifi_connect2"

    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isPackageExists(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_fe

    goto :goto_156

    .line 1335
    :cond_fe
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->FACTORY_BINARY:Z

    if-eqz p2, :cond_105

    const/16 v0, 0x8

    goto :goto_157

    :cond_105
    const-string p2, "\"mailsky\""

    .line 1337
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_114

    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsUsingProxy:Z

    if-eqz p2, :cond_114

    const/16 v0, 0x9

    goto :goto_157

    :cond_114
    const-string p2, "\"COPconnect\""

    .line 1339
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_149

    if-eqz v3, :cond_149

    .line 1340
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object p2

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p2, v3}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getSavedNetworks(I)Ljava/util/List;

    move-result-object p2

    .line 1342
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v3, v2

    :goto_12f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_143

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 1343
    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_12f

    :cond_143
    if-eqz v3, :cond_154

    const/16 p2, 0xa

    move v0, p2

    goto :goto_157

    :cond_149
    const-string p2, "\"SpirentATTEVSAP\""

    .line 1346
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_154

    const/16 v0, 0xb

    goto :goto_157

    :cond_154
    move v0, v2

    goto :goto_157

    :cond_156
    :goto_156
    const/4 v0, 0x7

    .line 1350
    :goto_157
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIgnorableNetworkReason:I

    .line 1353
    :cond_159
    iget p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIgnorableNetworkReason:I

    if-lez p2, :cond_17e

    .line 1354
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isIgnorableNetwork - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", reason: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIgnorableNetworkReason:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiConnectivityMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_17e
    return v2
.end method

.method private isInLevel1State()Z
    .registers 2

    .line 916
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 917
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLevel1State:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;

    if-ne v0, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private isInvalidState()Z
    .registers 3

    .line 924
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 925
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInvalidState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;

    if-eq v0, v1, :cond_f

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInvalidBlockState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidBlockState;

    if-ne v0, p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method private isLegacyMultiNetwork()Z
    .registers 6

    .line 5224
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return p0

    .line 5226
    :cond_e
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getIssueUidForConnectingNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 5227
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 5228
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 5229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MultiNetwork legacy ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-direct {p0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isMultiNetworkAvailableApp(IILjava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WifiConnectivityMonitor"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5230
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isMultiNetworkAvailableApp(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isMobileDataConnected()Z
    .registers 3

    .line 1114
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result p0

    const-string v0, "WifiConnectivityMonitor"

    const/4 v1, 0x2

    if-ne p0, v1, :cond_12

    const-string p0, "isMobileDataConnected: true"

    .line 1115
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_12
    const-string p0, "isMobileDataConnected: false"

    .line 1118
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private isMultiNetwork()Z
    .registers 5

    .line 5197
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    .line 5199
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MultiNetwork : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " || "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WifiConnectivityMonitor"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5200
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    if-eqz v2, :cond_39

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_43

    :cond_39
    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    if-nez v0, :cond_43

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isLegacyMultiNetwork()Z

    move-result p0

    if-eqz p0, :cond_44

    :cond_43
    const/4 v1, 0x1

    :cond_44
    return v1
.end method

.method private isMultiNetworkAvailableApp(IILjava/lang/String;)Z
    .registers 6

    const/16 v0, 0x3f2

    if-le p1, v0, :cond_27

    if-gt p2, v0, :cond_7

    goto :goto_27

    :cond_7
    const/4 p1, 0x0

    if-eqz p3, :cond_23

    .line 5238
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->MULTINETWORK_EXCEPTION_PACKAGE_LIST:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5239
    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    return p1

    :cond_23
    if-le p2, v0, :cond_26

    const/4 p1, 0x1

    :cond_26
    return p1

    .line 5235
    :cond_27
    :goto_27
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->MULTINETWORK_ALLOWING_SYSTEM_PACKAGE_LIST:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isPackageExists(Ljava/lang/String;)Z
    .registers 5

    const-string v0, "WifiConnectivityMonitor"

    const/4 v1, 0x0

    .line 1364
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_44

    .line 1366
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPackageExists - matched: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_25} :catch_27

    const/4 p0, 0x1

    return p0

    :catch_27
    move-exception p0

    .line 1370
    sget-boolean p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->DBG:Z

    if-eqz p1, :cond_44

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NameNotFoundException + "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    return v1
.end method

.method private isPackageRunning(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    const-string p0, "WifiConnectivityMonitor"

    const/4 v0, 0x0

    if-nez p1, :cond_6

    return v0

    :cond_6
    :try_start_6
    const-string v1, "activity"

    .line 1378
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 1379
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p1

    .line 1380
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1381
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPackageRunning - top:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_47} :catch_4a

    if-eqz v2, :cond_17

    return v1

    :catch_4a
    move-exception p1

    const-string p2, "isPackageRunning failed "

    .line 1387
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_53
    return v0
.end method

.method private isQCExceptionOnly(Ljava/lang/String;)Z
    .registers 4

    .line 1400
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isSkipInternetCheck()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_9

    const/4 p1, 0x2

    goto :goto_2d

    :cond_9
    const-string v0, "\"gogoinflight\""

    .line 1402
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "\"Carnival-WiFi\""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "\"orange\""

    .line 1403
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "\"ChinaNet\""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    goto :goto_2c

    :cond_2a
    move p1, v1

    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 p1, 0x3

    :goto_2d
    if-eq p1, v1, :cond_58

    .line 1408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isQCExceptionSummary:Ljava/lang/String;

    .line 1409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isQCExceptionOnly - reason #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->logd(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_58
    const-string p1, "None"

    .line 1412
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isQCExceptionSummary:Ljava/lang/String;

    const/4 p0, 0x0

    return p0
.end method

.method private isSimCheckEnabled()Z
    .registers 3

    .line 1445
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->DBG:Z

    if-eqz v0, :cond_19

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    const-string v0, "SimCheck.disable"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x1

    :goto_1a
    return p0
.end method

.method private isSkipInternetCheck()Z
    .registers 4

    .line 1418
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 1419
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_23

    .line 1425
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getSemWifiConfiguration(IZ)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object p0

    if-nez p0, :cond_20

    const-string p0, "WifiConnectivityMonitor"

    const-string v0, "isSkipInternetCheck - config == null"

    .line 1430
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1433
    :cond_20
    iget-boolean p0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    return p0

    :cond_23
    return v1
.end method

.method private isSupportEleDetection()Z
    .registers 8

    .line 3060
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->eleGetBcnCnt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    move v0, v3

    .line 3062
    :goto_c
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiChipsetVendorName:Ljava/lang/String;

    const-string v5, "WifiConnectivityMonitor"

    if-eqz v4, :cond_30

    const-string v6, "MTK"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 3063
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->eleGetBcnCnt()I

    move-result v4

    if-eq v4, v2, :cond_26

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->eleGetBcnCnt()I

    move-result v2

    if-nez v2, :cond_30

    .line 3065
    :cond_26
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mEleDebug:Z

    if-eqz v0, :cond_2f

    const-string v0, "MTK does not support Ele Detection"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    move v0, v3

    :cond_30
    if-eqz v0, :cond_3b

    .line 3068
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isPedometerSensorAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3b

    goto :goto_3c

    :cond_3b
    move v1, v3

    .line 3069
    :goto_3c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSupportEleDetection : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isTestCaptivePortalServerHttpsUrlSet()Z
    .registers 2

    const-string v0, "test_captive_portal_https_url"

    .line 5441
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getTestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5442
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isValidTestUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isUpdateLloByTxRetiresSupported()Z
    .registers 2

    .line 3056
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiChipsetVendorName:Ljava/lang/String;

    if-eqz p0, :cond_e

    const-string v0, "SLSI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private isValidState()Z
    .registers 3

    .line 903
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 904
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;

    if-eq v0, v1, :cond_1f

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidNonSwitchableState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;

    if-eq v0, v1, :cond_1f

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidSwitchableState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;

    if-eq v0, v1, :cond_1f

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidNoCheckState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNoCheckState;

    if-eq v0, v1, :cond_1f

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLevel1State:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;

    if-eq v0, v1, :cond_1f

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLevel2State:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;

    if-ne v0, p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    return p0
.end method

.method private static isValidTestUrl(Ljava/lang/String;)Z
    .registers 4

    .line 5466
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 5470
    :cond_8
    :try_start_8
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    const-string v0, "localhost"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_17

    return p0

    :catchall_17
    move-exception p0

    const-string v0, "WifiConnectivityMonitor"

    const-string v2, "Error parsing test URL"

    .line 5472
    invoke-static {v0, v2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private isVzwNetwork()Z
    .registers 2

    .line 5272
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "SalesCode"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "vzw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 3

    if-eqz p1, :cond_13

    .line 576
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->setScreenStatus(Z)V

    const p1, 0x21008

    .line 577
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    goto :goto_23

    .line 579
    :cond_13
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->setScreenStatus(Z)V

    const p1, 0x21009

    .line 580
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    :goto_23
    return-void
.end method

.method public static makeWifiConnectivityMonitor(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;
    .registers 5

    .line 597
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V

    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcm:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 599
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->start()V

    .line 600
    sget-object p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcm:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    return-object p0
.end method

.method private poorLinkDetected(Lcom/samsung/android/server/wifi/wcm/BssidStatistics;II)V
    .registers 6

    .line 3135
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3136
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->poorLinkDetected(II)Z

    .line 3137
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastPoorDetectedTime:J

    return-void
.end method

.method private qualifiedToHandover(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z
    .registers 4

    .line 2025
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->compareSsidAndSecurity(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p2

    if-eqz p2, :cond_2c

    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    .line 2026
    invoke-static {p2}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->is24GHz(Landroid/net/wifi/ScanResult;)Z

    move-result p2

    if-eqz p2, :cond_18

    iget p2, p1, Landroid/net/wifi/ScanResult;->level:I

    const/16 v0, -0x3a

    if-gt p2, v0, :cond_2a

    :cond_18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    .line 2027
    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->is5GHz(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    if-eqz p0, :cond_2c

    iget p0, p1, Landroid/net/wifi/ScanResult;->level:I

    const/16 p1, -0x3f

    if-le p0, p1, :cond_2c

    :cond_2a
    const/4 p0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    :goto_2d
    return p0
.end method

.method private qualifiedToHandoverCandidate(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z
    .registers 5

    .line 2016
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object p0

    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getSemWifiConfiguration(IZ)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object p0

    .line 2018
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq p1, v0, :cond_24

    iget-boolean p1, p2, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    if-eqz p1, :cond_24

    iget-boolean p1, p2, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    if-eqz p1, :cond_24

    if-eqz p0, :cond_24

    .line 2021
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal()Z

    move-result p0

    if-nez p0, :cond_24

    const/4 v1, 0x1

    :cond_24
    return v1
.end method

.method private qualifiedToRoam(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z
    .registers 5

    .line 2009
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->compareSsidAndSecurity(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p2

    if-eqz p2, :cond_42

    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    .line 2010
    invoke-static {p2}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->is24GHz(Landroid/net/wifi/ScanResult;)Z

    move-result p2

    const/16 v0, -0x46

    if-eqz p2, :cond_1a

    iget p2, p1, Landroid/net/wifi/ScanResult;->level:I

    const/16 v1, -0x40

    if-gt p2, v1, :cond_2a

    :cond_1a
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    .line 2011
    invoke-static {p2}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->is5GHz(Landroid/net/wifi/ScanResult;)Z

    move-result p2

    if-eqz p2, :cond_42

    iget p2, p1, Landroid/net/wifi/ScanResult;->level:I

    if-le p2, v0, :cond_42

    :cond_2a
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p2, :cond_42

    .line 2012
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p2

    if-ge p2, v0, :cond_42

    iget p1, p1, Landroid/net/wifi/ScanResult;->level:I

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p0

    add-int/lit8 p0, p0, 0x5

    if-le p1, p0, :cond_42

    const/4 p0, 0x1

    goto :goto_43

    :cond_42
    const/4 p0, 0x0

    :goto_43
    return p0
.end method

.method private registerForMptcpChange()V
    .registers 4

    .line 785
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$10;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$10;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/os/Handler;)V

    .line 794
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    const-string v2, "mptcp_value_internal"

    .line 795
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const/4 v2, 0x0

    .line 794
    invoke-virtual {v1, p0, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerForSettingsChanges()V
    .registers 6

    .line 724
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/os/Handler;)V

    .line 733
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    const-string v3, "wifi_watchdog_poor_network_test_enabled"

    .line 734
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    .line 733
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 736
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    const-string v4, "wifi_watchdog_poor_network_aggressive_mode_on"

    .line 737
    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 736
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 739
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    const-string v4, "mobile_data"

    .line 740
    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 739
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 742
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    const-string v4, "ultra_powersaving_mode"

    .line 743
    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 742
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 745
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    const-string v2, "data_roaming"

    .line 746
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 745
    invoke-virtual {v1, p0, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerForVPNChanges()V
    .registers 5

    .line 767
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->checkVPNSetting()V

    .line 769
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$9;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$9;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/os/Handler;)V

    .line 775
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    const-string v3, "always_on_vpn_app"

    .line 776
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    .line 775
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 777
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    const-string v2, "always_on_vpn_lockdown"

    .line 778
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 777
    invoke-virtual {v1, p0, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerForWatchdogToggle()V
    .registers 3

    .line 711
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$7;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$7;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/os/Handler;)V

    return-void
.end method

.method private reportIssue(ILandroid/os/Bundle;)V
    .registers 3

    .line 1221
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    if-eqz p0, :cond_7

    .line 1222
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->report(ILandroid/os/Bundle;)V

    :cond_7
    return-void
.end method

.method private requestInternetCheck(I)V
    .registers 3

    .line 979
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInvalidationFailHistory:Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    iget v0, v0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcStepTemp:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->requestInternetCheck(II)V

    return-void
.end method

.method private requestInternetCheck(II)V
    .registers 5

    .line 983
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsInRoamSession:Z

    const-string v1, "WifiConnectivityMonitor"

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsInDhcpSession:Z

    if-eqz v0, :cond_b

    goto :goto_20

    .line 987
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNetworkReplacementInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string p0, "Network replacement is in progress. Igore QC"

    .line 988
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19
    const v0, 0x21024

    .line 991
    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(III)V

    return-void

    :cond_20
    :goto_20
    const-string p0, "REPORT_NETWORK_CONNECTIVITY ignored In Roam Session"

    .line 984
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resetBigDataFeatureForSCNT()V
    .registers 3

    .line 5396
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSCNT:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->initialize()V

    .line 5397
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    const-string v1, "SSMA"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->clearFeature(Ljava/lang/String;)Z

    const-wide/16 v0, 0x0

    .line 5398
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLatestAlternativeNetworkSearchTime:J

    const/4 v0, -0x1

    .line 5399
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLatestAlternativeNetworkId:I

    return-void
.end method

.method private scanCompleted()V
    .registers 5

    .line 1934
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->checkDisabledNetworks()V

    .line 1937
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isConnectedState()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    if-eqz v0, :cond_2a

    .line 1938
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_2a

    .line 1940
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/util/ScanPool;->getLastScanResults()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->updateBssidQosMapOnScan(IILjava/util/List;)V

    .line 1945
    :cond_2a
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUserSelectionConfirmed:Z

    if-eqz v0, :cond_89

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isMultiNetwork()Z

    move-result v0

    if-nez v0, :cond_89

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsInRoamSession:Z

    if-nez v0, :cond_89

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsInDhcpSession:Z

    if-nez v0, :cond_89

    .line 1946
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLevel2State:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;

    const-string v2, "WifiConnectivityMonitor"

    const v3, 0x21139

    if-ne v0, v1, :cond_55

    const-string v0, "checkAlternativeNetworks - mLevel2State"

    .line 1947
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V

    .line 1949
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    goto :goto_89

    .line 1950
    :cond_55
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInvalidState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;

    if-eq v0, v1, :cond_65

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInvalidBlockState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidBlockState;

    if-ne v0, v1, :cond_89

    :cond_65
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6d

    const/4 v1, 0x3

    if-ne v0, v1, :cond_89

    .line 1952
    :cond_6d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNetworkCallbackController:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->isCaptivePortal()Z

    move-result v0

    if-nez v0, :cond_81

    const-string v0, "checkAlternativeNetworks - InvalidState && SNS ON"

    .line 1953
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V

    .line 1955
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    goto :goto_89

    .line 1957
    :cond_81
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V

    const-wide/16 v0, 0xbb8

    .line 1958
    invoke-virtual {p0, v3, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    :cond_89
    :goto_89
    return-void
.end method

.method private sendBigDataFeatureForSCNT()V
    .registers 4

    const-string v0, "WifiConnectivityMonitor"

    const-string v1, "Wcm Big Data SCNT logging"

    .line 5421
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5422
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    const-string v2, "SSMA"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureAllValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 5423
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->insertLog(Ljava/lang/String;J)V

    goto :goto_1e

    :cond_19
    const-string p0, "error on Logging Big Data for SCNT"

    .line 5425
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    return-void
.end method

.method private sendBigDataFeatureForSSVI()V
    .registers 4

    const-string v0, "WifiConnectivityMonitor"

    const-string v1, "Wcm Big Data SSVI logging"

    .line 5383
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5384
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    const-string v2, "SSVI"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureAllValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 5385
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->insertLog(Ljava/lang/String;J)V

    goto :goto_1e

    :cond_19
    const-string p0, "error on Logging Big Data for SSVI"

    .line 5387
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    return-void
.end method

.method private sendBroadCastWCMHideIcon(Z)V
    .registers 6

    const-string v0, "WifiConnectivityMonitor"

    .line 1017
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.WIFI_ICON_HIDE_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "visible"

    .line 1018
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1020
    :try_start_e
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1021
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sent WIFI_CONNECTIVITY_HIDE_ICON_ACTION isVisible : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_27} :catch_28

    goto :goto_40

    .line 1023
    :catch_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send broadcast WCM Hide wifi icon result - action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :goto_40
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setWifiHideIconHistory(I)V

    return-void
.end method

.method private sendBroadcastWCMStatusChanged()V
    .registers 4

    const-string v0, "WifiConnectivityMonitor"

    .line 1029
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.WIFI_WCM_STATE_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1031
    :try_start_9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p0, "sent WIFI_WCM_STATE_CHANGED_ACTION"

    .line 1032
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_13} :catch_14

    goto :goto_2c

    .line 1034
    :catch_14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send broadcast WCM status changed - action:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c
    return-void
.end method

.method private sendBroadcastWCMTestResult(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 995
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendBroadcastWCMTestResult(ZZ)V

    return-void
.end method

.method private sendBroadcastWCMTestResult(ZZ)V
    .registers 9

    const-string v0, "Send initial result to System UI - "

    const-string v1, "WifiConnectivityMonitor"

    const/4 v2, 0x1

    if-eqz p2, :cond_d

    if-eqz p1, :cond_b

    move v3, v2

    goto :goto_e

    :cond_b
    const/4 v3, 0x0

    goto :goto_e

    :cond_d
    const/4 v3, -0x1

    .line 999
    :goto_e
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.android.WIFI_CONNECTIVITY_ACTION"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "valid"

    .line 1000
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1002
    :try_start_1a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1003
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sent WIFI_CONNECTIVITY_TEST_REPORT_ACTION valid = "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " forced = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_3b} :catch_47
    .catchall {:try_start_1a .. :try_end_3b} :catchall_45

    .line 1007
    sget-boolean p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInitialResultSentToSystemUi:Z

    if-nez p0, :cond_77

    .line 1008
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_68

    :catchall_45
    move-exception p0

    goto :goto_78

    .line 1005
    :catch_47
    :try_start_47
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Send broadcast WCM initial test result - action:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_47 .. :try_end_5f} :catchall_45

    .line 1007
    sget-boolean p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInitialResultSentToSystemUi:Z

    if-nez p0, :cond_77

    .line 1008
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_68
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    sput-boolean v2, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInitialResultSentToSystemUi:Z

    :cond_77
    return-void

    .line 1007
    :goto_78
    sget-boolean p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInitialResultSentToSystemUi:Z

    if-nez p1, :cond_90

    .line 1008
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    sput-boolean v2, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInitialResultSentToSystemUi:Z

    .line 1011
    :cond_90
    throw p0
.end method

.method private sendConfigurationChanged()V
    .registers 3

    .line 1039
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.WIFI_WCM_CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1041
    :try_start_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_27

    .line 1043
    :catch_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send broadcast WCM configuration changed - action:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiConnectivityMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    return-void
.end method

.method private sendMessageWithNetwork(ILandroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 7

    .line 1048
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1049
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "Network"

    .line 1050
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "NC"

    .line 1051
    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1052
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1053
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1054
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method private setAlternativeNetworkTargetRssi(I)V
    .registers 4

    .line 2055
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getSemWifiConfiguration(IZ)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object p1

    if-nez p1, :cond_e

    return-void

    .line 2059
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    const/16 v1, -0x46

    if-le v0, v1, :cond_23

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    goto :goto_25

    :cond_23
    const/16 v0, -0x3f

    :goto_25
    iput v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    .line 2061
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string v0, "sem_wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 2062
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    return-void
.end method

.method private setCurrentMode(I)V
    .registers 7

    .line 1139
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentMode:I

    .line 1140
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNetworkStatsAnalyzer:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->setCurrentWCMMode(I)V

    .line 1141
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentMode:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_11

    if-ne p1, v2, :cond_3c

    .line 1142
    :cond_11
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isValidState()Z

    move-result p1

    if-eqz p1, :cond_3c

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object p1

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLevel2State:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;

    if-eq p1, v3, :cond_3c

    const-wide/16 v3, 0x1f4

    .line 1143
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSamplingIntervalMS:J

    .line 1144
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isMonitoring()Z

    move-result p1

    if-eqz p1, :cond_2e

    goto :goto_36

    .line 1146
    :cond_2e
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIwcCurrentQai:I

    if-ne p1, v2, :cond_36

    .line 1147
    sget-wide v3, Lcom/samsung/android/server/wifi/wcm/Constant;->LINK_SAMPLING_INTERVAL_MS:J

    iput-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSamplingIntervalMS:J

    .line 1149
    :cond_36
    :goto_36
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mScoreQC:Lcom/samsung/android/server/wifi/wcm/ScoreQC;

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->skipScoreQC(Z)V

    goto :goto_45

    .line 1151
    :cond_3c
    sget-wide v3, Lcom/samsung/android/server/wifi/wcm/Constant;->LINK_SAMPLING_INTERVAL_MS:J

    iput-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSamplingIntervalMS:J

    .line 1152
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mScoreQC:Lcom/samsung/android/server/wifi/wcm/ScoreQC;

    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->skipScoreQC(Z)V

    .line 1155
    :goto_45
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    if-eqz p1, :cond_52

    .line 1156
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentMode:I

    if-ne p0, v2, :cond_4e

    goto :goto_4f

    :cond_4e
    move v0, v1

    :goto_4f
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->setAggTxBadDetection(Z)V

    :cond_52
    return-void
.end method

.method private setLinkDetectMode(I)V
    .registers 4

    .line 865
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentMode:I

    if-nez v0, :cond_5

    return-void

    .line 868
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLinkDetectMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectivityMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    sget v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkDetectMode:I

    if-eq v0, p1, :cond_38

    if-nez p1, :cond_28

    const v0, 0x210e7

    .line 871
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    goto :goto_38

    :cond_28
    const/4 v0, 0x1

    if-ne p1, v0, :cond_38

    const/4 v0, 0x0

    .line 873
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    .line 874
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLossSampleCount:I

    .line 875
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mOvercomingCount:I

    const v0, 0x210e6

    .line 876
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    .line 879
    :cond_38
    :goto_38
    sput p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkDetectMode:I

    return-void
.end method

.method private setNoInternetAccessExpected(IZ)V
    .registers 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1f

    .line 2276
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getSemWifiConfiguration(IZ)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 2278
    iput-boolean p2, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    .line 2279
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string p2, "sem_wifi"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 2280
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    :cond_1f
    return-void
.end method

.method private declared-synchronized setQcFailHistory(Lcom/samsung/android/server/wifi/wcm/QcFailHistory;)V
    .registers 11

    monitor-enter p0

    .line 1750
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1751
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 1753
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->bSetQcResult:Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1a1

    if-eqz v2, :cond_12

    monitor-exit p0

    return-void

    :cond_12
    if-nez v1, :cond_16

    .line 1755
    monitor-exit p0

    return-void

    .line 1757
    :cond_16
    :try_start_16
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mQcHistoryHead:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_20

    add-int/2addr v1, v3

    .line 1758
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mQcHistoryHead:I

    goto :goto_24

    .line 1760
    :cond_20
    rem-int/lit8 v1, v1, 0x1e

    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mQcHistoryHead:I

    .line 1763
    :goto_24
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentTimeSimpleDateFormat()Ljava/lang/String;

    move-result-object v1
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_1a1

    .line 1766
    :try_start_28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    .line 1767
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", [s]"

    .line 1768
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcStep:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", [t]"

    .line 1769
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcTrigger:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", [e]"

    .line 1770
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->error:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", [i]"

    .line 1771
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInvalidationRssi:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    .line 1772
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    .line 1773
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    .line 1774
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    iget v2, v2, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    .line 1775
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkDetectionSummary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    .line 1776
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUIEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkAvoidanceSummary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1777
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isAggressiveModeSupported()Z

    move-result v2

    if-eqz v2, :cond_cd

    const-string v2, ", "

    .line 1778
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mAggressiveModeEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1781
    :cond_cd
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 1782
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    .line 1783
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    const-string v6, ", "

    .line 1785
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1787
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    .line 1788
    :goto_ee
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_102

    .line 1789
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_ee

    :cond_102
    const-string v2, ", "

    .line 1791
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1793
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x10

    if-le v2, v5, :cond_157

    .line 1794
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1795
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v6, 0xc

    .line 1796
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v6, 0xd

    .line 1797
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v6, 0xf

    .line 1798
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1799
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ", "

    .line 1800
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_157
    const-string v2, ", "

    .line 1802
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->line:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1803
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidSwitchableState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;

    if-ne p1, v2, :cond_180

    const-string p1, ", [ns]"

    .line 1804
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNetworkStatsAnalyzer:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->getNetworkStatHistory()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_177
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_177} :catch_178
    .catchall {:try_start_28 .. :try_end_177} :catchall_1a1

    goto :goto_180

    .line 1807
    :catch_178
    :try_start_178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ex"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_180
    :goto_180
    const-string p1, "WifiConnectivityMonitor"

    .line 1810
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mQcDumpHistory:[Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mQcHistoryHead:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    .line 1813
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->bSetQcResult:Z

    .line 1814
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mQcHistoryHead:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mQcHistoryHead:I

    .line 1815
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mQcHistoryTotal:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mQcHistoryTotal:I
    :try_end_19f
    .catchall {:try_start_178 .. :try_end_19f} :catchall_1a1

    .line 1816
    monitor-exit p0

    return-void

    :catchall_1a1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setResourceOverlayForChina(Z)V
    .registers 5

    const-string v0, "WifiConnectivityMonitor"

    if-eqz p1, :cond_2c

    .line 5324
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enable RRO: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->SAMSUNG_WIFI_CHINA_URL_OVERLAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5325
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mOverlayManager:Landroid/content/om/IOverlayManager;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->SAMSUNG_WIFI_CHINA_URL_OVERLAY:Ljava/lang/String;

    const/4 v2, 0x1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mOverlayUserID:I

    invoke-interface {p1, v1, v2, p0}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_24} :catch_25

    goto :goto_53

    :catch_25
    move-exception p0

    const-string p1, "Failed to enable RRO "

    .line 5327
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_53

    .line 5331
    :cond_2c
    :try_start_2c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disable RRO: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->SAMSUNG_WIFI_CHINA_URL_OVERLAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5332
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mOverlayManager:Landroid/content/om/IOverlayManager;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->SAMSUNG_WIFI_CHINA_URL_OVERLAY:Ljava/lang/String;

    const/4 v2, 0x0

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mOverlayUserID:I

    invoke-interface {p1, v1, v2, p0}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_4c} :catch_4d

    goto :goto_53

    :catch_4d
    move-exception p0

    const-string p1, "Failed to disable RRO "

    .line 5334
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_53
    return-void
.end method

.method private setRoamAndDhcp(ZZ)V
    .registers 4

    .line 3089
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsInRoamSession:Z

    .line 3090
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsInDhcpSession:Z

    .line 3091
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNetworkStatsAnalyzer:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    if-eqz v0, :cond_b

    .line 3092
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->setRoamAndDhcp(ZZ)V

    .line 3094
    :cond_b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiEleStateTracker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    if-eqz p0, :cond_12

    .line 3095
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->setRoam(Z)V

    :cond_12
    return-void
.end method

.method private setRssiFetchHistory(IIJIIIILjava/lang/String;)V
    .registers 19

    move-object v0, p0

    const-string v1, ", "

    .line 1858
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1860
    iget v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mRssiFetchHistoryHead:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_12

    add-int/lit8 v3, v3, 0x1

    .line 1861
    iput v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mRssiFetchHistoryHead:I

    goto :goto_16

    .line 1863
    :cond_12
    rem-int/lit16 v3, v3, 0x1388

    iput v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mRssiFetchHistoryHead:I

    .line 1866
    :goto_16
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentTimeSimpleDateFormat()Ljava/lang/String;

    move-result-object v3

    .line 1871
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiChipsetVendorName:Ljava/lang/String;

    if-eqz v5, :cond_4c

    const-string v6, "BROADCOM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 1872
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    const-string v6, "wlan0"

    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->semGetLqcmReport(Ljava/lang/String;)I

    move-result v5

    .line 1873
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-virtual {v7, v6}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->semGetSnr(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0xff

    if-eq v5, v4, :cond_3e

    const/high16 v8, 0xff0000

    and-int/2addr v8, v5

    shr-int/lit8 v8, v8, 0x10

    goto :goto_3f

    :cond_3e
    move v8, v7

    :goto_3f
    if-eq v5, v4, :cond_48

    const v4, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x8

    goto :goto_49

    :cond_48
    move v4, v7

    :goto_49
    move v5, v4

    move v4, v8

    goto :goto_4e

    :cond_4c
    move v5, v4

    move v6, v5

    .line 1879
    :goto_4e
    :try_start_4e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    .line 1880
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1881
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1882
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v7, p3

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1883
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, p5

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1884
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, p6

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1885
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1886
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-ltz v4, :cond_9a

    .line 1888
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1889
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1890
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_9a
    const-string v1, "\t\t"

    .line 1892
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p9

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a4
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_a4} :catch_a5

    goto :goto_ad

    .line 1894
    :catch_a5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ex"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1897
    :goto_ad
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mRssiFetchHistory:[Ljava/lang/String;

    iget v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mRssiFetchHistoryHead:I

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1898
    iget v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mRssiFetchHistoryHead:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mRssiFetchHistoryHead:I

    .line 1899
    iget v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mRssiFetchHistoryTotal:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mRssiFetchHistoryTotal:I

    return-void
.end method

.method private setRssiTargetHistoryList([Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    .line 1841
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentTimeSimpleDateFormat()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mVolumeWeightedTime:Ljava/lang/String;

    .line 1843
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1844
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#.#"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_18
    const/16 v3, 0x4c

    if-ge v2, v3, :cond_55

    .line 1846
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1848
    :try_start_21
    aget-object v4, p1, v2

    iget-wide v4, v4, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mValue:D

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    .line 1849
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v2

    iget-wide v4, v4, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mVolume:D

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3f
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_3f} :catch_40

    goto :goto_4a

    .line 1851
    :catch_40
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mVolumeWeightedTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1853
    :goto_4a
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mVolumeWeightedHistory:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_55
    return-void
.end method

.method private setTrafficPollHistory(JJJJ)V
    .registers 13

    const-string v0, ", "

    .line 1903
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1905
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTrafficPollHistoryHead:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_11

    add-int/lit8 v2, v2, 0x1

    .line 1906
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTrafficPollHistoryHead:I

    goto :goto_15

    .line 1908
    :cond_11
    rem-int/lit16 v2, v2, 0xbb8

    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTrafficPollHistoryHead:I

    .line 1911
    :goto_15
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentTimeSimpleDateFormat()Ljava/lang/String;

    move-result-object v2

    .line 1914
    :try_start_19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    .line 1915
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUsageStatsUid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1916
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1917
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1918
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1919
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1920
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUsagePackageChanged:Z

    if-eqz p1, :cond_56

    .line 1921
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUsageStatsPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 1922
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUsagePackageChanged:Z
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_4d} :catch_4e

    goto :goto_56

    .line 1925
    :catch_4e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ex"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1928
    :cond_56
    :goto_56
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTrafficPollHistory:[Ljava/lang/String;

    iget p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTrafficPollHistoryHead:I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    .line 1929
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTrafficPollHistoryHead:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTrafficPollHistoryHead:I

    .line 1930
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTrafficPollHistoryTotal:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTrafficPollHistoryTotal:I

    return-void
.end method

.method private setUsePrivateDns(Lcom/samsung/android/server/wifi/wcm/BssidStatistics;Z)V
    .registers 3

    .line 3176
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->setUsePrivateDns(Z)V

    return-void
.end method

.method private setValidationBlock(Z)V
    .registers 6

    .line 2471
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isMultiNetwork()Z

    move-result v0

    if-nez v0, :cond_8a

    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentMode:I

    if-eqz v0, :cond_8a

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    goto/16 :goto_8a

    .line 2472
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNetwork:Landroid/net/Network;

    const-string v2, "validationBlock : "

    const-string v3, "WifiConnectivityMonitor"

    if-nez v0, :cond_2f

    .line 2473
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " - mNetwork null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2476
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInvalidState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;

    if-ne v0, v2, :cond_51

    if-eqz p1, :cond_51

    .line 2479
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInvalidBlockState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidBlockState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_8a

    .line 2480
    :cond_51
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInvalidBlockState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidBlockState;

    if-ne v0, v2, :cond_8a

    if-nez p1, :cond_8a

    const/4 p1, 0x4

    const/16 v0, 0x12

    .line 2481
    invoke-virtual {p0, v1, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->reportNetworkConnectivityToNM(ZII)Z

    .line 2482
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCm()Landroid/net/ConnectivityManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    if-eqz p1, :cond_85

    .line 2483
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCm()Landroid/net/ConnectivityManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_85

    .line 2484
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mValidState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void

    .line 2488
    :cond_85
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInvalidState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_8a
    :goto_8a
    return-void
.end method

.method private setWifiHideIconHistory(I)V
    .registers 5

    .line 1820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1822
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mHideIconHistoryHead:I

    rem-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mHideIconHistoryHead:I

    .line 1824
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentTimeSimpleDateFormat()Ljava/lang/String;

    move-result-object v1

    .line 1827
    :try_start_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    .line 1828
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_1a} :catch_1b

    goto :goto_23

    .line 1830
    :catch_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ex"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1833
    :goto_23
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mHideIconHistory:[Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mHideIconHistoryHead:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    .line 1834
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mHideIconHistoryHead:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mHideIconHistoryHead:I

    .line 1835
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mHideIconHistoryTotal:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mHideIconHistoryTotal:I

    return-void
.end method

.method private setWifiScoreAndIcon(ZZZ)V
    .registers 5

    const/4 v0, 0x0

    .line 1063
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setWifiScoreAndIcon(ZZZZ)V

    return-void
.end method

.method private setWifiScoreAndIcon(ZZZZ)V
    .registers 6

    .line 1058
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiScoreMediator:Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->setWifiNetworkEnabled(Z)V

    .line 1059
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendBroadcastWCMTestResult(ZZ)V

    .line 1060
    invoke-direct {p0, p4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->changeWifiIcon(Z)V

    return-void
.end method

.method private setupNetworkReceiver()V
    .registers 3

    .line 619
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 685
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 686
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.intent.action.DATAUSAGE_REACH_TO_LIMIT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 693
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->SHOW_DATA_SELECT_POPUP_ON_BOOTUP:Z

    if-eqz v0, :cond_48

    .line 694
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_DATA_SELECTION_POPUP_PRESSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 696
    :cond_48
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.ims.action.IMS_REGISTRATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.server.wifi.WCM_SCAN_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 701
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->DBG:Z

    if-eqz v0, :cond_76

    .line 702
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.WLAN_ADVANCED_DEBUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 704
    :cond_76
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private startPacketTracker(Landroid/net/NetworkInfo;)V
    .registers 4

    .line 2912
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmPacketTrackerForWlan0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    if-eqz p1, :cond_5

    return-void

    .line 2913
    :cond_5
    sget-object p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sPktLogsWlan:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    const-string v1, "wlan0"

    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2914
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/LocalLog;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmConnectivityPacketLogForWlan0:Landroid/util/LocalLog;

    .line 2915
    invoke-static {v1}, Lcom/android/net/module/util/InterfaceParams;->getByName(Ljava/lang/String;)Lcom/android/net/module/util/InterfaceParams;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmConnectivityPacketLogForWlan0:Landroid/util/LocalLog;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->createPacketTracker(Lcom/android/net/module/util/InterfaceParams;Landroid/util/LocalLog;)Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmPacketTrackerForWlan0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    if-eqz p1, :cond_4b

    const-string p1, "WifiConnectivityMonitor"

    const-string v0, "mWcmPacketTrackerForWlan0 start"

    .line 2917
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2919
    :try_start_30
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmPacketTrackerForWlan0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->start(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/NullPointerException; {:try_start_30 .. :try_end_35} :catch_36

    goto :goto_4b

    :catch_36
    move-exception p0

    .line 2921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to start tracking interface : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    :goto_4b
    return-void
.end method

.method private startScan()V
    .registers 1

    .line 2466
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->startScan()Z

    return-void
.end method

.method private stopPacketTracker()V
    .registers 3

    .line 2927
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmPacketTrackerForWlan0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "WifiConnectivityMonitor"

    const-string v1, "mWcmPacketTrackerForWlan0 stop"

    .line 2929
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2930
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmPacketTrackerForWlan0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->stop()V

    const/4 v0, 0x0

    .line 2931
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmPacketTrackerForWlan0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    return-void
.end method

.method private syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;
    .registers 1

    .line 615
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    return-object p0
.end method

.method private updateCountryIsoCode()V
    .registers 6

    .line 1529
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    .line 1531
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_c

    .line 1532
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTelephonyCountryIso:Ljava/lang/String;

    .line 1536
    :cond_c
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTelephonyCountryIso:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    .line 1537
    sget-boolean v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->DBG:Z

    const-string v2, "WifiConnectivityMonitor"

    if-eqz v1, :cond_2c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCountryIsoCode() via TelephonyManager : mCountryIso: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    :cond_2c
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    if-eqz v3, :cond_37

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_53

    .line 1539
    :cond_37
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCscCountryIso:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    if-eqz v1, :cond_53

    .line 1540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCountryIsoCode() via Property(CSC) : mCountryIso: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    :cond_53
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->WIFI_ONLY:Z

    if-nez v3, :cond_58

    goto :goto_7c

    :cond_58
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCountryCodeFromScanResult:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isChineseIso(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 1543
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCountryCodeFromScanResult:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    if-eqz v1, :cond_7c

    .line 1544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCountryIsoCode() via ScanResult : mCountryIso: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    :cond_7c
    :goto_7c
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    if-eqz v1, :cond_10b

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10b

    .line 1548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCountryIso is changed from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1550
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentTimeSimpleDateFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "cn"

    .line 1553
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_de

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 1554
    :cond_de
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 1555
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setResourceOverlayForChina(Z)V

    .line 1556
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - enableCnRro: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1558
    :cond_fb
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->summaryCountryCodeUpdates:[Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->incrCountryCodeUpdate:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->incrCountryCodeUpdate:I

    rem-int/lit8 v2, v2, 0xa

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    :cond_10b
    return-void
.end method

.method private updateCurrentBssid(Ljava/lang/String;I)V
    .registers 7

    .line 932
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->DBG:Z

    if-eqz v0, :cond_25

    const-string v0, "WifiConnectivityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update current BSSID to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_19

    .line 933
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLogUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-virtual {v2, p1}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1b

    :cond_19
    const-string v2, "null"

    :goto_1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 932
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_25
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssidLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_40

    .line 938
    :try_start_2a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mEmptyBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    const-string p1, "WifiConnectivityMonitor"

    const-string p2, "BSSID changed"

    .line 939
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNetworkStatsAnalyzer:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    if-eqz p1, :cond_3e

    .line 941
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->setCurrentBssidStatistics(Lcom/samsung/android/server/wifi/wcm/BssidStatistics;)V

    .line 942
    :cond_3e
    monitor-exit v0

    return-void

    .line 944
    :cond_40
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isConnectedState()Z

    move-result v1

    if-nez v1, :cond_48

    const/4 v1, 0x0

    goto :goto_51

    :cond_48
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isValidState()Z

    move-result v1

    if-eqz v1, :cond_50

    const/4 v1, 0x1

    goto :goto_51

    :cond_50
    const/4 v1, 0x2

    .line 946
    :goto_51
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    if-eqz v2, :cond_66

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->getBssid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 947
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->setCurrentConnectionState(I)V

    .line 948
    monitor-exit v0

    return-void

    .line 952
    :cond_66
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mBssidCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    if-nez v2, :cond_9d

    .line 954
    new-instance v2, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1, p2}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    .line 955
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->setCurrentConnectionState(I)V

    .line 956
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {p2, v1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->setFrameworkFacade(Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    .line 957
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$11;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    invoke-virtual {p2, v1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->setBssidStatisticsCallBack(Lcom/samsung/android/server/wifi/wcm/BssidStatistics$IBssidStatisticsCallBack;)V

    .line 963
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mOpenNetworkQosCallbackList:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->registerOpenNetworkQosCallback(Ljava/util/ArrayList;)V

    .line 964
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mBssidCache:Landroid/util/LruCache;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    invoke-virtual {p2, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    :cond_9d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->initOnConnect()V

    .line 968
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->updateOpenNetworkQosScoreSummary()V

    const-string p1, "WifiConnectivityMonitor"

    const-string p2, "BSSID changed"

    .line 972
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNetworkStatsAnalyzer:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    if-eqz p1, :cond_b7

    .line 974
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->setCurrentBssidStatistics(Lcom/samsung/android/server/wifi/wcm/BssidStatistics;)V

    .line 975
    :cond_b7
    monitor-exit v0

    return-void

    :catchall_b9
    move-exception p0

    monitor-exit v0
    :try_end_bb
    .catchall {:try_start_2a .. :try_end_bb} :catchall_b9

    throw p0
.end method

.method private updateDisableReason(Landroid/net/wifi/WifiConfiguration;I)Z
    .registers 8

    const/4 v0, 0x0

    const/16 v1, 0xc

    if-ge p2, v1, :cond_7f

    if-gtz p2, :cond_9

    goto/16 :goto_7f

    .line 2172
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update Disable Network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiConnectivityMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    :try_start_29
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->disableNetwork(I)Z

    move-result v1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_31} :catch_32

    goto :goto_48

    :catch_32
    move-exception v1

    .line 2177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to disable the network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 2181
    :goto_48
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object v2

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getSemWifiConfiguration(IZ)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object p1

    .line 2182
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string v2, "sem_wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz p1, :cond_7e

    if-eqz p0, :cond_7e

    .line 2184
    iput p2, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 2185
    iput-boolean v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    const/4 v0, 0x6

    if-ne p2, v0, :cond_71

    .line 2187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    goto :goto_7b

    :cond_71
    const/16 v0, 0x9

    if-ne p2, v0, :cond_7b

    .line 2189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    .line 2190
    :cond_7b
    :goto_7b
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    :cond_7e
    return v1

    :cond_7f
    :goto_7f
    return v0
.end method

.method private updateLinkProperties(Landroid/net/LinkProperties;)V
    .registers 6

    .line 1449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Link configuration changed for netId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1450
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/net/Network;->getNetId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_19

    :cond_17
    const-string v1, ""

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectivityMonitor"

    .line 1449
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_38

    :cond_36
    move v0, v1

    goto :goto_39

    :cond_38
    :goto_38
    move v0, v2

    :goto_39
    if-eqz p1, :cond_45

    .line 1454
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_46

    :cond_45
    move v1, v2

    .line 1455
    :cond_46
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isConnectedState()Z

    move-result v2

    if-eqz v2, :cond_5f

    if-nez v0, :cond_56

    if-eqz v1, :cond_56

    const-string v0, "start"

    .line 1457
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->notifyDhcpSession(Ljava/lang/String;)V

    goto :goto_5f

    :cond_56
    if-eqz v0, :cond_5f

    if-nez v1, :cond_5f

    const-string v0, "complete"

    .line 1459
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->notifyDhcpSession(Ljava/lang/String;)V

    .line 1464
    :cond_5f
    :goto_5f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    .line 1465
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    .line 1466
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNetworkStatsAnalyzer:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->updateLinkProperties(Landroid/net/LinkProperties;)V

    .line 1468
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isConnectedState()Z

    move-result p1

    if-eqz p1, :cond_8e

    .line 1469
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->detectIpv6ProvisioningFailure(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result p1

    if-eqz p1, :cond_79

    .line 1470
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->notifyProvisioningFail()V

    .line 1473
    :cond_79
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object p1

    if-eqz p1, :cond_8e

    .line 1474
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmPacketTrackerForWlan0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    if-eqz v0, :cond_8e

    .line 1475
    iget p1, p1, Landroid/net/DhcpInfo;->gateway:I

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->intToIp(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->updateGateway(Ljava/lang/String;)V

    :cond_8e
    return-void
.end method

.method private updateLloCount(IIDD)V
    .registers 22

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    .line 5751
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNetworkStatsAnalyzer:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->getStayingPoorRssi()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_15

    const/4 v1, 0x3

    .line 5752
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    goto/16 :goto_298

    .line 5753
    :cond_15
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNetworkStatsAnalyzer:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->getAggGoodStateNow()Z

    move-result v5

    const/4 v7, 0x0

    const-string v8, "LLO="

    if-nez v5, :cond_275

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 5754
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v5

    if-nez v5, :cond_30

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->is6GHz()Z

    move-result v5

    if-eqz v5, :cond_34

    :cond_30
    const/16 v5, -0x40

    if-gt v1, v5, :cond_275

    :cond_34
    const/16 v5, -0x37

    if-le v1, v5, :cond_3a

    goto/16 :goto_275

    .line 5759
    :cond_3a
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    iget v5, v5, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastGoodRxRssi:I

    const-string v9, " - loss begin occurring  "

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    if-gez v5, :cond_a3

    const/16 v13, -0x4e

    if-ge v5, v13, :cond_4f

    .line 5760
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isUpdateLloByTxRetiresSupported()Z

    move-result v5

    if-nez v5, :cond_a3

    :cond_4f
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    iget v5, v5, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastGoodRxRssi:I

    if-gt v5, v1, :cond_a3

    .line 5762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " - beyond Last good rssi  "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    if-lez v2, :cond_9b

    .line 5764
    iget v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    if-nez v1, :cond_95

    .line 5765
    iput v12, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    .line 5766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    .line 5768
    :cond_95
    iput v7, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLossHasGone:I

    .line 5769
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPreviousLoss:D

    goto/16 :goto_298

    .line 5771
    :cond_9b
    iput v7, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    .line 5772
    iput v7, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLossHasGone:I

    .line 5773
    iput-wide v10, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPreviousLoss:D

    goto/16 :goto_298

    :cond_a3
    const/16 v5, 0x1e

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    if-ge v2, v5, :cond_1ea

    cmpl-double v5, v3, v13

    if-ltz v5, :cond_b1

    if-le v2, v12, :cond_b1

    goto/16 :goto_1ea

    :cond_b1
    const-wide v13, 0x3fb999999999999aL    # 0.1

    if-le v2, v6, :cond_e0

    cmpl-double v5, v3, v13

    if-ltz v5, :cond_e0

    .line 5786
    iget v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    .line 5787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " - (dBad > 4) && (loss >= 0.1)  "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    goto/16 :goto_23d

    :cond_e0
    const/16 v5, -0x41

    if-ge v1, v5, :cond_118

    .line 5788
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v1

    if-eqz v1, :cond_118

    if-gt v2, v6, :cond_f4

    cmpl-double v1, v3, v13

    if-ltz v1, :cond_118

    if-le v2, v12, :cond_118

    .line 5790
    :cond_f4
    iget v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    .line 5791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " - (rssi < -65) && (is24GHz()) && (dBad > 4 ||(loss >= 0.1 && dBad > 1))  "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    goto/16 :goto_23d

    .line 5793
    :cond_118
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    const/4 v5, 0x6

    if-gt v1, v5, :cond_149

    cmpl-double v1, v3, v13

    if-ltz v1, :cond_149

    .line 5794
    iget v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    .line 5795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " - (mWifiInfo.getLinkSpeed() <= 6) && (loss >= 0.1)  "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    goto/16 :goto_23d

    .line 5797
    :cond_149
    iget v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLossHasGone:I

    if-nez v1, :cond_17d

    iget-wide v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPreviousLoss:D

    cmpl-double v1, v3, v5

    if-ltz v1, :cond_17d

    cmpl-double v1, v5, v13

    if-ltz v1, :cond_17d

    if-le v2, v12, :cond_17d

    .line 5799
    iget v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    .line 5800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " - loss increasing  "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    goto/16 :goto_23d

    :cond_17d
    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    cmpl-double v1, p5, v5

    if-lez v1, :cond_1a7

    .line 5802
    iget v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    .line 5803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " - txRatio > 5.0 "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    goto/16 :goto_23d

    :cond_1a7
    if-lez v2, :cond_23d

    .line 5805
    iget v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    if-nez v1, :cond_1cc

    add-int/2addr v1, v12

    .line 5806
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    .line 5807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    goto :goto_23d

    .line 5809
    :cond_1cc
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " - loss still can be seen, keep the value!  "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    goto :goto_23d

    .line 5777
    :cond_1ea
    :goto_1ea
    iget v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    .line 5778
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " - (dBad >= 30) || (loss >= 0.5 && dBad > 1)  "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    cmpl-double v1, v3, v13

    if-ltz v1, :cond_23d

    const/4 v1, 0x5

    if-lt v2, v1, :cond_23d

    .line 5780
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v1

    if-eqz v1, :cond_23d

    .line 5781
    iget v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    .line 5782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " - (loss >= 0.5) && (dBad >= 5) && (is24GHz())  "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    :cond_23d
    :goto_23d
    if-nez v2, :cond_270

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    cmpg-double v1, p5, v1

    if-gtz v1, :cond_270

    .line 5817
    iget v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLossHasGone:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLossHasGone:I

    if-le v1, v12, :cond_298

    .line 5818
    iput v7, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    .line 5819
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - loss has gone  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    .line 5820
    iput v7, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLossHasGone:I

    .line 5821
    iput-wide v10, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPreviousLoss:D

    goto :goto_298

    .line 5824
    :cond_270
    iput v7, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLossHasGone:I

    .line 5825
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPreviousLoss:D

    goto :goto_298

    .line 5755
    :cond_275
    :goto_275
    iget v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    if-lez v1, :cond_296

    .line 5756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "->0 - loss has gone, good state now  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->l2Log:Ljava/lang/String;

    .line 5758
    :cond_296
    iput v7, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkLossOccurred:I

    :cond_298
    :goto_298
    return-void
.end method

.method private updateNetworkAvoidBadWifiSetting()V
    .registers 8

    .line 805
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentMode:I

    const/4 v1, 0x3

    const-string v2, "1"

    const/4 v3, 0x2

    if-eq v0, v3, :cond_e

    if-ne v0, v1, :cond_b

    goto :goto_e

    :cond_b
    const-string v0, "0"

    goto :goto_f

    :cond_e
    :goto_e
    move-object v0, v2

    .line 808
    :goto_f
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string v6, "network_avoid_bad_wifi"

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getStringSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 810
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v4, :cond_2e

    if-nez v2, :cond_27

    .line 811
    iget v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentMode:I

    if-eq v4, v3, :cond_2e

    if-eq v4, v1, :cond_2e

    :cond_27
    if-eqz v2, :cond_35

    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_35

    .line 814
    :cond_2e
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v6, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setStringSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_35
    return-void
.end method

.method private updatePoorNetworkParameters()V
    .registers 13

    .line 1615
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUIEnabled:Z

    .line 1616
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getSimState()I

    move-result v1

    .line 1618
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "wifi_watchdog_poor_network_test_enabled"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_16

    move v2, v3

    goto :goto_17

    :cond_16
    move v2, v5

    :goto_17
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUIEnabled:Z

    .line 1621
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isAggressiveModeSupported()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1622
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-virtual {v2, v6, v7, v5}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2d

    move v2, v3

    goto :goto_2e

    :cond_2d
    move v2, v5

    :goto_2e
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mAggressiveModeEnabled:Z

    .line 1626
    :cond_30
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "mobile_data"

    invoke-virtual {v2, v6, v7, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3e

    move v2, v3

    goto :goto_3f

    :cond_3e
    move v2, v5

    .line 1630
    :goto_3f
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string v8, "ultra_powersaving_mode"

    invoke-virtual {v6, v7, v8, v5}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_4d

    move v6, v3

    goto :goto_4e

    :cond_4d
    move v6, v5

    .line 1635
    :goto_4e
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "airplane_mode_on"

    invoke-virtual {v7, v8, v9, v5}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_60

    if-eqz v2, :cond_60

    if-nez v6, :cond_60

    move v7, v3

    goto :goto_61

    :cond_60
    move v7, v5

    :goto_61
    iput-boolean v7, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    .line 1639
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isSimCheckEnabled()Z

    move-result v7

    const/4 v8, 0x5

    if-eqz v7, :cond_75

    .line 1640
    iget-boolean v7, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    if-eqz v7, :cond_72

    if-ne v1, v8, :cond_72

    move v7, v3

    goto :goto_73

    :cond_72
    move v7, v5

    :goto_73
    iput-boolean v7, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    .line 1644
    :cond_75
    iget-boolean v7, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    if-eqz v7, :cond_83

    iget-boolean v7, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUserOwner:Z

    if-eqz v7, :cond_83

    iget-boolean v7, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mImsRegistered:Z

    if-nez v7, :cond_83

    move v7, v3

    goto :goto_84

    :cond_83
    move v7, v5

    :goto_84
    iput-boolean v7, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    if-eqz v7, :cond_8e

    .line 1647
    iget-boolean v7, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUIEnabled:Z

    if-eqz v7, :cond_8e

    move v7, v3

    goto :goto_8f

    :cond_8e
    move v7, v5

    :goto_8f
    iput-boolean v7, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    const-string v10, "WifiConnectivityMonitor"

    if-nez v0, :cond_a0

    .line 1649
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUIEnabled:Z

    if-eqz v0, :cond_a0

    if-eqz v7, :cond_a0

    const-string v0, "SNS turned on. Do not start scan for a while."

    .line 1650
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    :cond_a0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiSwitchForIndividualAppsService:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    if-eqz v0, :cond_cc

    .line 1656
    iget-boolean v7, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mReportedPoorNetworkDetectionEnabled:Z

    iget-boolean v11, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    if-eq v7, v11, :cond_b8

    .line 1657
    iput-boolean v11, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mReportedPoorNetworkDetectionEnabled:Z

    if-eqz v11, :cond_b2

    const v7, 0x211fe

    goto :goto_b5

    :cond_b2
    const v7, 0x211ff

    .line 1661
    :goto_b5
    invoke-virtual {v0, v7}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendEmptyMessage(I)Z

    .line 1663
    :cond_b8
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mReportedQai:I

    iget v7, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIwcCurrentQai:I

    if-eq v0, v7, :cond_cc

    .line 1664
    iput v7, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mReportedQai:I

    .line 1665
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mSemWifiSwitchForIndividualAppsService:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    const v11, 0x21200

    .line 1666
    invoke-virtual {p0, v11, v7}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->obtainMessage(II)Landroid/os/Message;

    move-result-object v7

    .line 1665
    invoke-virtual {v0, v7}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendMessage(Landroid/os/Message;)Z

    .line 1672
    :cond_cc
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mAirPlaneMode:Z

    .line 1673
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v11, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, v11, v9, v5}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_da

    move v7, v3

    goto :goto_db

    :cond_da
    move v7, v5

    :goto_db
    iput-boolean v7, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mAirPlaneMode:Z

    if-eqz v0, :cond_fc

    if-nez v7, :cond_fc

    const-string v0, "change TrafficStatsCallback interval by turning off airplane mode"

    .line 1676
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiTrafficPollerInterval:I

    if-eqz v0, :cond_f1

    .line 1678
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    invoke-virtual {v7, v9, v0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V

    :cond_f1
    const/16 v0, 0x1f4

    .line 1680
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiTrafficPollerInterval:I

    .line 1681
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    invoke-virtual {v7, v9, v0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V

    .line 1684
    :cond_fc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, v9, v4, v5}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_112

    move v7, v3

    goto :goto_113

    :cond_112
    move v7, v5

    :goto_113
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkAvoidanceSummary:Ljava/lang/String;

    .line 1686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v7, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mAirPlaneMode:Z

    xor-int/2addr v7, v3

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v1, v8, :cond_13b

    move v1, v3

    goto :goto_13c

    :cond_13b
    move v1, v5

    :goto_13c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUserOwner:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mImsRegistered:Z

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v1, v6, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkDetectionSummary:Ljava/lang/String;

    .line 1690
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->DBG:Z

    if-eqz v0, :cond_1f9

    .line 1691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePoorNetworkAvoidance - Poor Network Test Enabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkAvoidanceSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - mUIEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1693
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUIEnabled:Z

    const-string v2, "enabled"

    const-string v6, "disabled"

    if-eqz v1, :cond_180

    move-object v1, v2

    goto :goto_181

    :cond_180
    move-object v1, v6

    :goto_181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1691
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePoorNetworkDetection - Airplane Mode Off / Mobile Data Enabled / SIM State-Ready / MobilePolicyDataDisabled / mUserOwner / !mImsRegistered / isEnabledUltraSaving : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkDetectionSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - mPoorNetworkDetectionEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1697
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    if-eqz v1, :cond_1a5

    move-object v1, v2

    goto :goto_1a6

    :cond_1a5
    move-object v1, v6

    :goto_1a6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1695
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isAggressiveModeSupported()Z

    move-result v0

    if-eqz v0, :cond_1e3

    .line 1699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WIFI_WATCHDOG_POOR_NETWORK_TEST_ENABLED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContentResolver:Landroid/content/ContentResolver;

    .line 1700
    invoke-virtual {v1, v7, v4, v5}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1cb

    move v5, v3

    :cond_1cb
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " - mAggressiveModeEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1702
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mAggressiveModeEnabled:Z

    if-eqz v1, :cond_1d8

    goto :goto_1d9

    :cond_1d8
    move-object v2, v6

    :goto_1d9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1699
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    :cond_1e3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIwcCurrentQai: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIwcCurrentQai:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f9
    return-void
.end method

.method private updateSettings()V
    .registers 5

    .line 1563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating secure settings CurrentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectivityMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->WIFI_ONLY:Z

    const/4 v2, 0x0

    if-nez v0, :cond_51

    .line 1569
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->updatePoorNetworkParameters()V

    .line 1570
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 1572
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isConnectedState()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_53

    .line 1573
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_53

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    if-eqz v0, :cond_53

    .line 1574
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isQCExceptionOnly(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    const-string v0, "updatePoorNetworkDetection = false because it is an QCExceptionOnly"

    .line 1575
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    goto :goto_53

    .line 1566
    :cond_51
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    .line 1581
    :cond_53
    :goto_53
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isAggressiveModeSupported()Z

    move-result v0

    const-string v2, "/"

    if-eqz v0, :cond_82

    .line 1582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating secure settings - mPoorNetworkDetectionEnabled/mUIEnabled/mAggressiveModeEnabled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUIEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mAggressiveModeEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    .line 1586
    :cond_82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating secure settings - mPoorNetworkDetectionEnabled/mUIEnabled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUIEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a0
    return-void
.end method


# virtual methods
.method public checkAlternativeNetworks()V
    .registers 11

    .line 2066
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isConnectedState()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "WifiConnectivityMonitor"

    const-string v1, "checkAlternativeNetworks"

    .line 2068
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-nez v1, :cond_20

    const-string p0, "checkAlternativeNetworks - current WifiConfig is null. Exit."

    .line 2077
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2081
    :cond_20
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/util/ScanPool;->getLastScanResults()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_a0

    .line 2084
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 2085
    invoke-direct {p0, v7, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->qualifiedToRoam(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 2086
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_6e

    .line 2087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAlternativeNetworks - Possible roam target found. Do not check Alternative Network: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Landroid/net/wifi/ScanResult;->level:I

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2088
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "dB higher] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2087
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    return-void

    .line 2092
    :cond_6f
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_7d

    const-string p0, "checkAlternativeNetworks - Saved configs is null. Exit."

    .line 2094
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2097
    :cond_7d
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v4

    :cond_82
    :goto_82
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 2098
    invoke-direct {p0, v1, v8}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->qualifiedToHandoverCandidate(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v9

    if-nez v9, :cond_95

    goto :goto_82

    .line 2101
    :cond_95
    invoke-direct {p0, v2, v8}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->checkAlternativeNetworksFromScanResults(Ljava/util/List;Landroid/net/wifi/WifiConfiguration;)I

    move-result v7

    if-eq v7, v4, :cond_82

    move v2, v3

    goto :goto_9e

    :cond_9d
    move v2, v5

    :goto_9e
    move v4, v7

    goto :goto_a1

    :cond_a0
    move v2, v5

    :goto_a1
    if-eqz v2, :cond_f4

    const-string v2, "checkAlternativeNetworks - Current config\'s validatedInternetAccess sets as false because alternativeNetwork is Found."

    .line 2111
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    iput-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 2114
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    if-eqz v2, :cond_c1

    .line 2115
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_c1

    const-string p0, "checkAlternativeNetworks - Already permanently disabled"

    .line 2116
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2119
    :cond_c1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setBigDataForAlternativeNetwork()V

    .line 2121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLatestAlternativeNetworkSearchTime:J

    .line 2122
    iput v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLatestAlternativeNetworkId:I

    .line 2124
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLevel2State:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;

    if-ne v2, v4, :cond_d9

    .line 2125
    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setAlternativeNetworkTargetRssi(I)V

    .line 2127
    :cond_d9
    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, 0x6

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->disableNetworkWithReason(IIZ)Z

    move-result p0

    .line 2128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAlternativeNetworks - Disable the current network temporarily. 2 min. result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f4
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .line 2727
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiInfo: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLinkProperties: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPoorNetworkDetectionEnabled: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkDetectionSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUIEnabled: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUIEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkAvoidanceSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2732
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isAggressiveModeSupported()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 2733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAggressiveModeEnabled: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mAggressiveModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2735
    :cond_a4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastVisibilityOfWifiIcon : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastVisibilityOfWifiIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIwcCurrentQai: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIwcCurrentQai:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMptcpEnabled: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mMptcpEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2738
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isQCExceptionSummary:Ljava/lang/String;

    if-eqz v0, :cond_105

    .line 2739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isQCExceptionSummary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isQCExceptionSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2741
    :cond_105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mQcHistoryTotal: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mQcHistoryTotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], mQcDumpVer: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " "

    .line 2743
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2744
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mQcHistoryTotal:I

    const/4 v1, 0x0

    if-lez v0, :cond_196

    .line 2745
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2746
    :try_start_137
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mQcHistoryTotal:I

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_13f

    move v2, v1

    goto :goto_142

    :cond_13f
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mQcHistoryHead:I

    rem-int/2addr v2, v3
    :try_end_142
    .catchall {:try_start_137 .. :try_end_142} :catchall_193

    :goto_142
    move v4, v1

    :goto_143
    if-ge v4, v3, :cond_18c

    .line 2749
    :try_start_145
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mQcDumpHistory:[Ljava/lang/String;

    aget-object v5, v5, v2

    if-nez v5, :cond_14c

    goto :goto_189

    .line 2752
    :cond_14c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mQcDumpHistory:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_16c
    .catch Ljava/lang/RuntimeException; {:try_start_145 .. :try_end_16c} :catch_16d
    .catchall {:try_start_145 .. :try_end_16c} :catchall_193

    goto :goto_186

    .line 2754
    :catch_16d
    :try_start_16d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]: ex"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_186
    add-int/lit8 v2, v2, 0x1

    .line 2757
    rem-int/2addr v2, v3

    :goto_189
    add-int/lit8 v4, v4, 0x1

    goto :goto_143

    .line 2759
    :cond_18c
    monitor-exit v0
    :try_end_18d
    .catchall {:try_start_16d .. :try_end_18d} :catchall_193

    const-string v0, " "

    .line 2760
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_196

    :catchall_193
    move-exception p0

    .line 2759
    :try_start_194
    monitor-exit v0
    :try_end_195
    .catchall {:try_start_194 .. :try_end_195} :catchall_193

    throw p0

    :cond_196
    :goto_196
    const-string v0, "[CISO history]"

    .line 2764
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCountryIso: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCscCountryIso: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCscCountryIso:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Update History: "

    .line 2767
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2770
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->incrCountryCodeUpdate:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1d5

    move v3, v0

    move v0, v1

    goto :goto_1d8

    .line 2773
    :cond_1d5
    rem-int/lit8 v0, v0, 0xa

    move v3, v2

    :goto_1d8
    move v4, v0

    :goto_1d9
    add-int v5, v0, v3

    if-ge v4, v5, :cond_1e9

    .line 2776
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->summaryCountryCodeUpdates:[Ljava/lang/String;

    rem-int/lit8 v6, v4, 0xa

    aget-object v5, v5, v6

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d9

    .line 2778
    :cond_1e9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCountryCodeFromScanResult: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCountryCodeFromScanResult:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2781
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->incrScanResult:I

    if-ge v0, v2, :cond_206

    move v2, v0

    move v0, v1

    goto :goto_208

    .line 2784
    :cond_206
    rem-int/lit8 v0, v0, 0xa

    :goto_208
    move v3, v0

    :goto_209
    add-int v4, v0, v2

    if-ge v3, v4, :cond_219

    .line 2787
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->summaryCountryCodeFromScanResults:[Ljava/lang/String;

    rem-int/lit8 v5, v3, 0xa

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_209

    :cond_219
    const-string v0, " "

    .line 2791
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "========MN History========"

    .line 2792
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2793
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mMultiNetworkHistory:Ljava/util/ArrayList;

    if-eqz v0, :cond_260

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_22e

    goto :goto_260

    .line 2797
    :cond_22e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mMultiNetworkHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :goto_235
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_265

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2798
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_235

    :cond_260
    :goto_260
    const-string v0, "NONE"

    .line 2794
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_265
    const-string v0, " "

    .line 2803
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "========DEFAULT NETWORK History========"

    .line 2804
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2805
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mDefaultNetworkHistory:Ljava/util/ArrayList;

    if-eqz v0, :cond_2ac

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_27a

    goto :goto_2ac

    .line 2809
    :cond_27a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mDefaultNetworkHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :goto_281
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2810
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_281

    :cond_2ac
    :goto_2ac
    const-string v0, "NONE"

    .line 2806
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2b1
    const-string v0, " "

    .line 2815
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "========TARGET RSSI ========"

    .line 2816
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mVolumeWeightedTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v1

    :goto_2d2
    const/16 v2, 0x4c

    if-ge v0, v2, :cond_31a

    .line 2820
    :try_start_2d6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mVolumeWeightedHistory:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_2dd

    goto :goto_317

    .line 2823
    :cond_2dd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mVolumeWeightedHistory:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2fd
    .catch Ljava/lang/RuntimeException; {:try_start_2d6 .. :try_end_2fd} :catch_2fe

    goto :goto_317

    .line 2825
    :catch_2fe
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: pre"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_317
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d2

    :cond_31a
    const-string v0, " "

    .line 2830
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "========HIDE ICON========"

    .line 2831
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2832
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mHideIconHistoryTotal:I

    const/16 v2, 0x64

    if-ge v0, v2, :cond_32c

    move v0, v1

    goto :goto_32f

    :cond_32c
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mHideIconHistoryHead:I

    rem-int/2addr v0, v2

    :goto_32f
    move v3, v1

    :goto_330
    if-ge v3, v2, :cond_379

    .line 2835
    :try_start_332
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mHideIconHistory:[Ljava/lang/String;

    aget-object v4, v4, v0

    if-nez v4, :cond_339

    goto :goto_376

    .line 2838
    :cond_339
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mHideIconHistory:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_359
    .catch Ljava/lang/RuntimeException; {:try_start_332 .. :try_end_359} :catch_35a

    goto :goto_373

    .line 2840
    :catch_35a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]: pre"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_373
    add-int/lit8 v0, v0, 0x1

    .line 2842
    rem-int/2addr v0, v2

    :goto_376
    add-int/lit8 v3, v3, 0x1

    goto :goto_330

    .line 2846
    :cond_379
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmConnectivityPacketLogForWlan0:Landroid/util/LocalLog;

    if-eqz v0, :cond_39b

    const-string v0, " "

    .line 2847
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "[connectivity frame log]"

    .line 2848
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "WifiConnectivityMonitor Name of interface : wlan0"

    .line 2849
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2850
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2851
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmConnectivityPacketLogForWlan0:Landroid/util/LocalLog;

    invoke-virtual {v0}, Landroid/util/LocalLog;->readOnlyLocalLog()Landroid/util/LocalLog$ReadOnlyLocalLog;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog$ReadOnlyLocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2852
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_39b
    const-string p1, "[BSSID QoS Map] - Ver: 2.03"

    .line 2856
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2857
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->dumpBssidQosMap()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2858
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getOpenNetworkQosScores()[I

    move-result-object p1

    if-eqz p1, :cond_3f8

    .line 2859
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getOpenNetworkQosNoInternetStatus: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getOpenNetworkQosNoInternetStatus()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2860
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2861
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getOpenNetworkQosScores()[I

    move-result-object p3

    array-length v0, p3

    move v2, v1

    :goto_3d0
    if-ge v2, v0, :cond_3df

    aget v3, p3, v2

    .line 2862
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d0

    .line 2864
    :cond_3df
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getOpenNetworkQosScores: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, " "

    .line 2865
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3f8
    const-string p1, "========PKTCNT_POLL========"

    .line 2869
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "[count]: date currentTime: txbad, txgood, rxgood, rssi, mRssi, mLastGoodRxRssi, mGoodLinkTargetRssi, log"

    .line 2870
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2871
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mRssiFetchHistoryTotal:I

    const/16 p3, 0x1388

    if-ge p1, p3, :cond_40a

    move p1, v1

    goto :goto_40d

    :cond_40a
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mRssiFetchHistoryHead:I

    rem-int/2addr p1, p3

    :goto_40d
    move v0, v1

    :goto_40e
    if-ge v0, p3, :cond_457

    .line 2874
    :try_start_410
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mRssiFetchHistory:[Ljava/lang/String;

    aget-object v2, v2, p1

    if-nez v2, :cond_417

    goto :goto_454

    .line 2877
    :cond_417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mRssiFetchHistory:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_437
    .catch Ljava/lang/RuntimeException; {:try_start_410 .. :try_end_437} :catch_438

    goto :goto_451

    .line 2879
    :catch_438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: ex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_451
    add-int/lit8 p1, p1, 0x1

    .line 2881
    rem-int/2addr p1, p3

    :goto_454
    add-int/lit8 v0, v0, 0x1

    goto :goto_40e

    :cond_457
    const-string p1, " "

    .line 2884
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "========TRAFFIC_POLL========"

    .line 2885
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2886
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTrafficPollHistoryTotal:I

    const/16 p3, 0xbb8

    if-ge p1, p3, :cond_469

    move p1, v1

    goto :goto_46c

    :cond_469
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTrafficPollHistoryHead:I

    rem-int/2addr p1, p3

    :goto_46c
    if-ge v1, p3, :cond_4b5

    .line 2889
    :try_start_46e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTrafficPollHistory:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-nez v0, :cond_475

    goto :goto_4b2

    .line 2892
    :cond_475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mTrafficPollHistory:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_495
    .catch Ljava/lang/RuntimeException; {:try_start_46e .. :try_end_495} :catch_496

    goto :goto_4af

    .line 2894
    :catch_496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: pre"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4af
    add-int/lit8 p1, p1, 0x1

    .line 2896
    rem-int/2addr p1, p3

    :goto_4b2
    add-int/lit8 v1, v1, 0x1

    goto :goto_46c

    :cond_4b5
    return-void
.end method

.method public getCurrentMode()I
    .registers 1

    .line 1135
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentMode:I

    return p0
.end method

.method public getCurrentStatusMode()I
    .registers 3

    .line 1162
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLevel2State:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;

    if-ne v0, v1, :cond_a

    const/4 p0, 0x3

    return p0

    .line 1163
    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isInvalidState()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 1164
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mUserSelectionConfirmed:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsManualSelection:Z

    if-eqz v0, :cond_24

    .line 1165
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->applyQai3Policy()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mQai3InvalidAwaitFinished:Z

    if-nez v0, :cond_24

    return v1

    .line 1168
    :cond_24
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    if-eqz p0, :cond_2a

    const/4 p0, 0x2

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x1

    :goto_2b
    return p0

    :cond_2c
    return v1
.end method

.method public getEverQualityTested()I
    .registers 1

    .line 1123
    sget-boolean p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInitialResultSentToSystemUi:Z

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .registers 5

    .line 2518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2520
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    if-eqz v1, :cond_e

    const-string v1, "!"

    .line 2521
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2523
    :cond_e
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->smToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2524
    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, " "

    sparse-switch v1, :sswitch_data_b0

    .line 2551
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2552
    iget p0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2553
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2554
    iget p0, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_ab

    .line 2532
    :sswitch_30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2533
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_ab

    .line 2547
    :sswitch_3c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " nid="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNetwork:Landroid/net/Network;

    if-nez v1, :cond_4d

    const-string v1, "null"

    goto :goto_55

    :cond_4d
    invoke-virtual {v1}, Landroid/net/Network;->getNetId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_55
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2548
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastManualSelectionInput:Z

    if-nez p1, :cond_6b

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsManualSelection:Z

    if-eqz p0, :cond_68

    goto :goto_6b

    :cond_68
    const-string p0, " Auto"

    goto :goto_6d

    :cond_6b
    :goto_6b
    const-string p0, " Manual"

    :goto_6d
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ab

    .line 2536
    :sswitch_71
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "qai"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 2537
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2538
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_ab

    :sswitch_82
    const-string p0, " keepConnection:"

    .line 2526
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2527
    iget p0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " always:"

    .line 2528
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2529
    iget p0, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_ab

    :sswitch_97
    const-string p0, " step :"

    .line 2541
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2542
    iget p0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " trigger :"

    .line 2543
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2544
    iget p0, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2557
    :goto_ab
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_b0
    .sparse-switch
        0x21024 -> :sswitch_97
        0x21060 -> :sswitch_82
        0x210c8 -> :sswitch_71
        0x2112e -> :sswitch_3c
        0x21135 -> :sswitch_30
    .end sparse-switch
.end method

.method public getNetworkRemovedListener()Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;
    .registers 2

    .line 3121
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$13;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$13;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    return-object v0
.end method

.method public getOpenNetworkQosNoInternetStatus()Z
    .registers 5

    .line 3216
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssidLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3217
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0

    return v2

    .line 3218
    :cond_a
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->getNetId()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_13

    monitor-exit v0

    return v2

    .line 3219
    :cond_13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->getOpenNetworkQosNoInternetStatus()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1b
    move-exception p0

    .line 3220
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public getOpenNetworkQosScores()[I
    .registers 5

    .line 3202
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssidLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3203
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0

    return-object v2

    .line 3204
    :cond_a
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->getNetId()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_13

    monitor-exit v0

    return-object v2

    .line 3205
    :cond_13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->getOpenNetworkQosScores()[I

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1b
    move-exception p0

    .line 3206
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public getValidState()Z
    .registers 2

    .line 1176
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInitialResultSentToSystemUi:Z

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isValidState()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLevel2State:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;

    if-eq v0, p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public getWifiIconVisibility()I
    .registers 1

    .line 1131
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastVisibilityOfWifiIcon:Z

    return p0
.end method

.method public handleShutDown()V
    .registers 1

    .line 2256
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->disableDelayedNetworks()V

    return-void
.end method

.method public isIndividualAppSupported()Z
    .registers 4

    .line 5479
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiChipsetVendorName:Ljava/lang/String;

    const-string v0, "WifiConnectivityMonitor"

    if-eqz p0, :cond_17

    const-string v1, "MTK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 5481
    sget-boolean p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->DBG:Z

    if-eqz p0, :cond_17

    const-string p0, "MTK does not support Individual App Detection"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const/4 p0, 0x0

    .line 5484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isIndividualAppSupported : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isTestCaptivePortalServerHttpUrlSet()Z
    .registers 2

    const-string v0, "test_captive_portal_http_url"

    .line 5445
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getTestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5446
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isValidTestUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public notifyDhcpSession(Ljava/lang/String;)V
    .registers 4

    const-string v0, "start"

    .line 3104
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const p1, 0x21044

    .line 3105
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    goto :goto_1f

    :cond_f
    const-string v0, "complete"

    .line 3106
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    const p1, 0x21045

    const-wide/16 v0, 0x7d0

    .line 3108
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public notifyProvisioningFail()V
    .registers 2

    const v0, 0x210e9

    .line 3117
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    return-void
.end method

.method public notifyReachabilityLost()V
    .registers 2

    const v0, 0x210e8

    .line 3113
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    return-void
.end method

.method public notifyRoamSession(Ljava/lang/String;)V
    .registers 4

    const v0, 0x21135

    const/4 v1, 0x0

    .line 3100
    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public registerOpenNetworkQosCallback(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$OpenNetworkQosCallback;)V
    .registers 4

    .line 3180
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mOpenNetworkQosCallbackList:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 3181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mOpenNetworkQosCallbackList:Ljava/util/ArrayList;

    .line 3182
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mOpenNetworkQosCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3183
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mBssidCache:Landroid/util/LruCache;

    invoke-virtual {p1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1e
    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    if-eqz v0, :cond_1e

    .line 3185
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mOpenNetworkQosCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->registerOpenNetworkQosCallback(Ljava/util/ArrayList;)V

    goto :goto_1e

    :cond_32
    return-void
.end method

.method public removeExcludedNetwork(I)V
    .registers 4

    .line 1250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeExcludedNetwork : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectivityMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21062

    .line 1251
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(II)V

    return-void
.end method

.method public reportNetworkConnectivityToNM(II)Z
    .registers 4

    const/4 v0, 0x0

    .line 1184
    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->reportNetworkConnectivityToNM(ZII)Z

    move-result p0

    return p0
.end method

.method public reportNetworkConnectivityToNM(ZII)Z
    .registers 7

    .line 1188
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsConnectivityCheckDisabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_69

    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mCurrentMode:I

    if-nez v0, :cond_a

    goto :goto_69

    :cond_a
    if-nez p1, :cond_20

    const/16 p1, 0x34

    if-eq p3, p1, :cond_20

    .line 1190
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsScreenOn:Z

    if-nez p1, :cond_19

    sget-boolean p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInitialResultSentToSystemUi:Z

    if-eqz p1, :cond_19

    return v1

    .line 1191
    :cond_19
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->doNotStartNSA()Z

    move-result p1

    if-eqz p1, :cond_20

    return v1

    .line 1194
    :cond_20
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsInRoamSession:Z

    if-nez p1, :cond_69

    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsInDhcpSession:Z

    if-eqz p1, :cond_29

    goto :goto_69

    .line 1195
    :cond_29
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNetworkReplacementInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_32

    return v1

    .line 1197
    :cond_32
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNetwork:Landroid/net/Network;

    const/4 v0, 0x1

    if-eqz p1, :cond_68

    .line 1198
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QC is queried to NM. Waiting for result, [t] : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "WifiConnectivityMonitor"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCm()Landroid/net/ConnectivityManager;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v2, v1}, Landroid/net/ConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 1200
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCm()Landroid/net/ConnectivityManager;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v1, v0}, Landroid/net/ConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 1201
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInvalidationFailHistory:Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcStep:I

    .line 1202
    iput p3, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcTrigger:I

    const/4 p1, -0x1

    .line 1203
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcStepTemp:I

    :cond_68
    return v0

    :cond_69
    :goto_69
    return v1
.end method

.method public resetWatchdogSettings()V
    .registers 2

    const v0, 0x21006

    .line 1440
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    const/4 v0, 0x5

    .line 1441
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->requestInternetCheck(I)V

    return-void
.end method

.method public setBigDataForAlternativeNetwork()V
    .registers 4

    .line 2044
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->resetBigDataFeatureForSCNT()V

    .line 2045
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSCNT:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;

    const/4 v1, 0x1

    iput v1, v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsStage:I

    .line 2047
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mInvalidState:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;

    if-ne v0, v2, :cond_11

    goto :goto_1c

    .line 2048
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLevel2State:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;

    if-ne v0, v1, :cond_1b

    const/4 v1, 0x2

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x3

    .line 2050
    :goto_1c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSCNT:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;

    iput v1, v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsCauseState:I

    .line 2051
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendBigDataFeatureForSCNT()V

    return-void
.end method

.method public setCaptivePortalMode(I)V
    .registers 3

    .line 5170
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "captive_portal_mode"

    .line 5171
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setCaptivePortalMode(ILandroid/os/Bundle;)V
    .registers 10

    .line 5128
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->checkReportId(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    return-void

    :cond_8
    const v1, 0x2113a

    const/4 v2, 0x1

    if-eq p1, v2, :cond_22

    const/4 p2, 0x2

    if-eq p1, p2, :cond_13

    goto/16 :goto_83

    .line 5152
    :cond_13
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPreviousCaptivePortalMode:I

    if-eq p1, v0, :cond_83

    .line 5153
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V

    .line 5154
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPreviousCaptivePortalMode:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setCaptivePortalMode(I)V

    .line 5155
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPreviousCaptivePortalMode:I

    goto :goto_83

    :cond_22
    if-nez p2, :cond_25

    return-void

    :cond_25
    const-string p1, "ssid"

    const-string v3, ""

    .line 5134
    invoke-virtual {p2, p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "netid"

    .line 5135
    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 5136
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isCaptivePortalExceptionOnly(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_47

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isIgnorableNetwork(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_47

    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsConnectivityCheckDisabled:Z

    if-eqz p1, :cond_45

    goto :goto_47

    :cond_45
    move p1, v4

    goto :goto_48

    :cond_47
    :goto_47
    move p1, v2

    :goto_48
    const-wide/16 v5, 0x2af8

    if-eqz p1, :cond_5c

    .line 5138
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPreviousCaptivePortalMode:I

    if-ne p1, v0, :cond_56

    .line 5139
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCaptivePortalMode()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPreviousCaptivePortalMode:I

    .line 5140
    :cond_56
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setCaptivePortalMode(I)V

    .line 5141
    invoke-virtual {p0, v1, v5, v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    :cond_5c
    :try_start_5c
    const-string p1, "connectivity"

    const-string p2, "dns_probe_private_ip_no_internet"

    const-string v0, "220103"

    .line 5144
    invoke-static {p1, p2, v0, v2}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    const p1, 0x2113b

    .line 5146
    invoke-virtual {p0, p1, v5, v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessageDelayed(IJ)V
    :try_end_6b
    .catch Ljava/lang/SecurityException; {:try_start_5c .. :try_end_6b} :catch_6c

    goto :goto_83

    :catch_6c
    move-exception p0

    .line 5148
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to modify device_config:  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiConnectivityMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    :goto_83
    return-void
.end method

.method public setConnectionAttemptInfo(Z)V
    .registers 2

    .line 5160
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastManualSelectionInput:Z

    return-void
.end method

.method public setConnectivityCheckDisabled(Z)V
    .registers 2

    .line 3075
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsConnectivityCheckDisabled:Z

    return-void
.end method

.method public setIWCMonitorAsyncChannel(Landroid/os/Handler;)V
    .registers 5

    .line 3079
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIWCChannel:Lcom/android/internal/util/AsyncChannel;

    const-string v1, "WifiConnectivityMonitor"

    if-nez v0, :cond_16

    .line 3080
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->DBG:Z

    if-eqz v0, :cond_f

    const-string v0, "New mIWCChannel created"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    :cond_f
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIWCChannel:Lcom/android/internal/util/AsyncChannel;

    .line 3083
    :cond_16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIWCChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0, v2, p0, p1}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    .line 3084
    sget-boolean p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->DBG:Z

    if-eqz p0, :cond_2a

    const-string p0, "mIWCChannel connected"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return-void
.end method

.method public setUserSelection(Z)V
    .registers 9

    .line 1227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUserSelect : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectivityMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const v1, 0x21060

    .line 1228
    invoke-virtual {p0, v1, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(III)V

    const/16 v0, 0x12e

    const/4 v2, 0x0

    .line 1230
    iget-short v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mAnalyticsDisconnectReason:S

    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    iget-boolean v5, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mAggressiveModeEnabled:Z

    .line 1233
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getRssi()I

    move-result v6

    move v1, p1

    .line 1231
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForNoInternetUserChoice(ZLandroid/net/wifi/WifiConfiguration;IZZI)Landroid/os/Bundle;

    move-result-object p1

    .line 1230
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->reportIssue(ILandroid/os/Bundle;)V

    return-void
.end method

.method public setUserSelection(ZZ)V
    .registers 9

    .line 1236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUserSelect : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectivityMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21060

    .line 1237
    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(III)V

    const/16 p2, 0x12e

    const/4 v1, 0x0

    .line 1239
    iget-short v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mAnalyticsDisconnectReason:S

    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mAggressiveModeEnabled:Z

    .line 1242
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getRssi()I

    move-result v5

    move v0, p1

    .line 1240
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForNoInternetUserChoice(ZLandroid/net/wifi/WifiConfiguration;IZZI)Landroid/os/Bundle;

    move-result-object p1

    .line 1239
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->reportIssue(ILandroid/os/Bundle;)V

    return-void
.end method

.method public setUserSelectionBigData(I)V
    .registers 3

    const v0, 0x21061

    .line 1246
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(II)V

    return-void
.end method

.method public setWifiEnabled(ZLjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    const v1, 0x2104a

    .line 1180
    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method smToString(I)Ljava/lang/String;
    .registers 4

    sparse-switch p1, :sswitch_data_de

    .line 2713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "what:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_bf

    :sswitch_16
    const-string p1, "CMD_AWAIT_TO_CHECK_INVALID_FOR_QAI_3"

    goto/16 :goto_bf

    :sswitch_1a
    const-string p1, "STOP_BLINKING_WIFI_ICON_MULTI_NETWORK"

    goto/16 :goto_bf

    :sswitch_1e
    const-string p1, "CMD_UPDATE_CURRENT_BSSID_ON_DNS_RESULT_TYPE"

    goto/16 :goto_bf

    :sswitch_22
    const-string p1, "CMD_UPDATE_CURRENT_BSSID_ON_DNS_RESULT"

    goto/16 :goto_bf

    :sswitch_26
    const-string p1, "CMD_UPDATE_CURRENT_BSSID_ON_THROUGHPUT_UPDATE"

    goto/16 :goto_bf

    :sswitch_2a
    const-string p1, "CMD_PRIVATE_IP_NO_INTERNET_RECOVERY"

    goto/16 :goto_bf

    :sswitch_2e
    const-string p1, "CMD_CAPTIVE_PORTAL_MODE_RECOVERY"

    goto/16 :goto_bf

    :sswitch_32
    const-string p1, "CMD_CHECK_ALTERNATIVE_NETWORKS"

    goto/16 :goto_bf

    :sswitch_36
    const-string p1, "CMD_NETWORK_PROPERTIES_UPDATED"

    goto/16 :goto_bf

    :sswitch_3a
    const-string p1, "CMD_ROAM_START_COMPLETE"

    goto/16 :goto_bf

    :sswitch_3e
    const-string p1, "INVALIDATED_DETECTED"

    goto/16 :goto_bf

    :sswitch_42
    const-string p1, "VALIDATED_DETECTED"

    goto/16 :goto_bf

    :sswitch_46
    const-string p1, "CAPTIVE_PORTAL_DETECTED"

    goto/16 :goto_bf

    :sswitch_4a
    const-string p1, "HANDLE_ON_AVAILABLE"

    goto/16 :goto_bf

    :sswitch_4e
    const-string p1, "HANDLE_ON_LOST"

    goto/16 :goto_bf

    :sswitch_52
    const-string p1, "STOP_BLINKING_WIFI_ICON"

    goto/16 :goto_bf

    :sswitch_56
    const-string p1, "CMD_PROVISIONING_FAIL"

    goto/16 :goto_bf

    :sswitch_5a
    const-string p1, "CMD_REACHABILITY_LOST"

    goto/16 :goto_bf

    :sswitch_5e
    const-string p1, "CMD_LINK_POOR_ENTERED"

    goto/16 :goto_bf

    :sswitch_62
    const-string p1, "CMD_LINK_GOOD_ENTERED"

    goto/16 :goto_bf

    :sswitch_66
    const-string p1, "CMD_RECOVERY_TO_HIGH_QUALITY_FROM_ELE"

    goto/16 :goto_bf

    :sswitch_6a
    const-string p1, "CMD_QC_BY_SCORE_QC"

    goto/16 :goto_bf

    :sswitch_6e
    const-string p1, "CMD_IWC_CURRENT_QAI"

    goto/16 :goto_bf

    :sswitch_72
    const-string p1, "CMD_TRANSIT_ON_SWITCHABLE"

    goto :goto_bf

    :sswitch_75
    const-string p1, "CMD_TRANSIT_ON_VALID"

    goto :goto_bf

    :sswitch_78
    const-string p1, "CMD_ELE_BY_GEO_DETECTED"

    goto :goto_bf

    :sswitch_7b
    const-string p1, "CMD_ELE_DETECTED"

    goto :goto_bf

    :sswitch_7e
    const-string p1, "EVENT_USER_SELECTION_BIGDATA"

    goto :goto_bf

    :sswitch_81
    const-string p1, "EVENT_USER_SELECTION"

    goto :goto_bf

    :sswitch_84
    const-string p1, "CMD_STOP_WCM_POLL"

    goto :goto_bf

    :sswitch_87
    const-string p1, "CMD_START_WCM_POLL"

    goto :goto_bf

    :sswitch_8a
    const-string p1, "EVENT_NETWORK_REMOVED"

    goto :goto_bf

    :sswitch_8d
    const-string p1, "EVENT_ROAM_TIMEOUT"

    goto :goto_bf

    :sswitch_90
    const-string p1, "EVENT_DHCP_SESSION_COMPLETE"

    goto :goto_bf

    :sswitch_93
    const-string p1, "EVENT_DHCP_SESSION_STARTED"

    goto :goto_bf

    :sswitch_96
    const-string p1, "EVENT_MOBILE_CONNECTED"

    goto :goto_bf

    :sswitch_99
    const-string p1, "EVENT_SCAN_TIMEOUT"

    goto :goto_bf

    :sswitch_9c
    const-string p1, "EVENT_SCAN_COMPLETE"

    goto :goto_bf

    :sswitch_9f
    const-string p1, "VALIDATION_CHECK_FORCE"

    goto :goto_bf

    :sswitch_a2
    const-string p1, "CONNECTIVITY_VALIDATION_RESULT"

    goto :goto_bf

    :sswitch_a5
    const-string p1, "CONNECTIVITY_VALIDATION_BLOCK"

    goto :goto_bf

    :sswitch_a8
    const-string p1, "REPORT_NETWORK_CONNECTIVITY"

    goto :goto_bf

    :sswitch_ab
    const-string p1, "CMD_TRAFFIC_POLL"

    goto :goto_bf

    :sswitch_ae
    const-string p1, "CMD_RSSI_FETCH"

    goto :goto_bf

    :sswitch_b1
    const-string p1, "EVENT_SCREEN_OFF"

    goto :goto_bf

    :sswitch_b4
    const-string p1, "EVENT_SCREEN_ON"

    goto :goto_bf

    :sswitch_b7
    const-string p1, "EVENT_WATCHDOG_SETTINGS_CHANGE"

    goto :goto_bf

    :sswitch_ba
    const-string p1, "EVENT_WIFI_RADIO_STATE_CHANGE"

    goto :goto_bf

    :sswitch_bd
    const-string p1, "EVENT_NETWORK_STATE_CHANGE"

    .line 2716
    :goto_bf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getKernelTime()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_de
    .sparse-switch
        0x21002 -> :sswitch_bd
        0x21005 -> :sswitch_ba
        0x21006 -> :sswitch_b7
        0x21008 -> :sswitch_b4
        0x21009 -> :sswitch_b1
        0x21014 -> :sswitch_ae
        0x21019 -> :sswitch_ab
        0x21024 -> :sswitch_a8
        0x2102a -> :sswitch_a5
        0x2102b -> :sswitch_a2
        0x2102c -> :sswitch_9f
        0x2103e -> :sswitch_9c
        0x2103f -> :sswitch_99
        0x21040 -> :sswitch_96
        0x21044 -> :sswitch_93
        0x21045 -> :sswitch_90
        0x21049 -> :sswitch_8d
        0x2104b -> :sswitch_8a
        0x21051 -> :sswitch_87
        0x21052 -> :sswitch_84
        0x21060 -> :sswitch_81
        0x21061 -> :sswitch_7e
        0x21073 -> :sswitch_7b
        0x21074 -> :sswitch_78
        0x21083 -> :sswitch_75
        0x21084 -> :sswitch_72
        0x210c8 -> :sswitch_6e
        0x210dc -> :sswitch_6a
        0x210de -> :sswitch_66
        0x210e6 -> :sswitch_62
        0x210e7 -> :sswitch_5e
        0x210e8 -> :sswitch_5a
        0x210e9 -> :sswitch_56
        0x2112c -> :sswitch_52
        0x2112d -> :sswitch_4e
        0x2112e -> :sswitch_4a
        0x2112f -> :sswitch_46
        0x21130 -> :sswitch_42
        0x21131 -> :sswitch_3e
        0x21135 -> :sswitch_3a
        0x21136 -> :sswitch_36
        0x21139 -> :sswitch_32
        0x2113a -> :sswitch_2e
        0x2113b -> :sswitch_2a
        0x21140 -> :sswitch_26
        0x21141 -> :sswitch_22
        0x21142 -> :sswitch_1e
        0x2114d -> :sswitch_1a
        0x2114e -> :sswitch_16
    .end sparse-switch
.end method

.method public updateLinkInfoCollectorBigdata()V
    .registers 7

    .line 5341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5342
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastLoggingTimeSSVI:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-gez v2, :cond_12

    .line 5343
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastLoggingTimeSSVI:J

    return-void

    .line 5346
    :cond_12
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->updateNetworkCapabilities()V

    .line 5347
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->updateLinkStats(J)V

    .line 5348
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->getWifiInfo()V

    .line 5350
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSSVI:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->hasTwtSession(Ljava/lang/Long;)I

    move-result v3

    iput v3, v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mTwt:I

    .line 5351
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSSVI:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->isLowLatencyModeActivated(Ljava/lang/Long;)I

    move-result v3

    iput v3, v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mOptimizer:I

    .line 5353
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSSVI:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->isPrivateDnsActivated()I

    move-result v3

    iput v3, v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mPrivateDns:I

    .line 5354
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSSVI:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->isVpnConnected()I

    move-result v3

    iput v3, v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mVpn:I

    .line 5355
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSSVI:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->isP2pConnected(Ljava/lang/Long;)I

    move-result v3

    iput v3, v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mP2p:I

    .line 5356
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSSVI:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->isAwareConnected(Ljava/lang/Long;)I

    move-result v3

    iput v3, v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mNan:I

    .line 5357
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSSVI:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->isMhsEnabled(Ljava/lang/Long;)I

    move-result v3

    iput v3, v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mHotspot:I

    .line 5358
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSSVI:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->getOperatingFrequency()I

    move-result v3

    iput v3, v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mOperatingChannel:I

    .line 5359
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSSVI:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->getNumOfObss()I

    move-result v3

    iput v3, v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mObss:I

    .line 5360
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSSVI:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->getTxRetries()I

    move-result v3

    iput v3, v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mTxRetry:I

    .line 5361
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSSVI:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->getTxBad()I

    move-result v3

    iput v3, v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mTxBad:I

    .line 5362
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSSVI:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->getConnectedTime()I

    move-result v3

    iput v3, v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mConnectionTime:I

    .line 5363
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSSVI:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->isValidNetwork()I

    move-result v3

    iput v3, v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mValidationCheck:I

    .line 5364
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSSVI:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->getRssiCur()I

    move-result v3

    iput v3, v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mRssiCur:I

    .line 5365
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSSVI:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->getRssiMax()I

    move-result v3

    iput v3, v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mRssiMax:I

    .line 5366
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSSVI:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->getRssiMin()I

    move-result v3

    iput v3, v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mRssiMin:I

    .line 5367
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSSVI:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->getCcaBusyRatio()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mCca:Ljava/lang/String;

    .line 5368
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSSVI:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->getAvgLinkSpeed()I

    move-result v3

    iput v3, v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mAvgLinkSpeed:I

    .line 5369
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSSVI:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->getBssidOui()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mBssidOui:Ljava/lang/String;

    .line 5370
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSSVI:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->getWifiStandard()I

    move-result v3

    iput v3, v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mWifiStandard:I

    .line 5371
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSSVI:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->getApChipsetOuiFromVsie()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mApChipsetOui:Ljava/lang/String;

    .line 5372
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSSVI:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->getChipsetVendorName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mChipsetName:Ljava/lang/String;

    .line 5373
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSSVI:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;

    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mIsScreenOn:Z

    iput v3, v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mScreenState:I

    .line 5375
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendBigDataFeatureForSSVI()V

    .line 5377
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataSSVI:Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->initialize()V

    .line 5378
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    const-string v3, "SSVI"

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->clearFeature(Ljava/lang/String;)Z

    .line 5379
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mLastLoggingTimeSSVI:J

    return-void
.end method
