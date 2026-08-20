.class public Lcom/samsung/android/server/wifi/SemIWCMonitor;
.super Lcom/android/internal/util/StateMachine;
.source "SemIWCMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;,
        Lcom/samsung/android/server/wifi/SemIWCMonitor$PoorLinkState;,
        Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;,
        Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;,
        Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;,
        Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnectedState;,
        Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;,
        Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;,
        Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;,
        Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x87000

.field static final CONFIG_PATH:Ljava/lang/String; = "/data/misc/wifi/"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final CONNDISCINFO_HISTORY_SIZE:I = 0x5

.field private static final CSC_WIFI_DEFAULTAP_DONE:Ljava/lang/String; = "com.samsung.intent.action.CSC_WIFI_DEFAULTAP_DONE"

.field private static final DATA_LIMIT_INTENT:Ljava/lang/String; = "com.android.intent.action.DATAUSAGE_REACH_TO_LIMIT"

.field private static DBG:Z = false

.field public static final EMERGENCY_MODE_PACKAGE_NAME:Ljava/lang/String; = "emergency"

.field private static final HQM_UPDATE_REQ:Ljava/lang/String; = "com.sec.android.intent.action.HQM_UPDATE_REQ"

.field private static final INVALID_STATE_TEST_ACTION:Ljava/lang/String; = "com.android.server.wifi.iwc.INVALID_STATE_TEST"

.field private static final IWCD_FILE:Ljava/lang/String; = "/data/misc/wifi/.iwcd"

.field private static final IWC_EVENT_BIGDATA_UPDATE:I = 0x87006

.field private static final IWC_EVENT_CONFIGURED_NETWORKS_CHANGED:I = 0x87007

.field public static final IWC_EVENT_FACTORY_RESET_REQUIRED:I = 0x8701b

.field private static final IWC_EVENT_FORCE_ACTION:I = 0x87021

.field static final IWC_EVENT_LOAD_START:I = 0x87004
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final IWC_EVENT_NETWORK_STATE_CHANGE:I = 0x87001

.field private static final IWC_EVENT_RESET_LEARNING_DATA:I = 0x8701f

.field public static final IWC_EVENT_RESTORE_USER_PREFERENCE:I = 0x8701e

.field private static final IWC_EVENT_SCREEN_OFF:I = 0x87003

.field private static final IWC_EVENT_SCREEN_ON:I = 0x87002

.field public static final IWC_EVENT_SET_CONNECTION_ATTEMPT:I = 0x87022

.field public static final IWC_EVENT_SNS_SETTINGS_CHANGED:I = 0x87017

.field public static final IWC_EVENT_TRANSIT_TO_INVALID:I = 0x87016

.field public static final IWC_EVENT_TRANSIT_TO_VALID:I = 0x87015

.field private static final IWC_EVENT_USER_SELECTION:I = 0x8704d

.field public static final IWC_EVENT_USER_SELECTION_FROM_WCM:I = 0x8704e

.field private static final IWC_EVENT_WIFI_OFF_PENDED:I = 0x8701d

.field private static final IWC_EVENT_WIFI_STATE_CHANGED:I = 0x87005

.field private static final IWC_EVENT_WIFI_TOGGLED:I = 0x8701a

.field private static final IWC_SWITCH_REASON_ELE_DETECTED:I = 0x4

.field private static final IWC_SWITCH_REASON_POORLINK_DETECTED:I = 0x5

.field private static final IWC_SWITCH_REASON_QC_FAILED_BY_IWC:I = 0x2

.field private static final IWC_SWITCH_REASON_QC_FAILED_BY_WCM:I = 0x3

.field private static final IWC_SWITCH_REASON_QC_SUCCESS_BY_IWC:I = 0x0

.field private static final IWC_SWITCH_REASON_QC_SUCCESS_BY_WCM:I = 0x1

.field private static final LINK_SAMPLING_INTERVAL_MS:J = 0x3e8L

.field private static final LOG_NAME:Ljava/lang/String; = "iwc_dump.txt"

.field private static final LOG_PATH:Ljava/lang/String; = "/data/log/wifi/iwc/"

.field private static final MHS_PRIVATE_NETWORK_MASK:[I

.field private static final PACKAGE_SERVICE_MODE_APP:Ljava/lang/String; = "com.sec.android.app.servicemodeapp"

.field private static final POORLINK_STATE_TEST_ACTION:Ljava/lang/String; = "com.android.server.wifi.iwc.POOR_LINK_TEST"

.field static final PREFERENCE_NAME:Ljava/lang/String; = "qtables.json"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final REWARD_EVENT_AUTO_DISCONNECTION:I = 0x87039

.field private static final REWARD_EVENT_MANUAL_DISCONNECT:I = 0x8703a

.field private static final REWARD_EVENT_MANUAL_RECONNECT:I = 0x87038

.field private static final REWARD_EVENT_MANUAL_SWITCH:I = 0x87032

.field private static final REWARD_EVENT_MANUAL_SWITCH_G:I = 0x87033

.field private static final REWARD_EVENT_MANUAL_SWITCH_L:I = 0x87034

.field private static final REWARD_EVENT_MOBILE_DATA_DISABLE:I = 0x87037

.field private static final REWARD_EVENT_SNS_DISABLE:I = 0x8703b

.field private static final REWARD_EVENT_SNS_ENABLE:I = 0x8703c

.field private static final REWARD_EVENT_SWITCHED_TOO_SHORT:I = 0x87035

.field private static final REWARD_EVENT_WIFI_DISABLE:I = 0x87036

.field public static final SIM_SLOT_1:I = 0x0

.field public static final SIM_SLOT_2:I = 0x1

.field private static final STR_CMD_IWC_CURRENT_QAI:Ljava/lang/String; = "IWC-CURRENT-QAI "

.field private static final STR_CMD_IWC_REQUEST_INTERNET_CHECK:Ljava/lang/String; = "REQUEST-INTERNET-CHECK "

.field private static final STR_CMD_IWC_REQUEST_NETWORK_SWITCH_TO_MOBILE:Ljava/lang/String; = "REQUEST-NETWORK-SWITCH-TO-MOBILE "

.field private static final STR_CMD_IWC_REQUEST_NETWORK_SWITCH_TO_WIFI:Ljava/lang/String; = "REQUEST-NETWORK-SWITCH-TO-WIFI "

.field private static final TAG:Ljava/lang/String; = "SemIWCMonitor"

.field private static final TEMP_BACKUP_PATH:Ljava/lang/String; = "/data/misc/wifi_share_profile/"

.field static final TEMP_IWC_QTABLE_RESTORE_FILE_PATH:Ljava/lang/String; = "/data/misc/wifi_share_profile/qtables_restore.json"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final WIFI_INTERNET_SERVICE_CHECK_DISABLED_AIRPLANE_MODE:I = 0x3

.field public static final WIFI_INTERNET_SERVICE_CHECK_DISABLED_BLOCKED_BY_DATA_ROAMING:I = 0x5

.field public static final WIFI_INTERNET_SERVICE_CHECK_DISABLED_MOBILE_DATA_DISABLED:I = 0x4

.field public static final WIFI_INTERNET_SERVICE_CHECK_DISABLED_NO_SIM:I = 0x2

.field public static final WIFI_INTERNET_SERVICE_CHECK_ENABLED:I = 0x1

.field public static final serialVersionUID:J = 0x133f06dL


# instance fields
.field private MISC_DBG:Z

.field private RSSI_DBG:Z

.field private final lastCallerInfoCallback:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAutoDisconnectionPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

.field private mConnDiscInfoHist:Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;

.field private mConnectNetworkPackageName:Ljava/lang/String;

.field private mConnectedState:Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnectedState;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurSNS:Z

.field private mCurrentBssid:Ljava/lang/String;

.field private mCurrentConfigKey:Ljava/lang/String;

.field private mCurrentNetworkId:I

.field private mCurrentPackageName:Ljava/lang/String;

.field private mCurrentQAI:I

.field private mCurrentQAIDbg:I

.field private mCurrentRssi:I

.field private mCurrentServicePackageNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentUid:I

.field private mCurrentWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mDefaultState:Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;

.field private mDisconnectToConnectNewNetwork:Z

.field private mDisconnectedState:Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;

.field private mDnsResult:I

.field private mDoingRestore:Z

.field private mFileObserver:Landroid/os/FileObserver;

.field private mGoodLinkState:Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mInvalidState:Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;

.field private mIsDebugMode:Z

.field private mIsMobileDataEnabled:Z

.field private mIsSteadyStateDbg:Z

.field private mIsWifiDisabledByUser:Z

.field private mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

.field private mLastConnBssWithoutRemove:Ljava/lang/String;

.field private mLastInvalidEnterTimestamp:J

.field private mLastPoorLinkTimestamp:J

.field private mLastPoorLinkTimestampBeforeDisc:J

.field private mLastTimeSample:J

.field private mLastTxBad:I

.field private mLastTxGood:I

.field private mLinkLossOccurred:I

.field private mLogFile:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

.field private mLossHasGone:I

.field private mManualDisconnectPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

.field private mManualReconnectPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

.field private mManualSwitchPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

.field private mMobileDataDisablePolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

.field private mOnlyThisTimeSelected:Z

.field private mPingEnabled:Z

.field private mPoorLinkState:Lcom/samsung/android/server/wifi/SemIWCMonitor$PoorLinkState;

.field private mPoorLinkStateTesting:Z

.field private mPreferenceFile:Lcom/samsung/android/server/wifi/iwc/SemIWCJsonFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/wifi/iwc/SemIWCJsonFile<",
            "Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousBssid:Ljava/lang/String;

.field private mPreviousLinkLoss:I

.field private mPreviousLoss:D

.field private mPreviousRssi:I

.field private mPreviousWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mProcessObserver:Landroid/app/IProcessObserver;

.field private mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

.field private mRegisteredWifiMonitorHandler:Z

.field private mRemoveUnwantedNetworkToGoBack:Z

.field private mRemovedConfig:Landroid/net/wifi/WifiConfiguration;

.field public final mRewardEventAllowList:[Ljava/lang/String;

.field private mSNSDisablePolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

.field private mSNSEnablePolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

.field private final mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

.field private mSwitchedTooShortPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

.field private mValidLastRssi:I

.field private mValidState:Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;

.field private mWcmChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private mWifiDisablePackage:Ljava/lang/String;

.field private mWifiDisablePolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

.field private final mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

.field private timeStampConnected:J

.field private timeStampDisconnected:J

.field private timeStampPoorLinkTrig:J


# direct methods
.method public static synthetic $r8$lambda$uKNaGsZHTHdztxP2jFXl1NqX71Q(Lcom/samsung/android/server/wifi/SemIWCMonitor;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->lambda$new$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$x6u1McPeq4uLtTIdhEB819Bys1E(Lcom/samsung/android/server/wifi/SemIWCMonitor;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->lambda$new$1(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetMISC_DBG(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->MISC_DBG:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetRSSI_DBG(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->RSSI_DBG:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlogUtils(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/util/LogUtils;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmActivityManager(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/app/ActivityManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mActivityManager:Landroid/app/ActivityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAlarmManager(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/app/AlarmManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAutoDisconnectionPolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mAutoDisconnectionPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnDiscInfoHist(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mConnDiscInfoHist:Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurSNS(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurSNS:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentConfigKey(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentConfigKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentNetworkId(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentNetworkId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentPackageName(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentQAI(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentQAI:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentRssi(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentRssi:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentServicePackageNameList(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentServicePackageNameList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentUid(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentUid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/net/wifi/WifiInfo;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisconnectToConnectNewNetwork(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mDisconnectToConnectNewNetwork:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisconnectedState(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mDisconnectedState:Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDnsResult(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mDnsResult:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDoingRestore(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mDoingRestore:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGoodLinkState(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mGoodLinkState:Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInvalidState(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mInvalidState:Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWifiDisabledByUser(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIsWifiDisabledByUser:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastConnBssWithoutRemove(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastConnBssWithoutRemove:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastInvalidEnterTimestamp(Lcom/samsung/android/server/wifi/SemIWCMonitor;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastInvalidEnterTimestamp:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLastPoorLinkTimestamp(Lcom/samsung/android/server/wifi/SemIWCMonitor;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastPoorLinkTimestamp:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLastPoorLinkTimestampBeforeDisc(Lcom/samsung/android/server/wifi/SemIWCMonitor;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastPoorLinkTimestampBeforeDisc:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLastTimeSample(Lcom/samsung/android/server/wifi/SemIWCMonitor;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastTimeSample:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLastTxBad(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastTxBad:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastTxGood(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastTxGood:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLinkLossOccurred:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLossHasGone(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLossHasGone:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmManualDisconnectPolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mManualDisconnectPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmManualReconnectPolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mManualReconnectPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmManualSwitchPolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mManualSwitchPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMobileDataDisablePolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mMobileDataDisablePolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPingEnabled(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPingEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPoorLinkState(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$PoorLinkState;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPoorLinkState:Lcom/samsung/android/server/wifi/SemIWCMonitor$PoorLinkState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPoorLinkStateTesting(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPoorLinkStateTesting:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviousBssid(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousBssid:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviousLinkLoss(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousLinkLoss:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviousLoss(Lcom/samsung/android/server/wifi/SemIWCMonitor;)D
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousLoss:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmRLEngine(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRemovedConfig(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/net/wifi/WifiConfiguration;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRemovedConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSNSDisablePolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mSNSDisablePolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSNSEnablePolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mSNSEnablePolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchedTooShortPolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mSwitchedTooShortPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmValidLastRssi(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mValidLastRssi:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiDisablePackage(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiDisablePackage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiDisablePolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiDisablePolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettimeStampConnected(Lcom/samsung/android/server/wifi/SemIWCMonitor;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampConnected:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgettimeStampPoorLinkTrig(Lcom/samsung/android/server/wifi/SemIWCMonitor;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampPoorLinkTrig:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmConnectNetworkPackageName(Lcom/samsung/android/server/wifi/SemIWCMonitor;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mConnectNetworkPackageName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurSNS(Lcom/samsung/android/server/wifi/SemIWCMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurSNS:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentPackageName(Lcom/samsung/android/server/wifi/SemIWCMonitor;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentPackageName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentQAI(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentQAI:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentRssi(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentRssi:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentServicePackageNameList(Lcom/samsung/android/server/wifi/SemIWCMonitor;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentServicePackageNameList:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentUid(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentUid:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemIWCMonitor;Landroid/net/wifi/WifiInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentWifiInfo:Landroid/net/wifi/WifiInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDnsResult(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mDnsResult:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDoingRestore(Lcom/samsung/android/server/wifi/SemIWCMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mDoingRestore:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsWifiDisabledByUser(Lcom/samsung/android/server/wifi/SemIWCMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIsWifiDisabledByUser:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastConnBssWithoutRemove(Lcom/samsung/android/server/wifi/SemIWCMonitor;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastConnBssWithoutRemove:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastInvalidEnterTimestamp(Lcom/samsung/android/server/wifi/SemIWCMonitor;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastInvalidEnterTimestamp:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastPoorLinkTimestamp(Lcom/samsung/android/server/wifi/SemIWCMonitor;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastPoorLinkTimestamp:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastPoorLinkTimestampBeforeDisc(Lcom/samsung/android/server/wifi/SemIWCMonitor;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastPoorLinkTimestampBeforeDisc:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastTimeSample(Lcom/samsung/android/server/wifi/SemIWCMonitor;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastTimeSample:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastTxBad(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastTxBad:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastTxGood(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastTxGood:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLinkLossOccurred:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLossHasGone(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLossHasGone:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOnlyThisTimeSelected(Lcom/samsung/android/server/wifi/SemIWCMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mOnlyThisTimeSelected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPoorLinkStateTesting(Lcom/samsung/android/server/wifi/SemIWCMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPoorLinkStateTesting:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviousBssid(Lcom/samsung/android/server/wifi/SemIWCMonitor;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousBssid:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviousLinkLoss(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousLinkLoss:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviousLoss(Lcom/samsung/android/server/wifi/SemIWCMonitor;D)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousLoss:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviousRssi(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousRssi:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRemoveUnwantedNetworkToGoBack(Lcom/samsung/android/server/wifi/SemIWCMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRemoveUnwantedNetworkToGoBack:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRemovedConfig(Lcom/samsung/android/server/wifi/SemIWCMonitor;Landroid/net/wifi/WifiConfiguration;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRemovedConfig:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmValidLastRssi(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mValidLastRssi:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiDisablePackage(Lcom/samsung/android/server/wifi/SemIWCMonitor;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiDisablePackage:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtimeStampPoorLinkTrig(Lcom/samsung/android/server/wifi/SemIWCMonitor;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampPoorLinkTrig:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAutojoinConfig(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->checkAutojoinConfig()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdetectRewardEventAutoDisconnection(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->detectRewardEventAutoDisconnection()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdetectRewardEventMobileDataDisable(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->detectRewardEventMobileDataDisable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetBackupAndRestoreDebugMessage(Lcom/samsung/android/server/wifi/SemIWCMonitor;II)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getBackupAndRestoreDebugMessage(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/net/wifi/WifiInfo;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misConnectedWifi(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isConnectedWifi()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misExcludedBssid(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isExcludedBssid()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSamsungSpecificAp(Lcom/samsung/android/server/wifi/SemIWCMonitor;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isSamsungSpecificAp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misService(Lcom/samsung/android/server/wifi/SemIWCMonitor;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isService(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misVendorAp(Lcom/samsung/android/server/wifi/SemIWCMonitor;Landroid/net/wifi/WifiInfo;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isVendorAp(Landroid/net/wifi/WifiInfo;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mloadIWCDbgFile(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->loadIWCDbgFile()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mload_model_obj(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->load_model_obj()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnetworkStateChanged(Lcom/samsung/android/server/wifi/SemIWCMonitor;Landroid/net/NetworkInfo$DetailedState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->networkStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterWifiMonitorHandler(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->registerWifiMonitorHandler()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetLearningData(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->resetLearningData(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msave_model_obj(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->save_model_obj()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendDebugIntent(Lcom/samsung/android/server/wifi/SemIWCMonitor;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->sendDebugIntent(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendMessageToWCM(Lcom/samsung/android/server/wifi/SemIWCMonitor;II)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->sendMessageToWCM(II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetBigDataMIWC(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->setBigDataMIWC()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetBroadcastReceiver(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->setBroadcastReceiver()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetIntfSnsFlag(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->setIntfSnsFlag()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDebugIntent(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateDebugIntent()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLinkLossNotification(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateLinkLossNotification()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSettings(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateSettings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTableAutoDisconnection(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateTableAutoDisconnection()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTableForceAction(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateTableForceAction(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTableManualDisc(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateTableManualDisc()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTableManualReconnect(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateTableManualReconnect()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTableManualSwitch(Lcom/samsung/android/server/wifi/SemIWCMonitor;Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateTableManualSwitch(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTableMobileDataChanged(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateTableMobileDataChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTableSNSDisable(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateTableSNSDisable()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTableSNSEnable(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateTableSNSEnable()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTableSwitchedTooShort(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateTableSwitchedTooShort()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTableWifiOff(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateTableWifiOff()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateValidLastRssi(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateValidLastRssi(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwifiStateChanged(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->wifiStateChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 170
    fill-array-data v0, :array_10

    sput-object v0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->MHS_PRIVATE_NETWORK_MASK:[I

    .line 174
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    return-void

    nop

    :array_10
    .array-data 4
        0x2ba8c0
        0xa14ac
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .registers 14

    const-string v1, "SemIWCMonitor"

    .line 369
    invoke-direct {p0, v1, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    const/4 v8, 0x0

    .line 175
    iput-boolean v8, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->RSSI_DBG:Z

    .line 176
    iput-boolean v8, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->MISC_DBG:Z

    const-string v0, "com.android.systemui"

    const-string v2, "com.android.settings"

    .line 178
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRewardEventAllowList:[Ljava/lang/String;

    .line 189
    new-instance v0, Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 196
    iput-boolean v8, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPoorLinkStateTesting:Z

    const/4 v0, -0x1

    .line 199
    iput v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentNetworkId:I

    const-string v2, ""

    .line 200
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentConfigKey:Ljava/lang/String;

    .line 208
    iput v8, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentQAI:I

    .line 214
    iput-boolean v8, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIsWifiDisabledByUser:Z

    const/4 v2, 0x0

    .line 217
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRemovedConfig:Landroid/net/wifi/WifiConfiguration;

    .line 218
    iput-boolean v8, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRemoveUnwantedNetworkToGoBack:Z

    .line 220
    iput-boolean v8, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRegisteredWifiMonitorHandler:Z

    .line 221
    iput-boolean v8, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mOnlyThisTimeSelected:Z

    .line 224
    iput-boolean v8, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIsDebugMode:Z

    .line 225
    iput-boolean v8, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIsSteadyStateDbg:Z

    .line 226
    iput-boolean v8, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPingEnabled:Z

    .line 227
    iput v8, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentQAIDbg:I

    .line 232
    iput v8, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mValidLastRssi:I

    .line 233
    iput v8, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastTxGood:I

    .line 234
    iput v8, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastTxBad:I

    .line 235
    iput v8, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLinkLossOccurred:I

    .line 236
    iput v8, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousLinkLoss:I

    .line 237
    iput v8, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLossHasGone:I

    const-wide/16 v3, 0x0

    .line 238
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousLoss:D

    const-wide/16 v3, 0x0

    .line 241
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastTimeSample:J

    .line 242
    iput-boolean v8, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mDisconnectToConnectNewNetwork:Z

    .line 244
    iput v8, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mDnsResult:I

    .line 256
    new-instance v5, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;

    invoke-direct {v5, p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;-><init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    iput-object v5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mDefaultState:Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;

    .line 257
    new-instance v5, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnectedState;

    invoke-direct {v5, p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnectedState;-><init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    iput-object v5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mConnectedState:Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnectedState;

    .line 258
    new-instance v5, Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;

    invoke-direct {v5, p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;-><init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    iput-object v5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mDisconnectedState:Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;

    .line 259
    new-instance v5, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;

    invoke-direct {v5, p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;-><init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    iput-object v5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mValidState:Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;

    .line 260
    new-instance v5, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;

    invoke-direct {v5, p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;-><init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    iput-object v5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mInvalidState:Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;

    .line 261
    new-instance v5, Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;

    invoke-direct {v5, p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;-><init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    iput-object v5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mGoodLinkState:Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;

    .line 262
    new-instance v5, Lcom/samsung/android/server/wifi/SemIWCMonitor$PoorLinkState;

    invoke-direct {v5, p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$PoorLinkState;-><init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    iput-object v5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPoorLinkState:Lcom/samsung/android/server/wifi/SemIWCMonitor$PoorLinkState;

    .line 269
    new-instance v5, Lcom/samsung/android/server/wifi/SemIWCMonitor$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$1;-><init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    iput-object v5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 326
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousBssid:Ljava/lang/String;

    .line 327
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampPoorLinkTrig:J

    .line 328
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampConnected:J

    .line 329
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampDisconnected:J

    .line 330
    new-instance v2, Lcom/samsung/android/server/wifi/SemIWCMonitor$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$2;-><init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 366
    iput-boolean v8, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mDoingRestore:Z

    .line 638
    new-instance v2, Lcom/samsung/android/server/wifi/SemIWCMonitor$10;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$10;-><init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->lastCallerInfoCallback:Ljava/util/function/BiConsumer;

    .line 371
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mContext:Landroid/content/Context;

    .line 372
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 373
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getScanPoll()Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    const-string v2, "activity"

    .line 374
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mActivityManager:Landroid/app/ActivityManager;

    const-string v2, "alarm"

    .line 375
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    const-string v2, "connectivity"

    .line 376
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 378
    new-instance v2, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mConnDiscInfoHist:Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;

    .line 381
    new-instance v2, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    const-string v3, "/data/log/wifi/iwc/iwc_dump.txt"

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLogFile:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    .line 383
    new-instance v2, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    invoke-direct {v2, p1}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    .line 385
    sget-boolean v2, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    if-eqz v2, :cond_fd

    .line 386
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->loadIWCDbgFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->setDebugParams(Ljava/lang/String;)V

    .line 387
    new-instance v2, Lcom/samsung/android/server/wifi/SemIWCMonitor$3;

    const/16 v3, 0x8

    const-string v4, "/data/misc/wifi/.iwcd"

    invoke-direct {v2, p0, v4, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor$3;-><init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mFileObserver:Landroid/os/FileObserver;

    .line 394
    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 397
    :cond_fd
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mDefaultState:Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->addState(Lcom/android/internal/util/State;)V

    .line 398
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mDisconnectedState:Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mDefaultState:Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 399
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mConnectedState:Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnectedState;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mDefaultState:Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 400
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mInvalidState:Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mConnectedState:Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnectedState;

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 401
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mValidState:Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mConnectedState:Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnectedState;

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 402
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mGoodLinkState:Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mValidState:Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 403
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPoorLinkState:Lcom/samsung/android/server/wifi/SemIWCMonitor$PoorLinkState;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mValidState:Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 405
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mDisconnectedState:Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->setInitialState(Lcom/android/internal/util/State;)V

    .line 407
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 408
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.net.wifi.STATE_CHANGE"

    .line 409
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 410
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.android.intent.action.DATAUSAGE_REACH_TO_LIMIT"

    .line 411
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.samsung.intent.action.CSC_WIFI_DEFAULTAP_DONE"

    .line 412
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 413
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 414
    sget-boolean v3, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    if-eqz v3, :cond_164

    const-string v3, "com.android.server.wifi.iwc.POOR_LINK_TEST"

    .line 415
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.android.server.wifi.iwc.INVALID_STATE_TEST"

    .line 416
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 419
    :cond_164
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v2, v3, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v9, 0x1

    if-eqz v2, :cond_173

    move v2, v9

    goto :goto_174

    :cond_173
    move v2, v8

    :goto_174
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurSNS:Z

    .line 422
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data"

    invoke-static {v2, v3, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_184

    move v2, v9

    goto :goto_185

    :cond_184
    move v2, v8

    :goto_185
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIsMobileDataEnabled:Z

    .line 426
    new-instance v2, Lcom/samsung/android/server/wifi/SemIWCMonitor$4;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/samsung/android/server/wifi/SemIWCMonitor$4;-><init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;Landroid/os/Handler;)V

    .line 433
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 434
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 433
    invoke-virtual {v4, v3, v8, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 439
    :try_start_19b
    iput v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentUid:I

    const-string v0, "default"

    .line 440
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentPackageName:Ljava/lang/String;

    .line 441
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_1a8
    .catch Landroid/os/RemoteException; {:try_start_19b .. :try_end_1a8} :catch_1b3
    .catch Ljava/lang/SecurityException; {:try_start_19b .. :try_end_1a8} :catch_1a9

    goto :goto_1bc

    :catch_1a9
    move-exception v0

    const-string v2, "SecurityException - registerProcessObserver"

    .line 446
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1bc

    :catch_1b3
    move-exception v0

    const-string v2, "RemoteException - registerProcessObserver"

    .line 443
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 452
    :goto_1bc
    new-instance v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->MANUAL_SWITCH:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const v5, 0x87032

    const-wide/16 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;-><init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;Landroid/os/Handler;Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;IJ)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mManualSwitchPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    .line 454
    new-instance v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->MANUAL_DISCONNECT:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const v5, 0x8703a

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;-><init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;Landroid/os/Handler;Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;IJ)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mManualDisconnectPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    .line 456
    new-instance v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->CONNECTION_SWITCHED_TOO_SHORT:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const v5, 0x87035

    const-wide/16 v6, 0x7530

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;-><init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;Landroid/os/Handler;Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;IJ)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mSwitchedTooShortPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    .line 459
    new-instance v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->WIFI_OFF:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const v5, 0x87036

    const-wide/16 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;-><init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;Landroid/os/Handler;Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;IJ)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiDisablePolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    .line 461
    new-instance v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->CELLULAR_DATA_OFF:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const v5, 0x87037

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;-><init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;Landroid/os/Handler;Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;IJ)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mMobileDataDisablePolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    .line 463
    new-instance v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->MANUAL_RECONNECTION:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const v5, 0x87038

    const-wide/16 v6, 0x61a8

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;-><init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;Landroid/os/Handler;Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;IJ)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mManualReconnectPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    .line 466
    new-instance v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->AUTO_DISCONNECTION:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const v5, 0x87039

    const-wide/16 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;-><init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;Landroid/os/Handler;Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;IJ)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mAutoDisconnectionPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    .line 468
    new-instance v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->SNS_OFF:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const v5, 0x8703b

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;-><init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;Landroid/os/Handler;Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;IJ)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mSNSDisablePolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    .line 470
    new-instance v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->SNS_ON:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const v5, 0x8703c

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;-><init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;Landroid/os/Handler;Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;IJ)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mSNSEnablePolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    .line 473
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mMobileDataDisablePolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->adopt()V

    .line 474
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mSNSDisablePolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->adopt()V

    .line 475
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mSNSEnablePolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->adopt()V

    .line 476
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mSwitchedTooShortPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    new-instance v1, Lcom/samsung/android/server/wifi/SemIWCMonitor$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$5;-><init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->setAlarmListener(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 487
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mManualReconnectPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    new-instance v1, Lcom/samsung/android/server/wifi/SemIWCMonitor$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$6;-><init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->setAlarmListener(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 498
    new-instance v0, Lcom/samsung/android/server/wifi/iwc/SemIWCJsonFile;

    const-class v4, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v3, "/data/misc/wifi/qtables.json"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/server/wifi/iwc/SemIWCJsonFile;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/google/gson/JsonSerializer;Lcom/google/gson/JsonDeserializer;Z)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreferenceFile:Lcom/samsung/android/server/wifi/iwc/SemIWCJsonFile;

    .line 502
    new-instance v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLogFile:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;-><init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    .line 503
    iget-object v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iput-object p1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mContext:Landroid/content/Context;

    .line 504
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->setIntfSnsFlag()V

    .line 506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentServicePackageNameList:Ljava/util/ArrayList;

    .line 508
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_num_of_switch_to_mobile_data_toggle"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemIWCMonitor STC("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SW Version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ro.build.version.incremental"

    const-string v3, "Unknown"

    .line 511
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 510
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SNS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Wifi_ConfigSnsStatus"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEFAULT_ON"

    .line 514
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_304

    goto :goto_306

    :cond_304
    const-string v2, "DEFAULT_OFF"

    .line 517
    :goto_306
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Default value of "

    .line 513
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInterfaceNameProvider()Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 520
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiMonitor()Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 521
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 522
    new-instance v1, Lcom/samsung/android/server/wifi/SemIWCMonitor$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$7;-><init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->registerNetworkRemovedListener(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;)V

    .line 575
    new-instance v1, Lcom/samsung/android/server/wifi/SemIWCMonitor$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$8;-><init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->registerNetworkAddedListener(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkAddedListener;)V

    .line 582
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 584
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 585
    invoke-virtual {v0, v9}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 586
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 587
    new-instance v1, Lcom/samsung/android/server/wifi/SemIWCMonitor$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$9;-><init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    .line 618
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    new-instance v3, Lcom/samsung/android/server/wifi/SemIWCMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    .line 626
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0, v1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 628
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    new-instance v1, Lcom/samsung/android/server/wifi/SemIWCMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V

    return-void
.end method

.method private buildLogNoInternetConfig(ZZZ)Ljava/lang/String;
    .registers 5

    .line 1438
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isExcludedCurrentSemWifiConfig "

    .line 1439
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isExcludedRemovedSemWifiConfig "

    .line 1440
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isExcludedPreviousSemWifiConfig "

    .line 1441
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1442
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private checkAutojoinConfig()Z
    .registers 2

    .line 1066
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isConnectedWifi()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1067
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getWifiConfiguration(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    goto :goto_13

    .line 1069
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getWifiConfiguration(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    :goto_13
    if-nez p0, :cond_17

    const/4 p0, 0x1

    return p0

    .line 1074
    :cond_17
    iget-boolean p0, p0, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    return p0
.end method

.method private detectRewardEventAutoDisconnection()V
    .registers 4

    .line 1049
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mConnDiscInfoHist:Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->get(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 1051
    iget v0, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->discTriggeredBy:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_67

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIsWifiDisabledByUser:Z

    if-nez v0, :cond_67

    .line 1053
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isAirplaneModeEnabled()Z

    move-result v0

    const-string v1, " Network ID: "

    if-eqz v0, :cond_36

    .line 1054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Airplain mode"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    .line 1055
    :cond_36
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentPackageName:Ljava/lang/String;

    if-eqz v0, :cond_5d

    const-string v2, "emergency"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Emergency mode"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    .line 1058
    :cond_5d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mAutoDisconnectionPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->detect()V

    .line 1059
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mAutoDisconnectionPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->discard()V

    :cond_67
    :goto_67
    return-void
.end method

.method private detectRewardEventMobileDataDisable()Z
    .registers 1

    .line 973
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mMobileDataDisablePolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->detect()V

    const/4 p0, 0x1

    return p0
.end method

.method private detectRewardEventWhenConnectStart()V
    .registers 6

    .line 986
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mManualSwitchPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detectRewardEventConnectStart mLastInvalidEnterTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastInvalidEnterTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " cur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " diff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastInvalidEnterTimestamp:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemIWCMonitor"

    .line 987
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getDiffFromLastPoorLink()J

    move-result-wide v0

    const-wide/16 v2, 0x59d8

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x0

    if-gez v0, :cond_62

    .line 990
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastInvalidEnterTimestamp:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_55

    const/16 v0, 0x3e8

    .line 991
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isCurrentTimeWithinSinceEnteringInvalidState(I)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 992
    :cond_55
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mManualSwitchPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    sget-object v1, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->MANUAL_SWITCH:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->detect(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;)V

    .line 993
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mManualSwitchPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->discard()V

    return-void

    .line 998
    :cond_62
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mInvalidState:Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;

    if-ne v0, v3, :cond_87

    const/16 v0, 0x1388

    .line 999
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isCurrentTimeWithinSinceEnteringInvalidState(I)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 1000
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mManualSwitchPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    sget-object v1, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->MANUAL_SWITCH_G:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->detect(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;)V

    goto :goto_87

    .line 1001
    :cond_7a
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastInvalidEnterTimestamp:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_87

    .line 1002
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mManualSwitchPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    sget-object v1, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->MANUAL_SWITCH_L:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->detect(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;)V

    .line 1006
    :cond_87
    :goto_87
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mManualSwitchPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->discard()V

    :cond_8c
    return-void
.end method

.method private detectRewardEventWhenNetworkConnected()V
    .registers 7

    .line 1011
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    const-string v1, "SemIWCMonitor"

    if-eqz v0, :cond_35

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current PN ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") tsConnected ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampConnected:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ") Connect PN ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mConnectNetworkPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    :cond_35
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mManualReconnectPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid()Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 1017
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mConnDiscInfoHist:Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentConfigKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;

    move-result-object v0

    .line 1018
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mConnDiscInfoHist:Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastConnBssWithoutRemove:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->get(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;

    move-result-object v2

    .line 1019
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastConnBssWithoutRemove:Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v3, :cond_a7

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 1020
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conncted to ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") same as previous one. key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentConfigKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_88

    .line 1021
    iget v0, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->connTriggeredBy:I

    if-eq v0, v4, :cond_8c

    :cond_88
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRemoveUnwantedNetworkToGoBack:Z

    if-eqz v0, :cond_94

    .line 1023
    :cond_8c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mManualReconnectPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->detect()V

    const/4 v0, 0x0

    .line 1024
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRemoveUnwantedNetworkToGoBack:Z

    .line 1026
    :cond_94
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mManualReconnectPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->discard()V

    .line 1027
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mManualSwitchPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid()Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 1028
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mManualSwitchPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->discard()V

    goto :goto_d6

    :cond_a7
    if-eqz v0, :cond_d6

    .line 1031
    iget v0, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->connTriggeredBy:I

    if-ne v0, v4, :cond_d6

    if-eqz v2, :cond_d6

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampConnected:J

    iget-wide v3, v2, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->connTime:J

    sub-long/2addr v0, v3

    const-wide/32 v3, 0x84d0

    cmp-long v0, v0, v3

    if-gez v0, :cond_d6

    .line 1039
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastConnBssWithoutRemove:Ljava/lang/String;

    if-eqz v0, :cond_c7

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cc

    :cond_c7
    iget v0, v2, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->connTriggeredBy:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d6

    .line 1041
    :cond_cc
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mManualReconnectPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->detect()V

    .line 1042
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mManualReconnectPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->discard()V

    :cond_d6
    :goto_d6
    return-void
.end method

.method private detectRewardEventWhenNetworkDisconnected()V
    .registers 5

    .line 1078
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mConnDiscInfoHist:Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->get(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;

    move-result-object v0

    .line 1080
    sget-boolean v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    const-string v2, "SemIWCMonitor"

    if-eqz v1, :cond_46

    .line 1081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current PN ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") DiscbyPhone ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_27

    const-string v3, "null"

    goto :goto_2d

    .line 1082
    :cond_27
    iget v3, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->discTriggeredBy:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_2d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") Connect PN ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mConnectNetworkPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1081
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :cond_46
    sget-boolean v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    if-eqz v1, :cond_8e

    .line 1085
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ManualSwitchPolicy: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mManualSwitchPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " SwitchedTooShortPolicy: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mSwitchedTooShortPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    .line 1086
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " AutoDisconnectionPolicy: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mAutoDisconnectionPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    .line 1087
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ManualDisconnectPolicy: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mManualDisconnectPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    .line 1088
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1085
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_8e
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mSwitchedTooShortPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid()Z

    move-result v1

    if-eqz v1, :cond_f1

    if-eqz v0, :cond_f1

    iget v1, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->connTriggeredBy:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f1

    iget v0, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->discTriggeredBy:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f1

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIsWifiDisabledByUser:Z

    if-nez v0, :cond_f1

    .line 1094
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isVendorAp(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    .line 1095
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isSamsungSpecificAp(Ljava/lang/String;)Z

    move-result v1

    .line 1096
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mDisconnectToConnectNewNetwork:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " vendor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " samsung: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mDisconnectToConnectNewNetwork: "

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mDisconnectToConnectNewNetwork:Z

    if-nez v2, :cond_fc

    if-nez v0, :cond_fc

    if-nez v1, :cond_fc

    const/4 v0, 0x0

    .line 1101
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mConnectNetworkPackageName:Ljava/lang/String;

    .line 1102
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->checkAutojoinConfig()Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 1103
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mSwitchedTooShortPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->detect()V

    .line 1105
    :cond_eb
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mSwitchedTooShortPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->discard()V

    goto :goto_fc

    .line 1107
    :cond_f1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mAutoDisconnectionPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid()Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 1108
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->detectRewardEventAutoDisconnection()V

    :cond_fc
    :goto_fc
    return-void
.end method

.method private detectRewardEventWifiDisable()V
    .registers 2

    .line 967
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiDisablePolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 968
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiDisablePolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->detect()V

    :cond_d
    return-void
.end method

.method private getBackupAndRestoreDebugMessage(II)Ljava/lang/String;
    .registers 6

    const/4 p0, 0x3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_47

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3f

    if-eq p1, p0, :cond_3c

    const/4 p0, 0x4

    if-eq p1, p0, :cond_39

    const/4 p0, 0x5

    if-eq p1, p0, :cond_22

    .line 2598
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Wrong type of message "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_a3

    .line 2595
    :cond_22
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Toggled "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " time(s)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_a3

    :cond_39
    const-string p0, "Switch to mobile data will be enabled after restore"

    goto :goto_a3

    :cond_3c
    const-string p0, "Restoring learning file is required"

    goto :goto_a3

    :cond_3f
    if-ne p2, v0, :cond_44

    const-string p0, "AGG"

    goto :goto_a3

    :cond_44
    const-string p0, "NOT AGG"

    goto :goto_a3

    :cond_47
    const-string p1, "SNS"

    const-string v1, " ON"

    const-string v2, " OFF"

    if-gt p2, v0, :cond_82

    if-ne p2, v0, :cond_61

    .line 2568
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_70

    .line 2570
    :cond_61
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2572
    :goto_70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (from old device)"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_a3

    :cond_82
    if-ne p2, p0, :cond_94

    .line 2575
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_a3

    .line 2577
    :cond_94
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_a3
    return-object p0
.end method

.method private getBssidFromNetId(I)Ljava/lang/String;
    .registers 2

    .line 1415
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 1416
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-nez p1, :cond_d

    goto :goto_10

    .line 1419
    :cond_d
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    return-object p0

    :cond_10
    :goto_10
    const-string p0, "any"

    return-object p0
.end method

.method public static getDataRoaming(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "phone"

    .line 2242
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_15

    .line 2244
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 2246
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result p0

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method private getDiffFromLastPoorLink()J
    .registers 5

    .line 819
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastPoorLinkTimestamp:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getIntValue(Ljava/lang/String;I)I
    .registers 4

    .line 1948
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return p0

    .line 1950
    :catch_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "wrong int:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemIWCMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method private getInterfaceName()Ljava/lang/String;
    .registers 1

    .line 686
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->getPrimaryInterfaceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getKernelTime()Ljava/lang/String;
    .registers 5

    .line 753
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 755
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMatchedSemWifiConfig(Landroid/net/wifi/WifiInfo;)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .registers 4

    if-eqz p1, :cond_1c

    .line 676
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    .line 677
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 679
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object p0

    return-object p0

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSimState(Landroid/content/Context;)I
    .registers 6

    const-string v0, "phone"

    .line 2219
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const-string v0, "SemIWCMonitor"

    const/4 v1, 0x0

    if-nez p0, :cond_13

    const-string p0, "TelephonyManager is null."

    .line 2222
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 2224
    :cond_13
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_55

    .line 2225
    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    .line 2226
    invoke-virtual {p0, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2b

    if-ne p0, v3, :cond_2c

    :cond_2b
    move v1, v3

    .line 2233
    :cond_2c
    sget-boolean v3, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    if-eqz v3, :cond_59

    .line 2234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simState1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", simState2 = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", simState = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 2236
    :cond_55
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    :cond_59
    :goto_59
    return v1
.end method

.method private declared-synchronized getSteadyStateNum()I
    .registers 2

    monitor-enter p0

    .line 1128
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->getSteadyStateNum()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_3

    return-object p2

    :cond_3
    const-string p0, "="

    .line 1938
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    .line 1939
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p0, v0, :cond_12

    return-object p2

    .line 1943
    :cond_12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getWifiConfiguration(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;
    .registers 5

    .line 1399
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    const/4 v0, 0x0

    const-string v1, "SemIWCMonitor"

    if-nez p0, :cond_d

    const-string p0, "getWifiConfiguration : could not get wifiConfigManager"

    .line 1400
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1404
    :cond_d
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    if-nez p0, :cond_28

    .line 1406
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get wifiConfiguration for "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_28
    return-object p0
.end method

.method private getWifiConfigurations(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 1390
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    if-nez p0, :cond_d

    const-string p0, "SemIWCMonitor"

    const-string p1, "getWifiConfiguration : could not get wifiConfigManager"

    .line 1391
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1395
    :cond_d
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getWifiInfo()Landroid/net/wifi/WifiInfo;
    .registers 2

    .line 2300
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo(Z)Landroid/net/wifi/WifiInfo;

    move-result-object p0

    return-object p0
.end method

.method private static ignoreSimCheck()Z
    .registers 2

    .line 2253
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    if-eqz v0, :cond_14

    const-string v0, "SimCheck.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private isAirplaneModeEnabled()Z
    .registers 3

    .line 1386
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method private isConnectedWifi()Z
    .registers 1

    .line 815
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isConnected()Z

    move-result p0

    return p0
.end method

.method private isCurrentTimeWithinSinceEnteringInvalidState(I)Z
    .registers 8

    .line 978
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastInvalidEnterTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_21

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastInvalidEnterTimestamp:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_21

    .line 979
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastInvalidEnterTimestamp:J

    sub-long/2addr v0, v2

    int-to-long p0, p1

    cmp-long p0, v0, p0

    if-gez p0, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method private isExcludedBssid()Z
    .registers 8

    .line 1450
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isConnectedWifi()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 1451
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 1452
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getMatchedSemWifiConfig(Landroid/net/wifi/WifiInfo;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isSkipInternetCheckOnSemWifiConfig(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    move-result v2

    move v3, v1

    move v4, v3

    goto :goto_42

    .line 1454
    :cond_14
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    if-eqz v0, :cond_1f

    const-string v0, "SemIWCMonitor"

    const-string v2, "Use mPreviousWifiInfo"

    .line 1455
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 1457
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getMatchedSemWifiConfig(Landroid/net/wifi/WifiInfo;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isSkipInternetCheckOnSemWifiConfig(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    move-result v2

    .line 1458
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRemovedConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_3f

    .line 1459
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 1460
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object v3

    .line 1459
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isSkipInternetCheckOnSemWifiConfig(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    move-result v3

    move v4, v3

    move v3, v2

    move v2, v1

    goto :goto_42

    :cond_3f
    move v4, v1

    move v3, v2

    move v2, v4

    .line 1463
    :goto_42
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isMobileHotspot(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-nez v0, :cond_52

    if-nez v2, :cond_52

    if-nez v4, :cond_52

    if-nez v3, :cond_52

    .line 1464
    iget-boolean v5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mOnlyThisTimeSelected:Z

    if-eqz v5, :cond_53

    :cond_52
    const/4 v1, 0x1

    :cond_53
    if-eqz v1, :cond_a1

    .line 1467
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1468
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isConnectedWifi()Z

    move-result v6

    if-eqz v6, :cond_63

    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    goto :goto_65

    :cond_63
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousBssid:Ljava/lang/String;

    .line 1469
    :goto_65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentConfigKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "isMHS "

    .line 1470
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "OnlyTimeTime "

    .line 1471
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mOnlyThisTimeSelected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1472
    invoke-direct {p0, v2, v4, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->buildLogNoInternetConfig(ZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1474
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Excluded network from IWC"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a1
    return v1
.end method

.method public static isHomeDefault(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .registers 3

    .line 668
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 669
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 670
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    goto :goto_18

    :cond_16
    const/4 p0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 p0, 0x1

    :goto_19
    return p0
.end method

.method private isMobileHotspot(Landroid/net/wifi/WifiInfo;)Z
    .registers 8

    const/4 p0, 0x0

    if-eqz p1, :cond_25

    .line 2193
    sget-object v0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->MHS_PRIVATE_NETWORK_MASK:[I

    array-length v1, v0

    move v2, p0

    :goto_7
    if-ge v2, v1, :cond_25

    aget v3, v0, v2

    .line 2194
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v4

    const v5, 0xffffff

    and-int/2addr v4, v5

    if-ne v4, v3, :cond_22

    .line 2195
    sget-boolean p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    if-eqz p0, :cond_20

    const-string p0, "SemIWCMonitor"

    const-string p1, "This network IP is for Mobile hotspot"

    .line 2196
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x1

    return p0

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_25
    return p0
.end method

.method private isNoInternetAccessExpected(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z
    .registers 2

    if-eqz p1, :cond_7

    .line 1424
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected()Z

    move-result p0

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method private isNoInternetAccessExpectedSemWifiConfig()Z
    .registers 7

    .line 1485
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isConnectedWifi()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 1486
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 1487
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getMatchedSemWifiConfig(Landroid/net/wifi/WifiInfo;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isNoInternetAccessExpected(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    move-result v0

    move v2, v1

    move v3, v2

    goto :goto_42

    .line 1489
    :cond_14
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    if-eqz v0, :cond_1f

    const-string v0, "SemIWCMonitor"

    const-string v2, "Use mPreviousWifiInfo"

    .line 1490
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 1492
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getMatchedSemWifiConfig(Landroid/net/wifi/WifiInfo;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isNoInternetAccessExpected(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    move-result v0

    .line 1493
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRemovedConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_3f

    .line 1494
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 1495
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object v2

    .line 1494
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isNoInternetAccessExpected(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    move-result v2

    move v3, v2

    move v2, v0

    move v0, v1

    goto :goto_42

    :cond_3f
    move v2, v0

    move v0, v1

    move v3, v0

    :goto_42
    if-nez v0, :cond_48

    if-nez v3, :cond_48

    if-eqz v2, :cond_49

    :cond_48
    const/4 v1, 0x1

    :cond_49
    if-eqz v1, :cond_7d

    .line 1501
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1502
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isConnectedWifi()Z

    move-result v5

    if-eqz v5, :cond_59

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    goto :goto_5b

    :cond_59
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousBssid:Ljava/lang/String;

    .line 1503
    :goto_5b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentConfigKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1504
    invoke-direct {p0, v0, v3, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->buildLogNoInternetConfig(ZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1506
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Don\'t update QAI"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7d
    return v1
.end method

.method private isSamsungSpecificAp(Ljava/lang/String;)Z
    .registers 5

    .line 2205
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/ScanPool;->getScanResults()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 2206
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2207
    sget-boolean v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    if-eqz v1, :cond_2d

    .line 2208
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "SemIWCMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    :cond_2d
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "[SEC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_39
    const/4 p0, 0x0

    return p0
.end method

.method private isService(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 793
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentServicePackageNameList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 794
    :try_start_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentServicePackageNameList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 795
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 p0, 0x1

    .line 796
    monitor-exit v1

    return p0

    .line 799
    :cond_22
    monitor-exit v1

    return v0

    :catchall_24
    move-exception p0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw p0
.end method

.method private isSkipInternetCheckOnSemWifiConfig(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z
    .registers 3

    .line 1430
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mManualDisconnectPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1431
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isNoInternetAccessExpected(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method private isVendorAp(Landroid/net/wifi/WifiInfo;)Z
    .registers 5

    .line 2179
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getWifiConfiguration(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "SemIWCMonitor"

    if-nez p0, :cond_f

    const-string p0, "isVendorAp returned false (wifiConfig == null)"

    .line 2181
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 2185
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPasspoint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " carrierId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isEphemeral="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2186
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2185
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    if-lez p0, :cond_42

    const/4 p1, 0x1

    :cond_42
    return p1
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 2

    if-eqz p1, :cond_9

    const p1, 0x87002

    .line 620
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->sendMessage(I)V

    goto :goto_f

    :cond_9
    const p1, 0x87003

    .line 622
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->sendMessage(I)V

    :goto_f
    return-void
.end method

.method private synthetic lambda$new$1(II)V
    .registers 3

    if-eqz p1, :cond_5

    const/4 p2, 0x2

    if-ne p1, p2, :cond_c

    .line 631
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->lastCallerInfoCallback:Ljava/util/function/BiConsumer;

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getLastCallerInfoForSta(Ljava/util/function/BiConsumer;)V

    :cond_c
    return-void
.end method

.method private loadIWCDbgFile()Ljava/lang/String;
    .registers 3

    .line 1883
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_5
    const-string v0, "/data/misc/wifi/.iwcd"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 1885
    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_14} :catch_33

    .line 1888
    :goto_14
    :try_start_14
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 1889
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_27

    goto :goto_14

    .line 1891
    :cond_23
    :try_start_23
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_33

    goto :goto_3a

    :catchall_27
    move-exception v1

    if-eqz v0, :cond_32

    .line 1885
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception v0

    :try_start_2f
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_32
    :goto_32
    throw v1
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_33} :catch_33

    :catch_33
    const-string v0, "SemIWCMonitor"

    const-string v1, "loadIWCDbgFile() IOException"

    .line 1892
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    :goto_3a
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized load_model_obj()V
    .registers 7

    monitor-enter p0

    .line 855
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v0

    .line 856
    new-instance v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;-><init>()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_4f

    .line 858
    :try_start_a
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreferenceFile:Lcom/samsung/android/server/wifi/iwc/SemIWCJsonFile;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/iwc/SemIWCJsonFile;->readFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;->setIWCJson(Ljava/lang/String;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLogFile:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    .line 859
    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;->setIWCLogFile(Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_19} :catch_1a
    .catchall {:try_start_a .. :try_end_19} :catchall_4f

    goto :goto_1e

    :catch_1a
    move-exception v3

    .line 861
    :try_start_1b
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 863
    :goto_1e
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;->create()Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->setQtables(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;)V

    const-string v2, "load_model_obj "

    .line 864
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "success to load_model_obj(org.json) in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v4

    sub-long/2addr v4, v0

    long-to-double v0, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 864
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_1b .. :try_end_4d} :catchall_4f

    .line 866
    monitor-exit p0

    return-void

    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V
    .registers 5

    .line 716
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    if-eqz v0, :cond_2c

    .line 717
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

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemIWCMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return-void
.end method

.method public static makeIWCMonitor(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)Lcom/samsung/android/server/wifi/SemIWCMonitor;
    .registers 4

    const-string v0, "SemIWCMonitor"

    const-string v1, "makeIWCMonitor starting up... serialVersionUID = 20181101"

    .line 647
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 650
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 651
    new-instance v0, Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    const/4 p0, 0x0

    .line 652
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->setLogOnlyTransitions(Z)V

    .line 653
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->start()V

    const p0, 0x87004

    .line 654
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->sendMessage(I)V

    .line 659
    new-instance p0, Ljava/io/File;

    const-string p1, "/data/misc/wifi_share_profile/qtables_restore.json"

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_35

    .line 661
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_35
    return-object v0
.end method

.method private declared-synchronized networkStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .registers 13

    monitor-enter p0

    .line 1602
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v8

    .line 1604
    sget-object v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$11;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2f8

    const/4 v0, 0x2

    const/4 v10, 0x0

    if-eq p1, v0, :cond_133

    const/4 v0, 0x3

    if-eq p1, v0, :cond_102

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1c

    goto/16 :goto_342

    .line 1697
    :cond_1c
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    if-nez p1, :cond_22

    goto/16 :goto_342

    .line 1701
    :cond_22
    monitor-enter p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_344

    .line 1702
    :try_start_23
    iput-wide v8, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampDisconnected:J

    .line 1703
    sget-boolean p1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    if-eqz p1, :cond_41

    const-string p1, "SemIWCMonitor"

    .line 1704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TS updated timeStampDisconnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampDisconnected:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    :cond_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_23 .. :try_end_42} :catchall_ff

    .line 1707
    :try_start_42
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousBssid:Ljava/lang/String;

    .line 1709
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iput-object p1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    .line 1710
    iget p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousRssi:I

    iput p1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->capRSSI:I

    .line 1711
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Network disconnected event(intermediate), timestamp ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", RSSI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->capRSSI:I

    .line 1712
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1711
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Foreground package,"

    .line 1713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    sget-object p1, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->NETWORK_DISCONNECTED:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-direct {p0, p1, v8, v9}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateTable(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;J)V

    .line 1715
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->save_model_obj()V

    .line 1718
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRemovedConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_c2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentConfigKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getProfileKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e4

    .line 1719
    :cond_c2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastConnBssWithoutRemove:Ljava/lang/String;

    const-string p1, "SemIWCMonitor"

    .line 1720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATED mLastConnBssWithoutRemove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastConnBssWithoutRemove:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    :cond_e4
    new-instance p1, Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {p1, v0}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 1723
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->detectRewardEventWhenNetworkDisconnected()V

    .line 1725
    iput-object v10, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    .line 1726
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 1728
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mDisconnectedState:Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    :try_end_fd
    .catchall {:try_start_42 .. :try_end_fd} :catchall_344

    goto/16 :goto_342

    :catchall_ff
    move-exception p1

    .line 1705
    :try_start_100
    monitor-exit p0
    :try_end_101
    .catchall {:try_start_100 .. :try_end_101} :catchall_ff

    :try_start_101
    throw p1

    .line 1693
    :cond_102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Disconnecting event, timestamp ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", new AP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_342

    .line 1616
    :cond_133
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez p1, :cond_144

    const-string p1, "SemIWCMonitor"

    const-string v0, "mCurrentWifiInfo is null on networkStateChanged(Connected)"

    .line 1618
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_142
    .catchall {:try_start_101 .. :try_end_142} :catchall_344

    .line 1619
    monitor-exit p0

    return-void

    .line 1621
    :cond_144
    :try_start_144
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p1

    .line 1622
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    if-eqz v0, :cond_17f

    if-eqz p1, :cond_155

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_155

    goto :goto_17f

    :cond_155
    if-eqz p1, :cond_342

    .line 1688
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_342

    const-string p1, "SemIWCMonitor"

    .line 1689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignore duplicated event. bssid - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_342

    .line 1623
    :cond_17f
    :goto_17f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    if-eqz v0, :cond_1b1

    const-string v0, "SemIWCMonitor"

    const-string v1, "Connected event comes up without disconnected event.. Discard related policies.."

    .line 1624
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mAutoDisconnectionPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid()Z

    move-result v0

    if-eqz v0, :cond_197

    .line 1627
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mAutoDisconnectionPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->discard()V

    .line 1628
    :cond_197
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mManualDisconnectPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1a4

    .line 1629
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mManualDisconnectPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->discard()V

    .line 1630
    :cond_1a4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mManualReconnectPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1b1

    .line 1631
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mManualReconnectPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->discard()V

    .line 1634
    :cond_1b1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousBssid:Ljava/lang/String;

    .line 1635
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    .line 1636
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentNetworkId:I

    .line 1637
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentRssi:I

    .line 1638
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateConfigKey()V

    .line 1639
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    const/4 p1, -0x1

    if-eqz v2, :cond_1dd

    iget v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentNetworkId:I

    if-eq v3, p1, :cond_1dd

    .line 1640
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mConnDiscInfoHist:Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentConfigKey:Ljava/lang/String;

    const/4 v7, 0x0

    move-wide v5, v8

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->addOrUpdate(ILjava/lang/String;ILjava/lang/String;JI)V

    .line 1644
    :cond_1dd
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->setCurrentAP(Ljava/lang/String;)V

    .line 1645
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->updateQAI()I

    .line 1647
    monitor-enter p0
    :try_end_1ea
    .catchall {:try_start_144 .. :try_end_1ea} :catchall_344

    .line 1648
    :try_start_1ea
    iput-wide v8, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampConnected:J

    .line 1649
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    if-eqz v0, :cond_208

    const-string v0, "SemIWCMonitor"

    .line 1650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TS updated timeStampConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampConnected:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    :cond_208
    monitor-exit p0
    :try_end_209
    .catchall {:try_start_1ea .. :try_end_209} :catchall_2f5

    .line 1653
    :try_start_209
    iget v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLinkLossOccurred:I

    const/4 v1, 0x0

    if-lez v0, :cond_267

    .line 1654
    iput-wide v8, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampPoorLinkTrig:J

    .line 1655
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    if-eqz v0, :cond_22c

    const-string v0, "SemIWCMonitor"

    .line 1656
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TS updated timeStampPoorLinkTrig = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampPoorLinkTrig:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22c
    const-string v0, "Network connected while poor link. Ignore previous poor link, timestamp ="

    .line 1657
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampPoorLinkTrig:J

    .line 1658
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", RSSI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->capRSSI:I

    .line 1659
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", AP:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1657
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    iput v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLinkLossOccurred:I

    .line 1662
    iput v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousLinkLoss:I

    .line 1664
    :cond_267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SNS state, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-boolean v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->snsFlag:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", timestamp ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1665
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", edgeflag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-boolean v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->edgeFlag:Z

    .line 1667
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", NEW AP:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1664
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateTableIntermediateNetworkConnected()V

    .line 1671
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->detectRewardEventWhenNetworkConnected()V

    .line 1672
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mSwitchedTooShortPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->adopt()V

    .line 1674
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mDisconnectToConnectNewNetwork:Z

    .line 1676
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getCurrentQAI()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentQAI:I

    .line 1677
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isExcludedBssid()Z

    move-result v0

    const v1, 0x210c8

    if-eqz v0, :cond_2da

    .line 1678
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->sendMessageToWCM(II)Z

    goto :goto_2e3

    .line 1680
    :cond_2da
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurSNS:Z

    if-eqz v0, :cond_2e0

    iget p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentQAI:I

    :cond_2e0
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->sendMessageToWCM(II)Z

    .line 1683
    :goto_2e3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mDisconnectedState:Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;

    if-ne p1, v0, :cond_2f0

    .line 1684
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mConnectedState:Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnectedState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1686
    :cond_2f0
    iput-object v10, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRemovedConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1687
    iput-object v10, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousWifiInfo:Landroid/net/wifi/WifiInfo;
    :try_end_2f4
    .catchall {:try_start_209 .. :try_end_2f4} :catchall_344

    goto :goto_342

    :catchall_2f5
    move-exception p1

    .line 1651
    :try_start_2f6
    monitor-exit p0
    :try_end_2f7
    .catchall {:try_start_2f6 .. :try_end_2f7} :catchall_2f5

    :try_start_2f7
    throw p1

    .line 1606
    :cond_2f8
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez p1, :cond_309

    const-string p1, "SemIWCMonitor"

    const-string v0, "mCurrentWifiInfo is null on networkStateChanged(Connecting)"

    .line 1608
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_307
    .catchall {:try_start_2f7 .. :try_end_307} :catchall_344

    .line 1609
    monitor-exit p0

    return-void

    .line 1611
    :cond_309
    :try_start_309
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    .line 1612
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Connecting event, timestamp ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", new AP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_342
    .catchall {:try_start_309 .. :try_end_342} :catchall_344

    .line 1731
    :cond_342
    :goto_342
    monitor-exit p0

    return-void

    :catchall_344
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private registerWifiMonitorHandler()V
    .registers 5

    .line 690
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRegisteredWifiMonitorHandler:Z

    if-nez v0, :cond_33

    .line 691
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerWifiMonitorHandler iface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemIWCMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    const v2, 0x24004

    .line 695
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 694
    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    const/4 v0, 0x1

    .line 696
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRegisteredWifiMonitorHandler:Z

    :cond_33
    return-void
.end method

.method private resetLearningData(I)V
    .registers 7

    .line 1843
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/qtables.json"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1845
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    const-string v2, "SemIWCMonitor"

    if-eqz v1, :cond_32

    const-string v1, "Initialize Qtables"

    .line 1846
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->setCurrentAP(Ljava/lang/String;)V

    .line 1848
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    new-instance v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLogFile:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    invoke-direct {v3, v4}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;-><init>(Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->setQtables(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;)V

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2d

    .line 1851
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->setDefaultQAI()V

    goto :goto_32

    .line 1853
    :cond_2d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->setDefaultQAI(I)V

    .line 1857
    :cond_32
    :goto_32
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const-string p1, "no file"

    if-eqz p0, :cond_47

    const-string p0, "Delete success : /data/misc/wifi/qtables.json"

    .line 1858
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    :try_start_3f
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_42
    .catch Ljava/lang/SecurityException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_4a

    .line 1862
    :catch_43
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 1865
    :cond_47
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4a
    return-void
.end method

.method private declared-synchronized save_model_obj()V
    .registers 7

    monitor-enter p0

    .line 869
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v0

    .line 870
    new-instance v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;-><init>()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_46

    .line 872
    :try_start_a
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreferenceFile:Lcom/samsung/android/server/wifi/iwc/SemIWCJsonFile;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->getQtables()Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;->toJsonString(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/server/wifi/iwc/SemIWCJsonFile;->writeData(Ljava/lang/String;)V
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_19} :catch_1a
    .catchall {:try_start_a .. :try_end_19} :catchall_46

    goto :goto_1e

    :catch_1a
    move-exception v2

    .line 874
    :try_start_1b
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1e
    const-string v2, "save_model_obj "

    .line 876
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "success to save_model_obj(org.json) in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v4

    sub-long/2addr v4, v0

    long-to-double v0, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 876
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_1b .. :try_end_44} :catchall_46

    .line 878
    monitor-exit p0

    return-void

    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendDebugIntent(Z)V
    .registers 5

    .line 889
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    if-nez v0, :cond_5

    return-void

    .line 892
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.IWC_REWARD_EVENT_DEBUG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    const-string v2, "kind"

    .line 893
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "event"

    const-string v2, "NONE"

    .line 894
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "bssid"

    .line 895
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "tableindex"

    const/4 v2, -0x1

    .line 896
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "lastvalue1"

    .line 897
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "lastvalue2"

    .line 898
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "lastvalue3"

    .line 899
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ss_poor"

    .line 900
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "qai"

    .line 901
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 903
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private sendMessageToWCM(II)Z
    .registers 10

    .line 1772
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1773
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1776
    sget-boolean v2, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    const-string v3, "SemIWCMonitor"

    if-eqz v2, :cond_23

    .line 1777
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMessageToWCM, Type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    :cond_23
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWcmChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v4, 0x0

    if-nez v2, :cond_2e

    const-string p0, "mWcmChannel is null"

    .line 1780
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2e
    const-string v2, "bssid"

    packed-switch p1, :pswitch_data_f4

    .line 1807
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Undefined Message Type : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 1803
    :pswitch_48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REQUEST-INTERNET-CHECK CID: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "cid"

    .line 1804
    invoke-virtual {v1, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_b0

    .line 1799
    :pswitch_5f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "REQUEST-NETWORK-SWITCH-TO-WIFI reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1800
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8c

    .line 1795
    :pswitch_76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "REQUEST-NETWORK-SWITCH-TO-MOBILE reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1796
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8c
    move-object v2, p2

    goto :goto_b0

    .line 1786
    :pswitch_8e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IWC-CURRENT-QAI QAI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1787
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "qai"

    .line 1788
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, -0x1

    if-ne p2, v2, :cond_af

    .line 1792
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->sendDebugIntent(I)V

    :cond_af
    move-object v2, v5

    .line 1811
    :goto_b0
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1812
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1813
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWcmChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 1815
    sget-boolean p1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    const-string p2, "Send "

    if-eqz p1, :cond_d2

    .line 1816
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    :cond_d2
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->MISC_DBG:Z

    if-eqz p1, :cond_df

    .line 1818
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mContext:Landroid/content/Context;

    invoke-static {p1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1819
    :cond_df
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_f4
    .packed-switch 0x210c8
        :pswitch_8e
        :pswitch_76
        :pswitch_5f
        :pswitch_48
    .end packed-switch
.end method

.method private declared-synchronized setBigDataMIWC()V
    .registers 17

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1973
    :try_start_3
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->getQtables()Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    move-result-object v2

    .line 1975
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    if-nez v3, :cond_1a

    const-string v2, "SemIWCMonitor"

    const-string v3, "mRLEngine.intf.mBdTracking is null"

    .line 1976
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_7f0

    .line 1977
    monitor-exit p0

    return-void

    .line 1979
    :cond_1a
    :try_start_1a
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getIdInfo()I

    move-result v3

    if-lez v3, :cond_7ba

    if-nez v2, :cond_24

    goto/16 :goto_7ba

    .line 1992
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getSmartNetworkSwitchAvailability()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2e

    move v3, v5

    goto :goto_2f

    :cond_2e
    move v3, v4

    .line 1993
    :goto_2f
    iget-boolean v6, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurSNS:Z

    if-eqz v6, :cond_35

    move v6, v5

    goto :goto_36

    :cond_35
    move v6, v4

    .line 1994
    :goto_36
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v7, v7, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v7, v7, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/4 v8, 0x2

    if-eqz v3, :cond_40

    goto :goto_41

    :cond_40
    move v6, v8

    :goto_41
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mContext:Landroid/content/Context;

    .line 1995
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v9, "wifi_num_of_switch_to_mobile_data_toggle"

    invoke-static {v3, v9, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1994
    invoke-virtual {v7, v6, v3}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setSNSUIStateInfo(II)V

    .line 1997
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    iget v6, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->mDefaultQAI:I

    invoke-virtual {v3, v6}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setDefaultQaiInfo(I)V

    .line 1998
    iget-object v3, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v6, v4

    move v7, v6

    move v9, v7

    move v10, v9

    move v11, v10

    :goto_66
    if-ge v6, v3, :cond_8d

    .line 2002
    iget-object v12, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    .line 2003
    invoke-virtual {v12}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->getSteadyState()Z

    move-result v13

    if-ne v13, v5, :cond_8a

    add-int/lit8 v7, v7, 0x1

    .line 2005
    invoke-virtual {v12}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->getState()I

    move-result v12

    if-nez v12, :cond_81

    add-int/lit8 v9, v9, 0x1

    goto :goto_8a

    :cond_81
    if-ne v12, v5, :cond_86

    add-int/lit8 v10, v10, 0x1

    goto :goto_8a

    :cond_86
    if-ne v12, v8, :cond_8a

    add-int/lit8 v11, v11, 0x1

    :cond_8a
    :goto_8a
    add-int/lit8 v6, v6, 0x1

    goto :goto_66

    .line 2015
    :cond_8d
    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v6, v3, v7}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setQTCountInfo(II)V

    .line 2016
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    iget-object v6, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    iget-object v7, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->coreApList:Ljava/util/Map;

    .line 2017
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    .line 2016
    invoke-virtual {v3, v6, v7, v2}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setListCountInfo(III)V

    .line 2018
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v2, v9, v10, v11}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setSSCountInfo(III)V

    const-string v2, "setBigDataMIWC - "

    .line 2021
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ID: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getIdInfo()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2022
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", AP OUI: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getOUIInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2023
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", CurrentState: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getStateInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2024
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", PrevQAI: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getQAIInfo(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2025
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", CurrentQAI: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v2, v5}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getQAIInfo(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2026
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Event List: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getEVInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2027
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Qtable: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getQTableValueInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2028
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Poorlink Count: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getPoorLinkCountInfo()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2029
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", SNS UI State: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getSNSUIStateInfo()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2030
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", SNS Toggle Count: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getSNSToggleInfo()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2031
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", QAI1 SS Qtable Count: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v2, v5}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getSSCountInfo(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2032
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", QAI2 SS Qtable Count: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v2, v8}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getSSCountInfo(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2033
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", QAI3 SS Qtable Count: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getSSCountInfo(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2034
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Default QAI: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getDefaultQaiInfo()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2035
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", SS Time: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getSSTakenTimeInfo()J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2036
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Qtable Count: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getQTCountInfo(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2037
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", SS Qtable Count: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v2, v5}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getQTCountInfo(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2038
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Candidate List Count: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getListCountInfo(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2039
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Core List Count: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v2, v5}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getListCountInfo(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2040
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Probation List Count: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v2, v8}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getListCountInfo(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2041
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Event1 Count: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v2, v5}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->get24HEventAccWithIdx(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2042
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Event2 Count: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v2, v8}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->get24HEventAccWithIdx(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2043
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Event3 Count: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v2, v6}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->get24HEventAccWithIdx(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2044
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Event4 Count: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->get24HEventAccWithIdx(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2045
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Event5 Count: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/4 v9, 0x5

    invoke-virtual {v2, v9}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->get24HEventAccWithIdx(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2046
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Event6 Count: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/4 v10, 0x6

    invoke-virtual {v2, v10}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->get24HEventAccWithIdx(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2047
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Event7 Count: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/4 v11, 0x7

    invoke-virtual {v2, v11}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->get24HEventAccWithIdx(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2048
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Event8 Count: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->get24HEventAccWithIdx(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2049
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Event9 Count: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/16 v13, 0x9

    invoke-virtual {v2, v13}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->get24HEventAccWithIdx(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2050
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Event10 Count: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/16 v14, 0xa

    invoke-virtual {v2, v14}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->get24HEventAccWithIdx(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2051
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Event11 Count: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/16 v15, 0xb

    invoke-virtual {v2, v15}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->get24HEventAccWithIdx(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2052
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Event12 Count: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/16 v15, 0xc

    invoke-virtual {v2, v15}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->get24HEventAccWithIdx(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2053
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Event13 Count: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/16 v15, 0xd

    invoke-virtual {v2, v15}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->get24HEventAccWithIdx(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2054
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Tips Showing Duration: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getTipsShowingDuration()J

    move-result-wide v14

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2055
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Tips clicked: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getTipsClick()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2057
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v14, "MIWC"

    const-string v15, "IWC_ID"

    iget-object v13, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v13, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v13, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    .line 2058
    invoke-virtual {v13}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getIdInfo()I

    move-result v13

    .line 2057
    invoke-virtual {v3, v14, v15, v13}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2059
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v13, "MIWC"

    const-string v14, "IWC_OUI"

    iget-object v15, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v15, v15, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v15, v15, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    .line 2060
    invoke-virtual {v15}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getOUIInfo()Ljava/lang/String;

    move-result-object v15

    .line 2059
    invoke-virtual {v3, v13, v14, v15}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2061
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v13, "MIWC"

    const-string v14, "IWC_CS"

    iget-object v15, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v15, v15, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v15, v15, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    .line 2062
    invoke-virtual {v15}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getStateInfo()Ljava/lang/String;

    move-result-object v15

    .line 2061
    invoke-virtual {v3, v13, v14, v15}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2063
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v13, "MIWC"

    const-string v14, "IWC_PQ"

    iget-object v15, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v15, v15, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v15, v15, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    .line 2064
    invoke-virtual {v15, v4}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getQAIInfo(I)I

    move-result v15

    .line 2063
    invoke-virtual {v3, v13, v14, v15}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2065
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v13, "MIWC"

    const-string v14, "IWC_NQ"

    iget-object v15, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v15, v15, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v15, v15, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    .line 2066
    invoke-virtual {v15, v5}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getQAIInfo(I)I

    move-result v15

    .line 2065
    invoke-virtual {v3, v13, v14, v15}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2067
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v13, "MIWC"

    const-string v14, "IWC_EL"

    iget-object v15, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v15, v15, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v15, v15, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    .line 2068
    invoke-virtual {v15}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getEVInfo()Ljava/lang/String;

    move-result-object v15

    .line 2067
    invoke-virtual {v3, v13, v14, v15}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2069
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v13, "MIWC"

    const-string v14, "IWC_QT"

    iget-object v15, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v15, v15, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v15, v15, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    .line 2070
    invoke-virtual {v15}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getQTableValueInfo()Ljava/lang/String;

    move-result-object v15

    .line 2069
    invoke-virtual {v3, v13, v14, v15}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2071
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v13, "MIWC"

    const-string v14, "IWC_PON"

    iget-object v15, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v15, v15, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v15, v15, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    .line 2072
    invoke-virtual {v15}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getPoorLinkCountInfo()I

    move-result v15

    .line 2071
    invoke-virtual {v3, v13, v14, v15}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2073
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v13, "MIWC"

    const-string v14, "IWC_SUI"

    iget-object v15, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v15, v15, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v15, v15, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    .line 2074
    invoke-virtual {v15}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getSNSUIStateInfo()I

    move-result v15

    .line 2073
    invoke-virtual {v3, v13, v14, v15}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2075
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v13, "MIWC"

    const-string v14, "IWC_STO"

    iget-object v15, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v15, v15, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v15, v15, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    .line 2076
    invoke-virtual {v15}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getSNSToggleInfo()I

    move-result v15

    .line 2075
    invoke-virtual {v3, v13, v14, v15}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2077
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v13, "MIWC"

    const-string v14, "IWC_SS1"

    iget-object v15, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v15, v15, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v15, v15, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    .line 2078
    invoke-virtual {v15, v5}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getSSCountInfo(I)I

    move-result v15

    .line 2077
    invoke-virtual {v3, v13, v14, v15}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2079
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v13, "MIWC"

    const-string v14, "IWC_SS2"

    iget-object v15, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v15, v15, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v15, v15, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    .line 2080
    invoke-virtual {v15, v8}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getSSCountInfo(I)I

    move-result v15

    .line 2079
    invoke-virtual {v3, v13, v14, v15}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2081
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v13, "MIWC"

    const-string v14, "IWC_SS3"

    iget-object v15, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v15, v15, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v15, v15, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    .line 2082
    invoke-virtual {v15, v6}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getSSCountInfo(I)I

    move-result v15

    .line 2081
    invoke-virtual {v3, v13, v14, v15}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2083
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v13, "MIWC"

    const-string v14, "IWC_DQ"

    iget-object v15, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v15, v15, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v15, v15, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    .line 2084
    invoke-virtual {v15}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getDefaultQaiInfo()I

    move-result v15

    .line 2083
    invoke-virtual {v3, v13, v14, v15}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2085
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v13, "MIWC"

    const-string v14, "IWC_SST"

    iget-object v15, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v15, v15, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v15, v15, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    .line 2086
    invoke-virtual {v15}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getSSTakenTimeInfo()J

    move-result-wide v11

    .line 2085
    invoke-virtual {v3, v13, v14, v11, v12}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;J)Z

    .line 2087
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v11, "MIWC"

    const-string v12, "IWC_QTN"

    iget-object v13, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v13, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v13, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    .line 2088
    invoke-virtual {v13, v4}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getQTCountInfo(I)I

    move-result v13

    .line 2087
    invoke-virtual {v3, v11, v12, v13}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2089
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v11, "MIWC"

    const-string v12, "IWC_SSN"

    iget-object v13, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v13, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v13, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    .line 2090
    invoke-virtual {v13, v5}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getQTCountInfo(I)I

    move-result v13

    .line 2089
    invoke-virtual {v3, v11, v12, v13}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2091
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v11, "MIWC"

    const-string v12, "IWC_CLN"

    iget-object v13, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v13, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v13, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    .line 2092
    invoke-virtual {v13, v4}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getListCountInfo(I)I

    move-result v4

    .line 2091
    invoke-virtual {v3, v11, v12, v4}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2093
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v4, "MIWC"

    const-string v11, "IWC_RLN"

    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v12, v12, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v12, v12, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    .line 2094
    invoke-virtual {v12, v5}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getListCountInfo(I)I

    move-result v12

    .line 2093
    invoke-virtual {v3, v4, v11, v12}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2095
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v4, "MIWC"

    const-string v11, "IWC_PLN"

    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v12, v12, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v12, v12, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    .line 2096
    invoke-virtual {v12, v8}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getListCountInfo(I)I

    move-result v12

    .line 2095
    invoke-virtual {v3, v4, v11, v12}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2097
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v4, "MIWC"

    const-string v11, "IWC_E1"

    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v12, v12, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v12, v12, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    .line 2098
    invoke-virtual {v12, v5}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->get24HEventAccWithIdx(I)I

    move-result v5

    .line 2097
    invoke-virtual {v3, v4, v11, v5}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2099
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v4, "MIWC"

    const-string v5, "IWC_E2"

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v11, v11, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v11, v11, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    .line 2100
    invoke-virtual {v11, v8}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->get24HEventAccWithIdx(I)I

    move-result v8

    .line 2099
    invoke-virtual {v3, v4, v5, v8}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2101
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v4, "MIWC"

    const-string v5, "IWC_E3"

    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v8, v8, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v8, v8, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    .line 2102
    invoke-virtual {v8, v6}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->get24HEventAccWithIdx(I)I

    move-result v6

    .line 2101
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2103
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v4, "MIWC"

    const-string v5, "IWC_E4"

    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    .line 2104
    invoke-virtual {v6, v7}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->get24HEventAccWithIdx(I)I

    move-result v6

    .line 2103
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2105
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v4, "MIWC"

    const-string v5, "IWC_E5"

    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    .line 2106
    invoke-virtual {v6, v9}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->get24HEventAccWithIdx(I)I

    move-result v6

    .line 2105
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2107
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v4, "MIWC"

    const-string v5, "IWC_E6"

    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    .line 2108
    invoke-virtual {v6, v10}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->get24HEventAccWithIdx(I)I

    move-result v6

    .line 2107
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2109
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v4, "MIWC"

    const-string v5, "IWC_E7"

    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/4 v7, 0x7

    .line 2110
    invoke-virtual {v6, v7}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->get24HEventAccWithIdx(I)I

    move-result v6

    .line 2109
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2111
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v4, "MIWC"

    const-string v5, "IWC_E8"

    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/16 v7, 0x8

    .line 2112
    invoke-virtual {v6, v7}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->get24HEventAccWithIdx(I)I

    move-result v6

    .line 2111
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2113
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v4, "MIWC"

    const-string v5, "IWC_E9"

    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/16 v7, 0x9

    .line 2114
    invoke-virtual {v6, v7}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->get24HEventAccWithIdx(I)I

    move-result v6

    .line 2113
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2115
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v4, "MIWC"

    const-string v5, "IWC_E10"

    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/16 v7, 0xa

    .line 2116
    invoke-virtual {v6, v7}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->get24HEventAccWithIdx(I)I

    move-result v6

    .line 2115
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2117
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v4, "MIWC"

    const-string v5, "IWC_E11"

    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/16 v7, 0xb

    .line 2118
    invoke-virtual {v6, v7}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->get24HEventAccWithIdx(I)I

    move-result v6

    .line 2117
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2119
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v4, "MIWC"

    const-string v5, "IWC_E12"

    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/16 v7, 0xc

    .line 2120
    invoke-virtual {v6, v7}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->get24HEventAccWithIdx(I)I

    move-result v6

    .line 2119
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2121
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v4, "MIWC"

    const-string v5, "IWC_E13"

    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/16 v7, 0xd

    .line 2122
    invoke-virtual {v6, v7}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->get24HEventAccWithIdx(I)I

    move-result v6

    .line 2121
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2123
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v4, "MIWC"

    const-string v5, "IWC_TST"

    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    .line 2124
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getTipsShowingDuration()J

    move-result-wide v6

    .line 2123
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;J)Z

    .line 2125
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v4, "MIWC"

    const-string v5, "IWC_TCL"

    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    .line 2126
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getTipsClick()I

    move-result v6

    .line 2125
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2128
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v4, "MIWC"

    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getIdInfo()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->insertLog(Ljava/lang/String;J)V

    .line 2129
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIwcBigDataManager:Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;

    const-string v4, "MIWC"

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->clearFeature(Ljava/lang/String;)Z

    .line 2131
    sget-boolean v3, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    if-eqz v3, :cond_7af

    const-string v3, "SemIWCMonitor"

    .line 2132
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    :cond_7af
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->cleanBD()V
    :try_end_7b8
    .catchall {:try_start_1a .. :try_end_7b8} :catchall_7f0

    .line 2135
    monitor-exit p0

    return-void

    :cond_7ba
    :goto_7ba
    :try_start_7ba
    const-string v3, ""

    .line 1981
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v4, v4, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v4, v4, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getIdInfo()I

    move-result v4

    if-gtz v4, :cond_7cb

    const-string v3, "No User-Event."

    goto :goto_7cf

    :cond_7cb
    if-nez v2, :cond_7cf

    const-string v3, "No Qtables."

    :cond_7cf
    :goto_7cf
    const-string v2, "SemIWCMonitor"

    .line 1987
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Nothing to send BigData"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->cleanBD()V
    :try_end_7ee
    .catchall {:try_start_7ba .. :try_end_7ee} :catchall_7f0

    .line 1989
    monitor-exit p0

    return-void

    :catchall_7f0
    move-exception v0

    move-object v2, v0

    monitor-exit p0

    throw v2
.end method

.method private setBroadcastReceiver()V
    .registers 3

    .line 702
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private declared-synchronized setIntfSnsFlag()V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "SemIWCMonitor"

    .line 1743
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIntfSnsFlag mCurSNS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurSNS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurSNS:Z

    iput-boolean v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->snsFlag:Z
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 1746
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private smToString(I)Ljava/lang/String;
    .registers 3

    .line 746
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "what:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private unregisterBroadcastReceiver()V
    .registers 2

    .line 706
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_11

    .line 708
    :try_start_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_11

    :catch_a
    const-string p0, "SemIWCMonitor"

    const-string v0, "mBroadcastReceiver : Already unregistered"

    .line 710
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_11
    return-void
.end method

.method private updateConfigKey()V
    .registers 2

    .line 1734
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getWifiConfiguration(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1736
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getProfileKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentConfigKey:Ljava/lang/String;

    goto :goto_16

    :cond_f
    const-string p0, "SemIWCMonitor"

    const-string v0, "WifiConfiguration of current network is null"

    .line 1738
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    return-void
.end method

.method private declared-synchronized updateDebugIntent()V
    .registers 5

    monitor-enter p0

    .line 882
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 883
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    sget-object v1, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->NO_EVENT:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->updateDebugIntent(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;Ljava/lang/String;Z)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 885
    :cond_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateHintList()V
    .registers 4

    monitor-enter p0

    .line 1113
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sem_what_hintcard_have_to_be_shown"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 1116
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_26

    .line 1119
    :cond_16
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2b

    .line 1117
    :cond_26
    :goto_26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_2b
    const-string v0, "1"

    .line 1121
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1122
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1123
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sem_what_hintcard_have_to_be_shown"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_57
    .catchall {:try_start_1 .. :try_end_57} :catchall_59

    .line 1125
    monitor-exit p0

    return-void

    :catchall_59
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateLinkLossNotification()V
    .registers 9

    monitor-enter p0

    :try_start_1
    const-string v0, "SemIWCMonitor"

    .line 925
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "poor link count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLinkLossOccurred:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLinkLossOccurred:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_85

    iget v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousLinkLoss:I

    if-gtz v0, :cond_2c

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPoorLinkState:Lcom/samsung/android/server/wifi/SemIWCMonitor$PoorLinkState;

    if-ne v0, v4, :cond_85

    :cond_2c
    const-string v0, "Good Link, timestamp ="

    .line 928
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampPoorLinkTrig:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  RSSI:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget v5, v5, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->capRSSI:I

    .line 929
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  AP:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Direction: %d Direction (soft): %d"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, -0x1

    .line 930
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v1

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 928
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->sendDebugIntent(Z)V

    .line 934
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mGoodLinkState:Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_152

    .line 935
    :cond_85
    iget v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLinkLossOccurred:I

    if-eqz v0, :cond_152

    const-string v0, "SemIWCMonitor"

    const-string v4, "[POOR_LINK_DETECTED] %d -> %d"

    new-array v5, v3, [Ljava/lang/Object;

    .line 936
    iget v6, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousLinkLoss:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLinkLossOccurred:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastPoorLinkTimestamp:J

    .line 938
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    if-eqz v0, :cond_c8

    const-string v0, "SemIWCMonitor"

    .line 939
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TS updated mLastPoorLinkTimestamp = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastPoorLinkTimestamp:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_c8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampPoorLinkTrig:J

    .line 943
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    if-eqz v0, :cond_ea

    const-string v0, "SemIWCMonitor"

    .line 944
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TS updated timeStampPoorLinkTrig = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampPoorLinkTrig:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_ea
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget v4, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mValidLastRssi:I

    iput v4, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->capRSSI:I

    .line 947
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    iput-object v4, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    .line 948
    invoke-virtual {v0, v4}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->setCurrentAP(Ljava/lang/String;)V

    .line 949
    iget v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLinkLossOccurred:I

    if-gt v0, v3, :cond_134

    const-string v0, "Poor Link, timestamp ="

    .line 950
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampPoorLinkTrig:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  RSSI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->capRSSI:I

    .line 951
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  AP:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 950
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    :cond_134
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    iget v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLinkLossOccurred:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setPoorLinkCountInfo(I)V

    .line 957
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->sendDebugIntent(Z)V

    .line 958
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->algorithmStep()V

    .line 960
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPoorLinkState:Lcom/samsung/android/server/wifi/SemIWCMonitor$PoorLinkState;

    if-eq v0, v1, :cond_152

    .line 961
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    :try_end_152
    .catchall {:try_start_1 .. :try_end_152} :catchall_154

    .line 964
    :cond_152
    :goto_152
    monitor-exit p0

    return-void

    :catchall_154
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateSettings()V
    .registers 8

    .line 759
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIsMobileDataEnabled:Z

    .line 760
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    move v1, v3

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIsMobileDataEnabled:Z

    if-ne v0, v3, :cond_81

    if-nez v1, :cond_81

    .line 764
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/State;

    .line 765
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mMobileDataDisablePolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid()Z

    move-result v1

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mInvalidState:Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;

    if-eq v0, v1, :cond_4a

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPoorLinkState:Lcom/samsung/android/server/wifi/SemIWCMonitor$PoorLinkState;

    if-eq v0, v1, :cond_4a

    .line 767
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getDiffFromLastPoorLink()J

    move-result-wide v3

    const-wide/16 v5, 0x4e20

    cmp-long v1, v3, v5

    if-ltz v1, :cond_4a

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mDisconnectedState:Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;

    if-ne v0, v1, :cond_4e

    .line 768
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastPoorLinkTimestampBeforeDisc:J

    sub-long/2addr v0, v3

    cmp-long v0, v0, v5

    if-gez v0, :cond_4e

    .line 770
    :cond_4a
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->detectRewardEventMobileDataDisable()Z

    goto :goto_81

    .line 773
    :cond_4e
    monitor-enter p0

    .line 774
    :try_start_4f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iput-boolean v2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->edgeFlag:Z

    const-string v0, "Mobile Data Off, timestamp ="

    .line 775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 776
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", edgeflag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-boolean v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->edgeFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 775
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    monitor-exit p0

    goto :goto_81

    :catchall_7e
    move-exception v0

    monitor-exit p0
    :try_end_80
    .catchall {:try_start_4f .. :try_end_80} :catchall_7e

    throw v0

    .line 781
    :cond_81
    :goto_81
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    if-eqz v0, :cond_9d

    const-string v0, "SemIWCMonitor"

    .line 782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSettings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIsMobileDataEnabled:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9d
    return-void
.end method

.method private declared-synchronized updateTable(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;J)V
    .registers 9

    monitor-enter p0

    .line 1132
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isNoInternetAccessExpectedSemWifiConfig()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    const-string p1, "SemIWCMonitor"

    const-string p2, "IWC doesn\'t update QAI for AP that keep connection without internet."

    .line 1133
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_9c

    .line 1134
    monitor-exit p0

    return-void

    .line 1136
    :cond_11
    :try_start_11
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getSteadyStateNum()I

    move-result v0

    .line 1137
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    invoke-virtual {v2, p1, p2, p3}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->updateTable(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;J)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 1140
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isVendorAp(Landroid/net/wifi/WifiInfo;)Z

    move-result p1

    if-eqz p1, :cond_2d

    const-string p1, "Vendor AP"

    const-string p2, " Rebase is not triggered"

    .line 1141
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    .line 1143
    :cond_2d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->rebase()Z

    .line 1146
    :cond_32
    :goto_32
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->updateQAI()I

    move-result p1

    add-int/2addr p1, v1

    .line 1147
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getSteadyStateNum()I

    move-result p2

    .line 1148
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getSmartNetworkSwitchAvailability()I

    move-result p3

    if-ne p3, v1, :cond_45

    move p3, v1

    goto :goto_46

    :cond_45
    const/4 p3, 0x0

    :goto_46
    const-string v2, "snsAvailability"

    .line 1150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", #SteadyState before: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " after: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", qai: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mCurSNS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurSNS:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurSNS:Z

    if-nez v2, :cond_9a

    if-eqz p3, :cond_9a

    if-nez v0, :cond_9a

    if-ne p2, v1, :cond_9a

    if-eq p1, v1, :cond_8d

    const/4 p2, 0x2

    if-ne p1, p2, :cond_9a

    .line 1156
    :cond_8d
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateHintList()V

    .line 1158
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setIdInfo(I)V
    :try_end_9a
    .catchall {:try_start_11 .. :try_end_9a} :catchall_9c

    .line 1160
    :cond_9a
    monitor-exit p0

    return-void

    :catchall_9c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized updateTableAutoDisconnection()V
    .registers 6

    monitor-enter p0

    .line 1296
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v0

    .line 1297
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->edgeFlag:Z

    .line 1298
    iget v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousRssi:I

    iput v3, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->capRSSI:I

    .line 1299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auto Disconnection Event, timestamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", RSSI="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v4, v4, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget v4, v4, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->capRSSI:I

    .line 1300
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Old AP="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v4, v4, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v4, v4, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1299
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    sget-object v2, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->AUTO_DISCONNECTION:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateTable(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;J)V

    .line 1302
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->save_model_obj()V
    :try_end_59
    .catchall {:try_start_1 .. :try_end_59} :catchall_5b

    .line 1303
    monitor-exit p0

    return-void

    :catchall_5b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateTableForceAction(I)V
    .registers 6

    monitor-enter p0

    .line 1311
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-boolean v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->edgeFlag:Z

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1d

    .line 1313
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->edgeFlag:Z

    .line 1314
    sget-object p1, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->CONNECTION_SWITCHED_TOO_SHORT:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateTable(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;J)V

    .line 1315
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iput-boolean v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->edgeFlag:Z

    goto :goto_44

    :cond_1d
    if-nez p1, :cond_31

    .line 1317
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->edgeFlag:Z

    .line 1318
    sget-object p1, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->AUTO_DISCONNECTION:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateTable(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;J)V

    .line 1319
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iput-boolean v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->edgeFlag:Z

    goto :goto_44

    :cond_31
    if-ne p1, v3, :cond_44

    .line 1321
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->edgeFlag:Z

    .line 1322
    sget-object p1, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->WIFI_OFF:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateTable(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;J)V

    .line 1323
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iput-boolean v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->edgeFlag:Z
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_46

    .line 1325
    :cond_44
    :goto_44
    monitor-exit p0

    return-void

    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized updateTableIntermediateNetworkConnected()V
    .registers 5

    monitor-enter p0

    .line 1358
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    .line 1360
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getWifiConfiguration(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1361
    monitor-enter p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_99

    .line 1362
    :try_start_10
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mValidLastRssi:I

    iput v2, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->capRSSI:I

    .line 1363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network connected event(intermediate), timestamp ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampConnected:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", New AP:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", SS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    .line 1364
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getIsSteadyState(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1363
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->snsOptionChanged:Z

    .line 1366
    sget-object v1, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->NETWORK_CONNECTED:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampConnected:J

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateTable(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;J)V

    if-eqz v0, :cond_72

    .line 1368
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getProfileKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->putBssidToConfigKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_72
    const/4 v0, 0x0

    .line 1372
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIsWifiDisabledByUser:Z

    .line 1373
    monitor-exit p0
    :try_end_76
    .catchall {:try_start_10 .. :try_end_76} :catchall_96

    .line 1374
    :try_start_76
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iput-boolean v0, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->snsOptionChanged:Z

    .line 1377
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 1378
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiDisablePolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid()Z

    move-result v0

    if-nez v0, :cond_91

    .line 1379
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiDisablePolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->adopt()V

    .line 1382
    :cond_91
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->save_model_obj()V
    :try_end_94
    .catchall {:try_start_76 .. :try_end_94} :catchall_99

    .line 1383
    monitor-exit p0

    return-void

    :catchall_96
    move-exception v0

    .line 1373
    :try_start_97
    monitor-exit p0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    :try_start_98
    throw v0
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_99

    :catchall_99
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateTableManualDisc()V
    .registers 4

    monitor-enter p0

    .line 1247
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->edgeFlag:Z

    .line 1249
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousBssid:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    .line 1251
    monitor-enter p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_72

    .line 1252
    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mValidLastRssi:I

    iput v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->capRSSI:I

    .line 1253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Manual disconnect, timestamp ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampConnected:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", edgeflag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-boolean v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->edgeFlag:Z

    .line 1254
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", new AP ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", old AP ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousBssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1253
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    sget-object v0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->MANUAL_DISCONNECT:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampConnected:J

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateTable(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;J)V

    .line 1258
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_d .. :try_end_6a} :catchall_6f

    .line 1259
    :try_start_6a
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->save_model_obj()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_72

    .line 1260
    monitor-exit p0

    return-void

    :catchall_6f
    move-exception v0

    .line 1258
    :try_start_70
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    :try_start_71
    throw v0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_72

    :catchall_72
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateTableManualReconnect()V
    .registers 4

    monitor-enter p0

    .line 1207
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    .line 1209
    monitor-enter p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_77

    .line 1210
    :try_start_a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mValidLastRssi:I

    iput v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->capRSSI:I

    .line 1211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Manual Reconnection event, timestamp ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampConnected:J

    .line 1212
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", edgeflag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-boolean v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->edgeFlag:Z

    .line 1213
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", RSSI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->capRSSI:I

    .line 1214
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", new AP:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1211
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    sget-object v0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->MANUAL_RECONNECTION:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampConnected:J

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateTable(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;J)V

    .line 1217
    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_a .. :try_end_6f} :catchall_74

    .line 1218
    :try_start_6f
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->save_model_obj()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_77

    .line 1219
    monitor-exit p0

    return-void

    :catchall_74
    move-exception v0

    .line 1217
    :try_start_75
    monitor-exit p0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    :try_start_76
    throw v0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_77

    :catchall_77
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateTableManualSwitch(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;)V
    .registers 6

    monitor-enter p0

    .line 1222
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->edgeFlag:Z

    .line 1223
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    .line 1225
    monitor-enter p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_85

    .line 1226
    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mValidLastRssi:I

    iput v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->capRSSI:I

    .line 1227
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_82

    :try_start_16
    const-string v0, ""

    .line 1230
    sget-object v1, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->MANUAL_SWITCH:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    if-ne p1, v1, :cond_1f

    const-string v0, "halfM"

    goto :goto_2c

    .line 1232
    :cond_1f
    sget-object v1, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->MANUAL_SWITCH_G:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    if-ne p1, v1, :cond_26

    const-string v0, "G"

    goto :goto_2c

    .line 1234
    :cond_26
    sget-object v1, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->MANUAL_SWITCH_L:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    if-ne p1, v1, :cond_2c

    const-string v0, "L"

    .line 1237
    :cond_2c
    :goto_2c
    monitor-enter p0
    :try_end_2d
    .catchall {:try_start_16 .. :try_end_2d} :catchall_85

    .line 1238
    :try_start_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Manual_swith:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", timestamp ="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampConnected:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", edgeflag = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->edgeFlag:Z

    .line 1239
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", new AP = null, old AP = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousBssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1238
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampConnected:J

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateTable(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;J)V

    .line 1242
    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_2d .. :try_end_7a} :catchall_7f

    .line 1243
    :try_start_7a
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->save_model_obj()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_85

    .line 1244
    monitor-exit p0

    return-void

    :catchall_7f
    move-exception p1

    .line 1242
    :try_start_80
    monitor-exit p0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    :try_start_81
    throw p1
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_85

    :catchall_82
    move-exception p1

    .line 1227
    :try_start_83
    monitor-exit p0
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    :try_start_84
    throw p1
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_85

    :catchall_85
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized updateTableMobileDataChanged()V
    .registers 5

    monitor-enter p0

    .line 1190
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v0

    .line 1191
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateTableMobileDataChanged(J)V

    const-string v2, "Mobile Data Off, timestamp ="

    .line 1192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", RSSI:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->capRSSI:I

    .line 1193
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", AP:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1192
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    iget v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentQAI:I

    .line 1196
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getCurrentQAI()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentQAI:I

    if-eq v0, v1, :cond_64

    .line 1198
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isExcludedBssid()Z

    move-result v0

    const/4 v1, -0x1

    const v2, 0x210c8

    if-eqz v0, :cond_55

    .line 1199
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->sendMessageToWCM(II)Z

    goto :goto_64

    .line 1201
    :cond_55
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurSNS:Z

    if-eqz v0, :cond_61

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isConnectedWifi()Z

    move-result v0

    if-eqz v0, :cond_61

    iget v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentQAI:I

    :cond_61
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->sendMessageToWCM(II)Z
    :try_end_64
    .catchall {:try_start_1 .. :try_end_64} :catchall_66

    .line 1204
    :cond_64
    :goto_64
    monitor-exit p0

    return-void

    :catchall_66
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateTableMobileDataChanged(J)V
    .registers 5

    monitor-enter p0

    .line 1180
    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    if-nez p2, :cond_b

    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousBssid:Ljava/lang/String;

    :cond_b
    iput-object p2, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    .line 1181
    monitor-enter p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_2b

    .line 1182
    :try_start_e
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget p2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mValidLastRssi:I

    iput p2, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->capRSSI:I

    .line 1183
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_28

    const/4 p2, 0x1

    .line 1184
    :try_start_18
    iput-boolean p2, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->edgeFlag:Z

    .line 1185
    sget-object p1, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->CELLULAR_DATA_OFF:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateTable(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;J)V

    .line 1186
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->save_model_obj()V
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_2b

    .line 1187
    monitor-exit p0

    return-void

    :catchall_28
    move-exception p1

    .line 1183
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    :try_start_2a
    throw p1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized updateTableSNSDisable()V
    .registers 5

    monitor-enter p0

    .line 1328
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->snsFlag:Z

    const/4 v2, 0x1

    .line 1329
    iput-boolean v2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->snsOptionChanged:Z

    .line 1330
    sget-object v0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->SNS_OFF:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateTable(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;J)V

    const-string v0, "SNS TURN OFF"

    const-string v2, ""

    .line 1331
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->setDefaultQAI()V

    .line 1334
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iput-boolean v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->snsOptionChanged:Z

    .line 1336
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->save_model_obj()V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 1337
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateTableSNSEnable()V
    .registers 6

    monitor-enter p0

    .line 1340
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_num_of_switch_to_mobile_data_toggle"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    const-string v0, "SemIWCMonitor"

    const-string v1, "updateTableSNSEnable is called at first"

    .line 1343
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_42

    .line 1344
    monitor-exit p0

    return-void

    .line 1346
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iput-boolean v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->snsFlag:Z

    .line 1347
    iput-boolean v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->snsOptionChanged:Z

    .line 1348
    sget-object v0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->SNS_ON:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v3

    invoke-direct {p0, v0, v3, v4}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateTable(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;J)V

    const-string v0, "SNS TURN ON"

    const-string v1, ""

    .line 1349
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->setDefaultQAI()V

    .line 1352
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iput-boolean v2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->snsOptionChanged:Z

    .line 1354
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->save_model_obj()V
    :try_end_40
    .catchall {:try_start_1a .. :try_end_40} :catchall_42

    .line 1355
    monitor-exit p0

    return-void

    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateTableSwitchedTooShort()V
    .registers 5

    monitor-enter p0

    .line 1265
    :try_start_1
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_1 .. :try_end_2} :catchall_cc

    .line 1266
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampConnected:J

    sub-long/2addr v0, v2

    .line 1267
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c9

    const-wide/16 v2, 0x7530

    cmp-long v2, v0, v2

    if-lez v2, :cond_3c

    .line 1269
    :try_start_10
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mAutoDisconnectionPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1270
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mAutoDisconnectionPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->adopt()V

    :cond_1d
    const-string v2, "Connection time is"

    .line 1272
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", CONNECTION_SWITCHED_TOO_SHORT is ignored"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->detectRewardEventAutoDisconnection()V
    :try_end_3a
    .catchall {:try_start_10 .. :try_end_3a} :catchall_cc

    .line 1274
    monitor-exit p0

    return-void

    .line 1277
    :cond_3c
    :try_start_3c
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->edgeFlag:Z

    .line 1278
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    if-nez v3, :cond_49

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousBssid:Ljava/lang/String;

    :cond_49
    iput-object v3, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    .line 1279
    iget v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousRssi:I

    iput v3, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->capRSSI:I

    .line 1280
    iput-wide v0, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->connectionMaintainedTime:J

    .line 1282
    monitor-enter p0
    :try_end_52
    .catchall {:try_start_3c .. :try_end_52} :catchall_cc

    .line 1283
    :try_start_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Switched too short event, timestamp ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampDisconnected:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", edgeflag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-boolean v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->edgeFlag:Z

    .line 1284
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", RSSI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->capRSSI:I

    .line 1285
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Connection Maintained time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-wide v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->connectionMaintainedTime:J

    .line 1286
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", old AP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1283
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    sget-object v0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->CONNECTION_SWITCHED_TOO_SHORT:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampDisconnected:J

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateTable(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;J)V

    .line 1290
    monitor-exit p0
    :try_end_c1
    .catchall {:try_start_52 .. :try_end_c1} :catchall_c6

    .line 1291
    :try_start_c1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->save_model_obj()V
    :try_end_c4
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_cc

    .line 1292
    monitor-exit p0

    return-void

    :catchall_c6
    move-exception v0

    .line 1290
    :try_start_c7
    monitor-exit p0
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c6

    :try_start_c8
    throw v0
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_cc

    :catchall_c9
    move-exception v0

    .line 1267
    :try_start_ca
    monitor-exit p0
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_c9

    :try_start_cb
    throw v0
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_cc

    :catchall_cc
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateTableWifiOff()V
    .registers 6

    monitor-enter p0

    .line 1163
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v0

    .line 1164
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousBssid:Ljava/lang/String;

    :cond_f
    iput-object v3, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    .line 1165
    iget v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousRssi:I

    iput v3, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->capRSSI:I

    const/4 v3, 0x1

    .line 1166
    iput-boolean v3, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->edgeFlag:Z

    .line 1168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WIFI OFF event, timestamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", edgeflag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v4, v4, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-boolean v4, v4, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->edgeFlag:Z

    .line 1169
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", old AP="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v4, v4, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v4, v4, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", PN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiDisablePackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1168
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ""

    .line 1171
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiDisablePackage:Ljava/lang/String;

    .line 1173
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    if-eqz v2, :cond_77

    .line 1174
    sget-object v2, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->WIFI_OFF:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateTable(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;J)V

    .line 1175
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->save_model_obj()V
    :try_end_77
    .catchall {:try_start_1 .. :try_end_77} :catchall_79

    .line 1177
    :cond_77
    monitor-exit p0

    return-void

    :catchall_79
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateValidLastRssi(I)V
    .registers 4

    .line 3422
    monitor-enter p0

    .line 3423
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    goto :goto_16

    .line 3426
    :cond_d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mValidLastRssi:I

    goto :goto_18

    .line 3424
    :cond_16
    :goto_16
    iput p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mValidLastRssi:I

    .line 3428
    :goto_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method private wifiStateChanged(I)V
    .registers 13

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    if-eq p1, v0, :cond_96

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_d

    goto/16 :goto_21c

    .line 1515
    :cond_d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiDisablePolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid()Z

    move-result p1

    if-nez p1, :cond_1a

    .line 1516
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiDisablePolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->adopt()V

    .line 1518
    :cond_1a
    monitor-enter p0

    .line 1519
    :try_start_1b
    sget-boolean p1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    if-eqz p1, :cond_37

    const-string p1, "SemIWCMonitor"

    .line 1520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TS updated timeStampPoorLinkTrig = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampPoorLinkTrig:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    :cond_37
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampPoorLinkTrig:J

    .line 1522
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampConnected:J

    .line 1523
    sget-boolean p1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    if-eqz p1, :cond_57

    const-string p1, "SemIWCMonitor"

    .line 1524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TS updated timeStampConnected = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampConnected:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    :cond_57
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampDisconnected:J

    .line 1526
    sget-boolean p1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    if-eqz p1, :cond_75

    const-string p1, "SemIWCMonitor"

    .line 1527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TS updated timeStampDisconnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->timeStampDisconnected:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    :cond_75
    monitor-exit p0

    goto/16 :goto_21c

    :catchall_78
    move-exception p1

    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_1b .. :try_end_7a} :catchall_78

    throw p1

    .line 1531
    :cond_7b
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_21c

    const v0, 0x8701d

    .line 1533
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_21c

    .line 1534
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->removeMessages(I)V

    const-string p1, "Pending Wi-Fi Off event has been removed"

    const-string v0, ""

    .line 1535
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_21c

    :cond_96
    const-string p1, "SemIWCMonitor"

    .line 1540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WIFI_STATE_DISABLED mLastPoorLinkTimestamp="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastPoorLinkTimestamp:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " mLastPoorLinkTimestampBeforeDisc="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastPoorLinkTimestampBeforeDisc:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 1543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WIFI OFF event, timestamp ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1544
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastPoorLinkTimestampBeforeDisc:J

    cmp-long v3, v3, v1

    const/4 v4, 0x0

    const-wide/16 v5, 0x4e20

    if-lez v3, :cond_e5

    .line 1545
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastPoorLinkTimestampBeforeDisc:J

    sub-long/2addr v7, v9

    cmp-long v3, v7, v5

    if-ltz v3, :cond_14e

    :cond_e5
    iget-wide v7, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastPoorLinkTimestamp:J

    cmp-long v3, v7, v1

    if-lez v3, :cond_f6

    .line 1546
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastPoorLinkTimestamp:J

    sub-long/2addr v7, v9

    cmp-long p1, v7, v5

    if-ltz p1, :cond_14e

    .line 1548
    :cond_f6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object p1

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mInvalidState:Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;

    if-eq p1, v3, :cond_14e

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object p1

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPoorLinkState:Lcom/samsung/android/server/wifi/SemIWCMonitor$PoorLinkState;

    if-ne p1, v3, :cond_107

    goto :goto_14e

    .line 1570
    :cond_107
    monitor-enter p0

    .line 1571
    :try_start_108
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iput-boolean v4, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->edgeFlag:Z

    .line 1572
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", edgeflag = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-boolean v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->edgeFlag:Z

    .line 1573
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", old AP="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", PN = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiDisablePackage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1572
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    .line 1576
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiDisablePackage:Ljava/lang/String;

    .line 1577
    monitor-exit p0

    goto/16 :goto_1bc

    :catchall_14b
    move-exception p1

    monitor-exit p0
    :try_end_14d
    .catchall {:try_start_108 .. :try_end_14d} :catchall_14b

    throw p1

    :cond_14e
    :goto_14e
    const-string p1, ""

    .line 1552
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isAirplaneModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_159

    const-string p1, ", Airplain mode"

    goto :goto_187

    .line 1554
    :cond_159
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentPackageName:Ljava/lang/String;

    if-eqz v3, :cond_168

    const-string v5, "emergency"

    .line 1555
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_168

    const-string p1, ", Emergency mode"

    goto :goto_187

    .line 1557
    :cond_168
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIsWifiDisabledByUser:Z

    if-eqz v3, :cond_170

    .line 1558
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->detectRewardEventWifiDisable()V

    goto :goto_187

    .line 1560
    :cond_170
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", PN: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiDisablePackage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, ""

    .line 1561
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiDisablePackage:Ljava/lang/String;

    .line 1563
    :goto_187
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1bc

    .line 1564
    monitor-enter p0

    .line 1565
    :try_start_18e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", old AP="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1566
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    monitor-exit p0

    goto :goto_1bc

    :catchall_1b9
    move-exception p1

    monitor-exit p0
    :try_end_1bb
    .catchall {:try_start_18e .. :try_end_1bb} :catchall_1b9

    throw p1

    .line 1579
    :cond_1bc
    :goto_1bc
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiDisablePolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->discard()V

    .line 1580
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mAutoDisconnectionPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->discard()V

    .line 1581
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mSwitchedTooShortPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->discard()V

    .line 1582
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mManualReconnectPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->discard()V

    .line 1584
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastPoorLinkTimestampBeforeDisc:J

    .line 1585
    sget-boolean p1, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    if-eqz p1, :cond_1ee

    const-string p1, "SemIWCMonitor"

    .line 1586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TS updated mLastPoorLinkTimestampBeforeDisc = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastPoorLinkTimestampBeforeDisc:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ee
    const/4 p1, 0x0

    .line 1587
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    const/4 v0, -0x1

    .line 1588
    iput v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentNetworkId:I

    const-string v0, ""

    .line 1589
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentConfigKey:Ljava/lang/String;

    .line 1590
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastConnBssWithoutRemove:Ljava/lang/String;

    .line 1591
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastPoorLinkTimestamp:J

    .line 1592
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    if-eqz v0, :cond_218

    const-string v0, "SemIWCMonitor"

    .line 1593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TS updated mLastPoorLinkTimestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLastPoorLinkTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    :cond_218
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRemoveUnwantedNetworkToGoBack:Z

    .line 1595
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPreviousWifiInfo:Landroid/net/wifi/WifiInfo;

    :cond_21c
    :goto_21c
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string v0, "IWC dump ----- start -----"

    .line 1826
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentNetworkId - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentQAI - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentQAI:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1831
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->printTable()V

    .line 1832
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->printApLists()V

    .line 1835
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->printCurrentTable(Ljava/lang/String;)V

    .line 1837
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLogFile:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    if-eqz p0, :cond_49

    .line 1838
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;->dumpLocalLog(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_49
    const-string p0, "IWC dump ----- end -----\n"

    .line 1839
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public factoryReset()V
    .registers 7

    .line 1870
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v0

    const-string v2, "factoryReset()"

    const-string v3, "Start"

    .line 1871
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->unregisterBroadcastReceiver()V

    const/4 v3, -0x1

    .line 1873
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->resetLearningData(I)V

    const/4 v3, 0x0

    .line 1875
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    .line 1876
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->setIntfSnsFlag()V

    .line 1878
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->setBroadcastReceiver()V

    .line 1879
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finish, time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentQAI()I
    .registers 3

    .line 1761
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIsDebugMode:Z

    if-eqz v0, :cond_1f

    .line 1762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentQAIDbg - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentQAIDbg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemIWCMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    iget p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentQAIDbg:I

    goto :goto_27

    .line 1765
    :cond_1f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->getCurrentState()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    :goto_27
    return p0
.end method

.method public declared-synchronized getIsSteadyState(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    .line 1749
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->getIsSteadyState(Ljava/lang/String;)Z

    move-result p1

    .line 1751
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIsDebugMode:Z

    if-eqz v0, :cond_f

    .line 1752
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIsSteadyStateDbg:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_11

    monitor-exit p0

    return p1

    .line 1755
    :cond_f
    monitor-exit p0

    return p1

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .registers 7

    const-string v0, " "

    .line 722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 725
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getKernelTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->smToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0x87000

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4d
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_4d} :catch_4e

    goto :goto_57

    .line 728
    :catch_4e
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->smToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    :goto_57
    iget p0, p1, Landroid/os/Message;->what:I

    .line 733
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    iget p0, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    iget p0, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getQtables()Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 2138
    :try_start_1
    new-instance v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_36

    .line 2140
    :try_start_6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->getQtables()Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;->toJsonString(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    const-string v1, "SemIWCMonitor"

    .line 2142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run getQtables() size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_2c} :catch_2e
    .catchall {:try_start_6 .. :try_end_2c} :catchall_36

    .line 2143
    monitor-exit p0

    return-object v0

    :catch_2e
    move-exception v0

    .line 2146
    :try_start_2f
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_32
    const-string v0, ""
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_36

    .line 2148
    monitor-exit p0

    return-object v0

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSmartNetworkSwitchAvailability()I
    .registers 9

    .line 2257
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mContext:Landroid/content/Context;

    const-string v1, "SemIWCMonitor"

    if-nez v0, :cond_d

    const-string p0, "context is null."

    .line 2258
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 2263
    :cond_d
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getSimState(Landroid/content/Context;)I

    move-result v0

    .line 2265
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getDataRoaming(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eq v0, v3, :cond_23

    .line 2268
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->ignoreSimCheck()Z

    move-result v5

    if-nez v5, :cond_23

    const/4 v5, 0x2

    goto :goto_36

    .line 2270
    :cond_23
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isAirplaneModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_2b

    const/4 v5, 0x3

    goto :goto_36

    .line 2272
    :cond_2b
    iget-boolean v5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIsMobileDataEnabled:Z

    if-nez v5, :cond_31

    const/4 v5, 0x4

    goto :goto_36

    :cond_31
    if-eqz v2, :cond_35

    move v5, v3

    goto :goto_36

    :cond_35
    move v5, v4

    .line 2278
    :goto_36
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Airplane Mode Off / Mobile Data Enabled / SIM State-Ready / !mobileDataBlockedByRoaming / result : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2279
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isAirplaneModeEnabled()Z

    move-result v7

    xor-int/2addr v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIsMobileDataEnabled:Z

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v0, v3, :cond_59

    move p0, v4

    goto :goto_5a

    :cond_59
    const/4 p0, 0x0

    :goto_5a
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 p0, v2, 0x1

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2278
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public getTimeStamp()J
    .registers 3

    .line 823
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public intToIp(I)Ljava/lang/String;
    .registers 4

    .line 836
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

.method pingToGateway(Z)V
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2a

    .line 841
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object p1

    .line 844
    :try_start_9
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 846
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/ping -c 10 -s 1500 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/net/DhcpInfo;->gateway:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->intToIp(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 847
    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_27} :catch_2a
    .catchall {:try_start_9 .. :try_end_27} :catchall_28

    goto :goto_2a

    :catchall_28
    move-exception p0

    .line 850
    throw p0

    :catch_2a
    :cond_2a
    :goto_2a
    return-void
.end method

.method public readQtableFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2285
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :try_start_6
    new-array v0, v0, [Ljava/lang/String;

    .line 2288
    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object p1
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_16} :catch_30

    .line 2289
    :goto_16
    :try_start_16
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 2290
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_24

    goto :goto_16

    .line 2292
    :cond_20
    :try_start_20
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_30

    goto :goto_34

    :catchall_24
    move-exception v0

    if-eqz p1, :cond_2f

    .line 2288
    :try_start_27
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_2f

    :catchall_2b
    move-exception p1

    :try_start_2c
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2f
    :goto_2f
    throw v0
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_30} :catch_30

    :catch_30
    move-exception p1

    .line 2294
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 2296
    :goto_34
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public reportWifiControlHistory(Ljava/lang/String;Z)V
    .registers 8

    .line 2305
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRewardEventAllowList:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 2306
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v2, 0x1

    goto :goto_14

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2312
    :cond_14
    :goto_14
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "package"

    .line 2313
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2314
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    const-string v1, "calling_uid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const p1, 0x8701a

    .line 2316
    invoke-virtual {p0, p1, v2, p2, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public sendDebugIntent(I)V
    .registers 5

    .line 907
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    if-nez v0, :cond_5

    return-void

    .line 910
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.IWC_REWARD_EVENT_DEBUG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "kind"

    .line 911
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "event"

    const-string v2, "NONE"

    .line 912
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 913
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentBssid:Ljava/lang/String;

    const-string v2, "bssid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "tableindex"

    const/4 v2, -0x1

    .line 914
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "lastvalue1"

    .line 915
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "lastvalue2"

    .line 916
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "lastvalue3"

    .line 917
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ss_poor"

    .line 918
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "qai"

    .line 919
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 921
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public sendUserSelection(Z)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const p1, 0x8704d

    .line 786
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->sendMessage(II)V

    return-void
.end method

.method public setConnectionAttemptInfo(IZLandroid/os/Bundle;)V
    .registers 13

    const-string v0, "config_key"

    .line 2320
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "calling_uid"

    .line 2321
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "calling_package"

    .line 2322
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " byUser="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " configKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callingUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") cNid="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentNetworkId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setConnectionAttemptInfo"

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2327
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mConnectNetworkPackageName:Ljava/lang/String;

    .line 2328
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mConnDiscInfoHist:Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getBssidFromNetId(I)Ljava/lang/String;

    move-result-object v3

    .line 2329
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v6

    const/4 p3, 0x1

    if-eqz p2, :cond_63

    move v8, p3

    goto :goto_65

    :cond_63
    const/4 v2, 0x2

    move v8, v2

    :goto_65
    const/4 v2, 0x1

    move v4, p1

    move-object v5, v0

    .line 2328
    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->addOrUpdate(ILjava/lang/String;ILjava/lang/String;JI)V

    .line 2332
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isConnectedWifi()Z

    move-result p1

    if-eqz p1, :cond_73

    .line 2333
    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mDisconnectToConnectNewNetwork:Z

    :cond_73
    if-eqz p2, :cond_8b

    .line 2336
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mDisconnectToConnectNewNetwork:Z

    if-eqz p1, :cond_8b

    if-eqz v0, :cond_8b

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentConfigKey:Ljava/lang/String;

    .line 2337
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8b

    .line 2338
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mManualSwitchPolicy:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->adopt()V

    .line 2339
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->detectRewardEventWhenConnectStart()V

    :cond_8b
    return-void
.end method

.method public setDebugParams(Ljava/lang/String;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "\n"

    .line 1902
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 1904
    :goto_b
    array-length v2, p1

    if-ge v1, v2, :cond_d8

    .line 1905
    aget-object v2, p1, v1

    if-eqz v2, :cond_d4

    .line 1907
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1a

    goto/16 :goto_d4

    :cond_1a
    const-string v3, "qai="

    .line 1911
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "SemIWCMonitor"

    if-eqz v3, :cond_56

    const/4 v3, 0x1

    .line 1912
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getIntValue(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentQAIDbg:I

    .line 1913
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentQAIDbg : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentQAIDbg:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    iget v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurrentQAIDbg:I

    if-eq v2, v3, :cond_50

    const/4 v4, 0x2

    if-eq v2, v4, :cond_50

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4c

    goto :goto_50

    .line 1918
    :cond_4c
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIsDebugMode:Z

    goto/16 :goto_d4

    .line 1915
    :cond_50
    :goto_50
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIsDebugMode:Z

    .line 1916
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mIsSteadyStateDbg:Z

    goto/16 :goto_d4

    :cond_56
    const-string v3, "rssi_dbg="

    .line 1920
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v5, "1"

    const-string v6, "0"

    if-eqz v3, :cond_83

    .line 1921
    invoke-direct {p0, v2, v6}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->RSSI_DBG:Z

    .line 1922
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rssi_dbg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->RSSI_DBG:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4

    :cond_83
    const-string v3, "misc_dbg="

    .line 1923
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 1924
    invoke-direct {p0, v2, v6}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->MISC_DBG:Z

    .line 1925
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "misc_dbg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->MISC_DBG:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4

    :cond_ac
    const-string v3, "ping_enable="

    .line 1926
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d4

    .line 1927
    invoke-direct {p0, v2, v6}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPingEnabled:Z

    .line 1928
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ping_enable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mPingEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d4
    :goto_d4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b

    :cond_d8
    return-void
.end method

.method public setMockAction(I)V
    .registers 3

    const v0, 0x87021

    .line 2358
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->sendMessage(II)V

    return-void
.end method

.method public declared-synchronized setQtables(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 2152
    :try_start_1
    new-instance v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;-><init>()V

    .line 2153
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;->setIWCJson(Ljava/lang/String;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLogFile:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    .line 2154
    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;->setIWCLogFile(Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;

    .line 2155
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;->create()Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    move-result-object p1

    const-string v0, "SemIWCMonitor"

    .line 2156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setQtables() Number of Q tables: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->setQtables(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;)V

    .line 2158
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->save_model_obj()V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    .line 2159
    monitor-exit p0

    return-void

    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setQtables(Ljava/lang/String;Z)V
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_2a

    .line 2162
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_2a

    .line 2165
    :cond_a
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->setQtables(Ljava/lang/String;)V

    if-eqz p2, :cond_25

    .line 2167
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->removeNonSSQtables()V

    .line 2169
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isConnectedWifi()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 2171
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->algorithmStep()V

    .line 2172
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateDebugIntent()V

    .line 2174
    :cond_22
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->save_model_obj()V
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_27

    .line 2176
    :cond_25
    monitor-exit p0

    return-void

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1

    .line 2163
    :cond_2a
    :goto_2a
    monitor-exit p0

    return-void
.end method

.method public setWcmAsyncChannel(Landroid/os/Handler;)V
    .registers 5

    .line 804
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWcmChannel:Lcom/android/internal/util/AsyncChannel;

    const-string v1, "SemIWCMonitor"

    if-nez v0, :cond_16

    .line 805
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    if-eqz v0, :cond_f

    const-string v0, "New mWcmChannel created"

    .line 806
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_f
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWcmChannel:Lcom/android/internal/util/AsyncChannel;

    .line 809
    :cond_16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mWcmChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0, v2, p0, p1}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    .line 810
    sget-boolean p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->DBG:Z

    if-eqz p0, :cond_2a

    const-string p0, "mWcmChannel connected"

    .line 811
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return-void
.end method

.method public updateHintCard(J)V
    .registers 6

    const-string v0, "SemIWCMonitor"

    .line 2344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 2349
    monitor-enter p0

    .line 2350
    :try_start_20
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object p2, p2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object p2, p2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setIdInfo(I)V

    .line 2351
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object p2, p2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object p2, p2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setTipsShowingDuration(J)V

    .line 2352
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setTipsClick(Z)V

    .line 2353
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_20 .. :try_end_42} :catchall_46

    .line 2354
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->setBigDataMIWC()V

    return-void

    :catchall_46
    move-exception p1

    .line 2353
    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p1
.end method

.method public declared-synchronized updateIWCSystemProp()V
    .registers 3

    monitor-enter p0

    .line 1957
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mCurSNS:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->getCurrentState()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, -0x1

    :goto_f
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "iwc.arg1"

    .line 1958
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "false"

    .line 1961
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->getCurrentAP()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 1962
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->getCurrentAP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getIsSteadyState(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    :cond_30
    const-string v1, "iwc.arg2"

    .line 1964
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1967
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mRLEngine:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->getQTableStr()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iwc.arg3"

    .line 1968
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_42

    .line 1969
    monitor-exit p0

    return-void

    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 827
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor;->mLogFile:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    if-eqz p0, :cond_7

    .line 828
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method
