.class public Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;
.super Landroid/os/Handler;
.source "SemWifiSwitchForIndividualAppsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;,
        Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetworkRequestCallback;,
        Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x211f4

.field private static final BEACON_COUNT_RANGE:I = 0x28

.field private static DBG:Z = false

.field private static final DETECTION_MODE_ALL_APP_EXCEPT_SYSTEM:I = 0x2

.field private static final DETECTION_MODE_CHAT_ONLY:I = 0x0

.field private static final DETECTION_MODE_FILTERED_APP:I = 0x1

.field private static final DNS_HISTORY_MAX_COUNT:I = 0x258

.field private static final DNS_ROUTE_CHANGE_ENABLED:Z = true

.field private static final INVALID_UID:I = -0x1

.field private static final LATEST_TX_RX_LENGTH:I = 0x3

.field private static final MAX_IP_ADDRESS:I = 0xa

.field private static final RESULT_BLOCKING_DNS:Ljava/lang/String; = "BD"

.field private static final RESULT_BLOCKING_RECEIEVE_QUEUE_SYN:Ljava/lang/String; = "BQ"

.field private static final RESULT_BLOCKING_RETRANS:Ljava/lang/String; = "BR"

.field private static final RESULT_BLOCKING_RETRANS_CONT:Ljava/lang/String; = "BR_cont"

.field private static final RESULT_BLOCKING_SYN:Ljava/lang/String; = "BS"

.field private static final RESULT_NORMAL:Ljava/lang/String; = "NORMAL"

.field private static final RESULT_SLOW:Ljava/lang/String; = "SLOW"

.field private static final RUNNING_HISTORY_MAX_COUNT:I = 0x258

.field public static final SWITCH_TO_MOBILE_DATA_DISABLED:I = 0x211ff

.field public static final SWITCH_TO_MOBILE_DATA_ENABLED:I = 0x211fe

.field public static final SWITCH_TO_MOBILE_DATA_QAI:I = 0x21200

.field private static final TAG:Ljava/lang/String; = "SemWifiSwitchForIndividualAppsService"

.field private static final TCP_COLUMN_REMOTE_ADDRESS:I = 0x3

.field private static final TCP_COLUMN_STATUS:I = 0x4

.field private static final TCP_COLUMN_UID:I = 0x8

.field private static final TCP_MONITOR_SETTINGS_CHANGED:I = 0x6

.field private static final TCP_MONITOR_START_FIRST_DETECTION:I = 0x3

.field private static final TCP_MONITOR_START_SCREEN_ON:I = 0x2

.field private static final TCP_MONITOR_STOP_FIRST_DETECTION:I = 0x5

.field private static final TCP_MONITOR_STOP_SCREEN_OFF:I = 0x4

.field private static final TCP_MONITOR_WIFI_CHANGED:I = 0x1

.field private static final TCP_STATUS_LAST_ACK:Ljava/lang/String; = "09"

.field private static final TCP_STATUS_SYN_SENT:Ljava/lang/String; = "02"

.field private static final THRESHOLD_ACCUMULATED_SUM_TX_RX:I = 0x7d0

.field private static final THRESHOLD_ALL_SOCKET_RATIO:I = 0x32

.field private static final THRESHOLD_CHAT_ESTABLISH:I = 0x5

.field private static final THRESHOLD_CHAT_SUM_TX_RX:I = 0x1e

.field private static final THRESHOLD_DETECTION_IGNORED_AGGRESSIVE:I = 0x5

.field private static final THRESHOLD_DETECTION_IGNORED_NORMAL:I = 0x3

.field private static final THRESHOLD_DNS_BLOCK_COUNTER:I = 0x3

.field private static final THRESHOLD_GENERAL_ESTABLISH:I = 0xa

.field private static final THRESHOLD_GENERAL_SUM_TX_RX:I = 0x64

.field private static final THRESHOLD_LINK_SPEED_24G:I = 0x1e

.field private static final THRESHOLD_LINK_SPEED_5G:I = 0x28

.field private static final THRESHOLD_LOSS:D = 0.1

.field private static final THRESHOLD_POOR_LINK_SPEED:I = 0x14

.field private static final THRESHOLD_POOR_RSSI:I = -0x50

.field private static final THRESHOLD_RECEIVE_QUEUE_COUNTER:I = 0x2

.field private static final THRESHOLD_RETRANSMISSION_COUNTER:I = 0x5

.field private static final THRESHOLD_RETRANSMISSION_SOCKET_RATIO:I = 0x19

.field private static final THRESHOLD_RSSI_24GHz:I = -0x37

.field private static final THRESHOLD_RSSI_5GHz:I = -0x3c

.field private static final THRESHOLD_SYN_BLOCK_AGGRESSIVE_MODE_DETECTION_COUNT:I = 0x5

.field private static final THRESHOLD_SYN_BLOCK_COUNT_DETECTED_APP:I = 0x2

.field private static final THRESHOLD_SYN_BLOCK_COUNT_HIGH:I = 0x5

.field private static final THRESHOLD_SYN_BLOCK_COUNT_LOW:I = 0x3

.field private static final THRESHOLD_SYN_SOCKET_RATIO:I = 0x32

.field private static final THRESHOLD_TCP_MONITOR_STOP_SCREEN_OFF_DETECTION:I = 0xa

.field private static final TIMEOUT_QC_REQEUST:I = 0xbb8

.field private static mDnsdatalock:Ljava/lang/Object;

.field private static mRunningDnsListlock:Ljava/lang/Object;

.field private static mRunningSynlock:Ljava/lang/Object;

.field private static mTCPEAllSocketlock:Ljava/lang/Object;

.field private static mTCPEdatalock:Ljava/lang/Object;


# instance fields
.field private final BEACON_AVERAGE_RATE_TRHESHOLD:I

.field private final BEACON_SAMPLE_THRESHOLD:I

.field private final EXTRA_SHOW_SWITCH_FOR_INDIVIDUAL_APPS:Ljava/lang/String;

.field private final KEY_TCP_MONITOR_COMMAND:Ljava/lang/String;

.field private final MOBILE_DATA_ENABLE_CHECK_DELAY:I

.field private final MOBILE_DATA_ENABLE_CHECK_MAX:I

.field private final RECEIVE_QUEUE_COLUMN:I

.field private final TCP_COLUMN_RETRANSMISSION:I

.field private final TCP_COLUMN_TX_RX_QUEUE:I

.field private final TCP_DETECTED_HISTORY_SIZE:I

.field private final TCP_HISTORY_MAX_COUNT:I

.field private final TCP_MONITOR_CHECK_MOBILE_DATA_ENABLED:I

.field private final TCP_MONITOR_DETECT_INTERVAL:J

.field private final TCP_MONITOR_FOREGROUND_ACTIVITY_DETECT:I

.field private final TCP_MONITOR_FOREGROUND_ACTIVITY_START:I

.field private final TCP_MONITOR_FOREGROUND_ACTIVITY_STOP:I

.field private final TCP_MONITOR_QC_REQUEST:I

.field private final TCP_MONITOR_QC_RESULT_TIMEOUT:I

.field private final TCP_MONITOR_QC_RESULT_UPDATED:I

.field private final TCP_MONITOR_RESET_TCP_TIMEOUT_VALUE:I

.field private final TCP_MONITOR_RUN_SHELL_COMMAND_AGAIN:I

.field private final TCP_MONITOR_SHELL_COMMAND_RESULT:I

.field private final TCP_MONITOR_SWITCH_INDIVIDUAL_APP_LIST_CHANGED:I

.field private final TCP_MONITOR_SWITCH_INDIVIDUAL_APP_TO_MOBILE_DATA:I

.field private final TCP_MONITOR_SWITCH_INDIVIDUAL_APP_TO_WIFI:I

.field private final TCP_MONITOR_TURN_OFF_MOBILE_NETWORK:I

.field private final TCP_MONITOR_TURN_ON_MOBILE_NETWORK:I

.field private final TCP_MONITOR_UID_BLOCK_NETD_MODE:Z

.field private final TCP_MONITOR_VOIP_STATE_CHANGED:I

.field private final TCP_STATUS_ESTABLISHED:Ljava/lang/String;

.field private final TIME_DELAY_VOIP_STATE_FINISHED:I

.field private final TIME_RESET_TCP_TIMEOUT:I

.field private isDnsCallbackRegistered:Z

.field private mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBeaconRateCount:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentQai:I

.field private mCurrentUidBlockedList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentUidBlockedListLock:Ljava/lang/Object;

.field private mDetectionMode:I

.field private mDnsBlockCounter:I

.field private mDnsDetected:Z

.field private mDnsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpHandlerMsg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

.field private mIs5GHz:Z

.field private mIsForegroundActivityDetectionStarted:Z

.field private mIsInterfaceNameNotAvailable:Z

.field private mIsMobileDataEnabledByTcpMonitor:Z

.field private mIsQaiSwitchableMode:Z

.field private mIsScreenOn:Z

.field private mIsVoipOngoing:Z

.field private mIsWaitForQCResult:Z

.field private mIsWifiConnected:Z

.field private mIsWifiValidState:Z

.field private mLastAutoSwitchNotifiedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

.field private mLastDetectedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

.field private mLastSuggestionNotifiedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

.field private mLastSwitchNotifiedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

.field private mLastTcpMonitorTime:J

.field private mLatestTxRx:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLinkRssiThreshold:I

.field private mLinkSpeed:I

.field private mLinkSpeedThreshold:I

.field private mLoss:D

.field private mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetdCommandHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

.field private final mNetdEventCallback:Landroid/net/INetdEventCallback;

.field private mNotifier:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mPoorNetworkDetectionEnabled:Z

.field private mPrevRunningBeaconCount:I

.field private mRSSI:I

.field private mRunningBeaconCountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningCurrEstablish:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningCurrSyn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningDnsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningIpListSyn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningPrevSyn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOnCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSkipUid:I

.field private mSkipUidNotified:Z

.field private mSsid:Ljava/lang/String;

.field private mSwitchForIndividualAppsEnabled:Z

.field private mSwitchForIndividualAppsEverDetected:Z

.field private mSynBlockCountSum:I

.field private mTcpAllSocketInfoHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTcpMonitorDetectedHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTcpMonitorDnsHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTcpMonitorInfoHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTcpeManager:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThresholdDetectionIgnored:I

.field private mThresholdLatestSumTxRx:I

.field private mThresholdNormalEstablish:I

.field private mUidAccumulatedTxRx:J

.field private mUidChangedTime:J

.field private mUidChatAppRetransmissionCounter:I

.field private mUidListWaitingForQcResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUidPrevRx:J

.field private mUidPrevSynSize:I

.field private mUidPrevTx:J

.field private mUidReceiveQueueCounter:I

.field private mUidRetransmissionCounter:I

.field private mUidRxDiff:J

.field private mUidSynBlockCounter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUidSynBlockNoEstablishCounter:I

.field private mUidTxDiff:J

.field private mUidTxRxOnResume:J

.field private mWifiConnectedTime:J

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private mWifiNetwork:Landroid/net/Network;

.field private mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

.field private final mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;


# direct methods
.method public static synthetic $r8$lambda$nEGbomWyyHadqG-nsxngFevaGGA(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->lambda$new$0(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmApInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDetectionMode(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDetectionMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsForegroundActivityDetectionStarted(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsForegroundActivityDetectionStarted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWaitForQCResult(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWaitForQCResult:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWifiConnected(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWifiConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWifiValidState(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWifiValidState:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastAutoSwitchNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastAutoSwitchNotifiedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastSuggestionNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastSuggestionNotifiedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastSwitchNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastSwitchNotifiedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastTcpMonitorTime(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastTcpMonitorTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmNotifier(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNotifier:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPolicyManager(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Landroid/net/NetworkPolicyManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSsid(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSsid:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchForIndividualAppsEnabled(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchForIndividualAppsEverDetected(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEverDetected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiConnectedTime(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiConnectedTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiPackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiTransportLayerMonitor(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmApInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDetectionMode(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDetectionMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDnsDetected(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsDetected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsWaitForQCResult(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWaitForQCResult:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsWifiConnected(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWifiConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsWifiValidState(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWifiValidState:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSsid(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSsid:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSwitchForIndividualAppsEnabled(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSwitchForIndividualAppsEverDetected(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEverDetected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiConnectedTime(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiConnectedTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiNetwork(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Landroid/net/Network;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiNetwork:Landroid/net/Network;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetAudioManager(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Landroid/media/AudioManager;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPackageManager(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Landroid/content/pm/PackageManager;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrunDelayedNetdShellCommandAgain(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->runDelayedNetdShellCommandAgain(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrunShellCommandResult(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->runShellCommandResult(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendBigDataFeatureForTCPE(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendBigDataFeatureForTCPE(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetVoipOngoing(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->setVoipOngoing(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msyncGetCurrentWifiInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Landroid/net/wifi/WifiInfo;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateDnsInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateDnsInfo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMonitoringOperation(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateMonitoringOperation(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRunningDnsList(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateRunningDnsList(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTcpDnsHistory(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateTcpDnsHistory(Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 82
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 357
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTCPEdatalock:Ljava/lang/Object;

    .line 2201
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTCPEAllSocketlock:Ljava/lang/Object;

    .line 2526
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsdatalock:Ljava/lang/Object;

    .line 2596
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningDnsListlock:Ljava/lang/Object;

    .line 2634
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningSynlock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .registers 14

    .line 370
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const p2, 0x211f5

    .line 107
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_FOREGROUND_ACTIVITY_START:I

    const p2, 0x211f6

    .line 108
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_FOREGROUND_ACTIVITY_STOP:I

    const p2, 0x211f7

    .line 109
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_FOREGROUND_ACTIVITY_DETECT:I

    const p2, 0x21209

    .line 121
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_QC_REQUEST:I

    const p2, 0x2120a

    .line 122
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_QC_RESULT_UPDATED:I

    const p2, 0x2120b

    .line 123
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_QC_RESULT_TIMEOUT:I

    const p2, 0x2120c

    .line 124
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_SWITCH_INDIVIDUAL_APP_TO_MOBILE_DATA:I

    const p2, 0x2120d

    .line 125
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_SWITCH_INDIVIDUAL_APP_TO_WIFI:I

    const p2, 0x2120e

    .line 126
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_SWITCH_INDIVIDUAL_APP_LIST_CHANGED:I

    const p2, 0x21213

    .line 131
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_TURN_ON_MOBILE_NETWORK:I

    const p2, 0x21214

    .line 132
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_TURN_OFF_MOBILE_NETWORK:I

    const p2, 0x21215

    .line 133
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_CHECK_MOBILE_DATA_ENABLED:I

    const p2, 0x21216

    .line 134
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_RESET_TCP_TIMEOUT_VALUE:I

    const p2, 0x2121d

    .line 139
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_SHELL_COMMAND_RESULT:I

    const p2, 0x2121e

    .line 140
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_RUN_SHELL_COMMAND_AGAIN:I

    const p2, 0x21227

    .line 145
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_VOIP_STATE_CHANGED:I

    const/4 p2, 0x5

    .line 154
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_COLUMN_TX_RX_QUEUE:I

    const/4 v0, 0x7

    .line 156
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_COLUMN_RETRANSMISSION:I

    const/4 v0, 0x1

    .line 160
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->RECEIVE_QUEUE_COLUMN:I

    const-string v1, "01"

    .line 165
    iput-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_STATUS_ESTABLISHED:Ljava/lang/String;

    const/4 v1, 0x0

    .line 234
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSkipUid:I

    .line 235
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSkipUidNotified:Z

    const/16 v2, -0xc8

    .line 242
    iput v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRSSI:I

    .line 243
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkSpeed:I

    const/16 v2, 0x14

    .line 244
    iput v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkSpeedThreshold:I

    const/16 v2, -0x37

    .line 245
    iput v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkRssiThreshold:I

    const-wide/16 v2, 0x0

    .line 246
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLoss:D

    .line 247
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIs5GHz:Z

    const-string v2, ""

    .line 248
    iput-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSsid:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 249
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevRx:J

    .line 250
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevTx:J

    .line 251
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidTxDiff:J

    .line 252
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidRxDiff:J

    .line 253
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidTxRxOnResume:J

    .line 254
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidAccumulatedTxRx:J

    .line 259
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPoorNetworkDetectionEnabled:Z

    .line 260
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEnabled:Z

    .line 261
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsForegroundActivityDetectionStarted:Z

    .line 262
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEverDetected:Z

    .line 263
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsQaiSwitchableMode:Z

    const/4 v4, -0x1

    .line 264
    iput v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentQai:I

    .line 265
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDetectionMode:I

    .line 267
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsScreenOn:Z

    .line 268
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWifiConnected:Z

    .line 269
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWifiValidState:Z

    .line 270
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWaitForQCResult:Z

    .line 271
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsInterfaceNameNotAvailable:Z

    .line 272
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsMobileDataEnabledByTcpMonitor:Z

    .line 274
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevSynSize:I

    .line 275
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidRetransmissionCounter:I

    .line 276
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockNoEstablishCounter:I

    .line 277
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSynBlockCountSum:I

    .line 278
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidChatAppRetransmissionCounter:I

    .line 279
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidReceiveQueueCounter:I

    .line 280
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsBlockCounter:I

    .line 282
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiConnectedTime:J

    .line 284
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    const/16 v4, 0x3a98

    .line 288
    iput v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TIME_RESET_TCP_TIMEOUT:I

    const/4 v4, 0x3

    .line 289
    iput v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->MOBILE_DATA_ENABLE_CHECK_MAX:I

    const/16 v5, 0xbb8

    .line 290
    iput v5, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->MOBILE_DATA_ENABLE_CHECK_DELAY:I

    const-wide/16 v6, 0x3e8

    .line 291
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_DETECT_INTERVAL:J

    const-string v6, "TCPMONITOR"

    .line 293
    iput-object v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->KEY_TCP_MONITOR_COMMAND:Ljava/lang/String;

    const-string v6, "show_individual_apps"

    .line 294
    iput-object v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->EXTRA_SHOW_SWITCH_FOR_INDIVIDUAL_APPS:Ljava/lang/String;

    .line 295
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_UID_BLOCK_NETD_MODE:Z

    const/4 v6, 0x0

    .line 298
    iput-object v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 299
    iput-object v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 302
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLatestTxRx:Ljava/util/ArrayList;

    const/16 v7, 0xa

    .line 304
    iput v7, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mThresholdNormalEstablish:I

    const/16 v8, 0x64

    .line 305
    iput v8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mThresholdLatestSumTxRx:I

    .line 307
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mThresholdDetectionIgnored:I

    .line 312
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedListLock:Ljava/lang/Object;

    .line 313
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    .line 314
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidListWaitingForQcResult:Ljava/util/ArrayList;

    .line 326
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPrevRunningBeaconCount:I

    .line 327
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mBeaconRateCount:I

    .line 329
    iput v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->BEACON_SAMPLE_THRESHOLD:I

    .line 330
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->BEACON_AVERAGE_RATE_TRHESHOLD:I

    .line 331
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningBeaconCountList:Ljava/util/ArrayList;

    .line 336
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsList:Ljava/util/ArrayList;

    .line 342
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsVoipOngoing:Z

    .line 343
    iput v5, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TIME_DELAY_VOIP_STATE_FINISHED:I

    .line 348
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidChangedTime:J

    .line 349
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mScreenOnCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 354
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDumpHandlerMsg:Ljava/util/ArrayList;

    .line 355
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistory:Ljava/util/ArrayList;

    .line 356
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDetectedHistory:Ljava/util/ArrayList;

    .line 358
    iput-object v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastDetectedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 359
    iput-object v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastSuggestionNotifiedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 360
    iput-object v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastSwitchNotifiedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 361
    iput-object v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastAutoSwitchNotifiedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 362
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastTcpMonitorTime:J

    const/16 p2, 0x258

    .line 365
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_HISTORY_MAX_COUNT:I

    .line 366
    iput v7, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_DETECTED_HISTORY_SIZE:I

    .line 745
    iput-object v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mAudioManager:Landroid/media/AudioManager;

    .line 2200
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpAllSocketInfoHistory:Ljava/util/ArrayList;

    .line 2430
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsDetected:Z

    .line 2442
    new-instance p2, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$5;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$5;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    .line 2484
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isDnsCallbackRegistered:Z

    .line 2524
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDnsHistory:Ljava/util/ArrayList;

    .line 2590
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningIpListSyn:Ljava/util/ArrayList;

    .line 2591
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningDnsList:Ljava/util/ArrayList;

    .line 2592
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningPrevSyn:Ljava/util/ArrayList;

    .line 2593
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrSyn:Ljava/util/ArrayList;

    .line 2594
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrEstablish:Ljava/util/ArrayList;

    .line 371
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mContext:Landroid/content/Context;

    .line 372
    iput-object p3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 374
    iput-object p4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 376
    new-instance p2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    invoke-direct {p2, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNotifier:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    .line 378
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "wifi_switch_for_individual_apps_ever_detected"

    invoke-static {p2, p3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v0, :cond_1a1

    goto :goto_1a2

    :cond_1a1
    move v0, v1

    :goto_1a2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEverDetected:Z

    .line 380
    sget-boolean p2, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz p2, :cond_1c0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mSwitchForIndividualAppsEverDetected: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEverDetected:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SemWifiSwitchForIndividualAppsService"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_1c0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->startHandler()V

    .line 383
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->setupBroadcastReceiver()V

    .line 384
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->registerWifiNetworkCallbacks()V

    .line 385
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->registerForSwitchForIndividualAppsChange()V

    .line 387
    new-instance p2, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V

    invoke-virtual {p4, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    .line 397
    const-class p2, Landroid/net/NetworkPolicyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkPolicyManager;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-void
.end method

.method private addAllTcpSocketInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;)V
    .registers 6

    .line 2204
    sget-object v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTCPEAllSocketlock:Ljava/lang/Object;

    monitor-enter v0

    .line 2205
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpAllSocketInfoHistory:Ljava/util/ArrayList;

    if-eqz v1, :cond_3a

    .line 2206
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x258

    if-lt v1, v2, :cond_1a

    .line 2207
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpAllSocketInfoHistory:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2208
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpAllSocketInfoHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    .line 2210
    :cond_1a
    iget v1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->retransmission:I

    iget v2, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->syn:I

    add-int v3, v1, v2

    if-lez v3, :cond_31

    iget v3, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->establishAllNoRetrans:I

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v1, v2

    div-int/2addr v3, v1

    const/16 v1, 0x32

    if-ge v3, v1, :cond_31

    const-string v1, "SLOW"

    .line 2211
    iput-object v1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->result:Ljava/lang/String;

    goto :goto_35

    :cond_31
    const-string v1, "NORMAL"

    .line 2212
    iput-object v1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->result:Ljava/lang/String;

    .line 2213
    :goto_35
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpAllSocketInfoHistory:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2215
    :cond_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p0

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method private addCurrentUidBlockedList(I)V
    .registers 5

    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 1751
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCurrentUidBlockedList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    if-eqz v0, :cond_36

    .line 1753
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1754
    :try_start_1d
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1755
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;->DETECTED:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1756
    monitor-exit v0

    goto :goto_36

    :catchall_33
    move-exception p0

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_1d .. :try_end_35} :catchall_33

    throw p0

    :cond_36
    :goto_36
    return-void
.end method

.method private addProblematicDomainName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 2698
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningDnsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_ae

    if-eqz p1, :cond_ae

    if-eqz p2, :cond_ae

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 2699
    :goto_b
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningDnsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_ae

    if-nez v2, :cond_ae

    const/16 v3, 0x257

    if-ge v1, v3, :cond_ae

    .line 2701
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningDnsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_aa

    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningDnsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 2702
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 2703
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss "

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2704
    iget-object v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningDnsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2705
    array-length v8, v6

    if-le v8, v4, :cond_aa

    .line 2706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v6, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v6, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2708
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateRunningSynList(Ljava/lang/String;)V

    .line 2710
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v2, :cond_a9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRunningDnsList - addProblematicDomainName Index :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningDnsList:Ljava/util/ArrayList;

    .line 2711
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemWifiSwitchForIndividualAppsService"

    .line 2710
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a9
    move v2, v4

    :cond_aa
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b

    :cond_ae
    return-void
.end method

.method private addTcpMonitorInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;)V
    .registers 5

    .line 2188
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastTcpMonitorTime:J

    .line 2189
    sget-object v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTCPEdatalock:Ljava/lang/Object;

    monitor-enter v0

    .line 2190
    :try_start_9
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistory:Ljava/util/ArrayList;

    if-eqz v1, :cond_25

    .line 2191
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x258

    if-lt v1, v2, :cond_20

    .line 2192
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistory:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2193
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    .line 2195
    :cond_20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistory:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2197
    :cond_25
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_27

    throw p0
.end method

.method private changeAllRouteToDefaultNetwork()V
    .registers 4

    .line 2041
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    const-string v1, " while ip rule del pref 2 2>/dev/null; do true; done"

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeAllRouteToDefaultNetwork - command: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SemWifiSwitchForIndividualAppsService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNetdCommandHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

    if-eqz v0, :cond_28

    const/4 v2, 0x1

    .line 2043
    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2047
    :cond_28
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->removeAllDnsRoutes()V

    return-void
.end method

.method private changeDnsRouteUid(ILjava/lang/String;)V
    .registers 8

    .line 2068
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_92

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_92

    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2069
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    const-string v3, "SemWifiSwitchForIndividualAppsService"

    if-eqz v2, :cond_3e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeDnsRouteUid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    :cond_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ip -4 rule add from all uidrange "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " table "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pref 1"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2072
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v2, :cond_84

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeDnsRouteUid - command: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    :cond_84
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNetdCommandHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

    if-eqz v2, :cond_10

    const/4 v3, 0x1

    .line 2074
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_10

    :cond_92
    return-void
.end method

.method private changeRouteToDefaultNetwork(I)V
    .registers 5

    .line 2028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ip -4 rule del from all uidrange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pref 2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2029
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v1, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeRouteToDefaultNetwork - command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWifiSwitchForIndividualAppsService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    :cond_38
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNetdCommandHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

    if-eqz v1, :cond_44

    const/4 v2, 0x1

    .line 2031
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_44
    const-string v0, "wlan0"

    .line 2035
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->removeDnsRouteUid(ILjava/lang/String;)V

    return-void
.end method

.method private changeRouteToMobileNetwork(I)V
    .registers 7

    .line 1996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cRToMobile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiSwitchForIndividualAppsService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getMobileInterfaceName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_46

    .line 1999
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsInterfaceNameNotAvailable:Z

    if-nez v0, :cond_39

    .line 2000
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_2a

    const-string v0, "cRToMobile - check interface name again"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const v0, 0x21215

    .line 2001
    invoke-virtual {p0, v0, p1, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2003
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsInterfaceNameNotAvailable:Z

    goto :goto_45

    .line 2005
    :cond_39
    sget-boolean p1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz p1, :cond_42

    const-string p1, "cRToMobile - failed to get interface name"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    const/4 p1, 0x0

    .line 2006
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsInterfaceNameNotAvailable:Z

    :goto_45
    return-void

    .line 2011
    :cond_46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ip -4 rule add from all uidrange "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " table "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " pref 2"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2013
    sget-boolean v3, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v3, :cond_84

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeRouteToMobileNetwork - command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    :cond_84
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNetdCommandHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

    if-eqz v1, :cond_8f

    .line 2015
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2018
    :cond_8f
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->modifyTcpTimeOut()V

    const v0, 0x21216

    .line 2019
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->removeMessages(I)V

    .line 2020
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3a98

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v0, "wlan0"

    .line 2023
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->changeDnsRouteUid(ILjava/lang/String;)V

    return-void
.end method

.method private clearCurrentUidBlockedList()V
    .registers 3

    const-string v0, "SemWifiSwitchForIndividualAppsService"

    const-string v1, "clearCurrentUidBlockedList:"

    .line 1770
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    if-eqz v0, :cond_18

    .line 1772
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1773
    :try_start_e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 1774
    monitor-exit v0

    goto :goto_18

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw p0

    :cond_18
    :goto_18
    return-void
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .registers 3

    .line 748
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_10

    .line 749
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mAudioManager:Landroid/media/AudioManager;

    .line 751
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    .line 543
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    .line 544
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 546
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method private getCurrentUidBlockedListStatus(I)Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;
    .registers 5

    .line 1792
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1793
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    if-eqz v1, :cond_1f

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1794
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;

    monitor-exit v0

    return-object p0

    .line 1796
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_23

    .line 1797
    sget-object p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;->NONE:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;

    return-object p0

    :catchall_23
    move-exception p0

    .line 1796
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p0
.end method

.method private getMobileInterfaceName()Ljava/lang/String;
    .registers 9

    .line 2104
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    .line 2105
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    :goto_c
    if-ge v4, v1, :cond_71

    aget-object v5, v0, v4

    .line 2106
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    .line 2107
    invoke-virtual {v6, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v7

    if-eqz v7, :cond_6e

    const/16 v7, 0xc

    .line 2108
    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 2109
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v5

    .line 2110
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v6

    .line 2112
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_36
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/LinkAddress;

    .line 2113
    invoke-virtual {v7}, Landroid/net/LinkAddress;->isIpv4()Z

    move-result v7

    if-eqz v7, :cond_36

    .line 2114
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    :cond_4c
    if-nez v3, :cond_6e

    .line 2119
    invoke-virtual {v5}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Stacked"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 2120
    invoke-virtual {v5}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aget-object v3, v3, v5

    const-string v5, " "

    .line 2121
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    .line 2122
    aget-object v3, v3, v5

    :cond_6e
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 2126
    :cond_71
    sget-boolean p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz p0, :cond_8b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getMobileInterfaceName - "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemWifiSwitchForIndividualAppsService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b
    return-object v3
.end method

.method private getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    .line 1057
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_c

    .line 1058
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1060
    :cond_c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method private hasActivatedCurrentUidBlockedList()Z
    .registers 4

    .line 1810
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1811
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1812
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;

    .line 1813
    sget-object v2, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;->ACTIVATED:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;

    if-ne v1, v2, :cond_17

    const/4 p0, 0x1

    .line 1814
    monitor-exit v0

    return p0

    .line 1818
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_34

    const-string p0, "SemWifiSwitchForIndividualAppsService"

    const-string v0, "hasActivatedCurrentUidBlockedList: no items"

    .line 1819
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :catchall_34
    move-exception p0

    .line 1818
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p0
.end method

.method private static hexa2decIPv4(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 2671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2673
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_26

    add-int/lit8 v2, v1, -0x1

    add-int/lit8 v3, v1, 0x1

    .line 2674
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    .line 2675
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    .line 2676
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x2

    goto :goto_b

    :cond_26
    const/4 p0, 0x0

    .line 2679
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hexa2decIPv6(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 2682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2683
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_38

    const/4 v1, 0x0

    move v2, v1

    .line 2684
    :goto_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_29

    add-int/lit8 v3, v2, 0x8

    .line 2685
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->hexa2decIPv4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    .line 2686
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    goto :goto_f

    .line 2693
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2689
    :cond_38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_43

    const-string p0, "0.0.0.0"

    return-object p0

    .line 2690
    :cond_43
    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->hexa2decIPv4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private intToIp(I)Ljava/lang/String;
    .registers 4

    .line 1842
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

.method private isAggressiveMode()Z
    .registers 3

    .line 559
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPoorNetworkDetectionEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentQai:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_e

    if-ne p0, v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :cond_e
    :goto_e
    return v1
.end method

.method private isBeaconRatePoor()Z
    .registers 8

    .line 1589
    iget v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPrevRunningBeaconCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1590
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPrevRunningBeaconCount:I

    return v1

    :cond_8
    rsub-int/lit8 v0, v0, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_23

    .line 1602
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mBeaconRateCount:I

    .line 1603
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningBeaconCountList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_21

    .line 1604
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningBeaconCountList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1605
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningBeaconCountList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->trimToSize()V

    :cond_21
    :goto_21
    move v4, v1

    goto :goto_7e

    :cond_23
    const/4 v3, 0x3

    if-nez v0, :cond_31

    .line 1609
    iget v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mBeaconRateCount:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mBeaconRateCount:I

    if-le v4, v3, :cond_2e

    goto :goto_21

    :cond_2e
    move v2, v1

    move v4, v2

    goto :goto_7e

    :cond_31
    const/16 v4, 0x28

    if-ge v0, v4, :cond_21

    .line 1615
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mBeaconRateCount:I

    .line 1616
    iget-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningBeaconCountList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_49

    .line 1617
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningBeaconCountList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1618
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningBeaconCountList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->trimToSize()V

    .line 1620
    :cond_49
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningBeaconCountList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1622
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningBeaconCountList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_21

    .line 1623
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningBeaconCountList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    :goto_61
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_61

    .line 1626
    :cond_73
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningBeaconCountList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    div-int/2addr v4, v3

    const/4 v3, 0x5

    if-le v4, v3, :cond_7e

    move v2, v1

    .line 1642
    :cond_7e
    :goto_7e
    sget-boolean v3, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v3, :cond_b6

    if-eqz v2, :cond_b6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBeaconRatePoor: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPrevRunningBeaconCount:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SemWifiSwitchForIndividualAppsService"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    :cond_b6
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPrevRunningBeaconCount:I

    return v2
.end method

.method private isBlockingApp(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;)Z
    .registers 16

    const/4 v0, 0x0

    .line 1388
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1246
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSynBlockCountSum:I

    .line 1249
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    const-string v3, ", MAC = "

    const-string v4, "BR"

    const/16 v5, 0xa

    const/4 v6, 0x2

    const-string v7, "BS"

    const/16 v8, 0x32

    const/4 v9, 0x5

    const-string v10, "SemWifiSwitchForIndividualAppsService"

    const/4 v11, 0x1

    .line 1272
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v2, :cond_22c

    .line 1249
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isChatApp()Z

    move-result v2

    if-eqz v2, :cond_22c

    .line 1250
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v2, :cond_2d

    const-string v2, "isBlockingApp CHAT"

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :cond_2d
    iget v2, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->retransmission:I

    if-lez v2, :cond_77

    .line 1253
    iget v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidChatAppRetransmissionCounter:I

    if-le v2, v9, :cond_52

    .line 1254
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_4f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBlockingApp CHAT RC DETECTED = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidChatAppRetransmissionCounter:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :cond_4f
    iput-object v4, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->result:Ljava/lang/String;

    return v11

    :cond_52
    add-int/2addr v2, v11

    .line 1258
    iput v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidChatAppRetransmissionCounter:I

    .line 1259
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v2, :cond_6f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBlockingApp CHAT RC = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidChatAppRetransmissionCounter:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6f
    const-string v2, "BR_cont"

    .line 1260
    iput-object v2, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->result:Ljava/lang/String;

    .line 1261
    iget v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidChatAppRetransmissionCounter:I

    iput v2, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->chatRetrans:I

    .line 1266
    :cond_77
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v5, :cond_89

    .line 1267
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1268
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    .line 1271
    :cond_89
    iget v2, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    iget v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevSynSize:I

    if-ge v2, v4, :cond_99

    iget v5, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    if-ge v5, v4, :cond_99

    .line 1272
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c8

    :cond_99
    if-nez v2, :cond_a5

    .line 1273
    iget v4, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    if-lez v4, :cond_a5

    .line 1274
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c8

    :cond_a5
    if-lez v2, :cond_c3

    .line 1275
    iget v2, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishIPv4:I

    if-lez v2, :cond_b2

    iget v4, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    mul-int/lit8 v4, v4, 0x64

    div-int/2addr v4, v2

    if-gt v4, v8, :cond_bd

    :cond_b2
    iget v2, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishIPv6:I

    if-lez v2, :cond_c3

    iget v4, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    mul-int/lit8 v4, v4, 0x64

    div-int/2addr v4, v2

    if-le v4, v8, :cond_c3

    .line 1278
    :cond_bd
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c8

    .line 1280
    :cond_c3
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1283
    :goto_c8
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSynBlockCountSum:I

    .line 1284
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1285
    iget v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSynBlockCountSum:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSynBlockCountSum:I

    goto :goto_d0

    .line 1289
    :cond_e6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    iget v2, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->isSwitchEnabledApp(I)Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_126

    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getDetectedPackageList()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_126

    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 1290
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getDetectedPackageList()Ljava/util/HashMap;

    move-result-object v1

    iget-object v4, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_126

    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 1291
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getDetectedPackageList()Ljava/util/HashMap;

    move-result-object v1

    iget-object v4, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;

    .line 1292
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->getDetectedCount()I

    move-result v1

    if-le v1, v9, :cond_126

    .line 1293
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v1, :cond_124

    const-string v1, "isBlockingApp CHAT isBlockingApp - SBC aggressive"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_124
    move v9, v6

    goto :goto_134

    .line 1295
    :cond_126
    iget v1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    if-ge v1, v9, :cond_134

    .line 1296
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v1, :cond_133

    const-string v1, "isBlockingApp CHAT isBlockingApp - SBC low"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_133
    move v9, v2

    .line 1300
    :cond_134
    :goto_134
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v1, :cond_154

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBlockingApp CHAT SBC = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSynBlockCountSum:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    :cond_154
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSynBlockCountSum:I

    iput v1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->synBlockCount:I

    .line 1302
    iput v9, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->maxSynCount:I

    if-lt v1, v9, :cond_15f

    .line 1304
    iput-object v7, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->result:Ljava/lang/String;

    return v11

    :cond_15f
    if-lez v1, :cond_189

    .line 1309
    iget v1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    if-nez v1, :cond_189

    .line 1310
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockNoEstablishCounter:I

    add-int/2addr v1, v11

    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockNoEstablishCounter:I

    .line 1311
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v1, :cond_184

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBlockingApp CHAT SBNEC = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockNoEstablishCounter:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    :cond_184
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockNoEstablishCounter:I

    iput v1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->synBlockNoEstablish:I

    goto :goto_18b

    .line 1314
    :cond_189
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockNoEstablishCounter:I

    .line 1316
    :goto_18b
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockNoEstablishCounter:I

    if-lt v1, v9, :cond_192

    .line 1317
    iput-object v7, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->result:Ljava/lang/String;

    return v11

    .line 1322
    :cond_192
    iget v1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->receivingQueue:I

    if-lez v1, :cond_1c4

    iget v1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    if-lez v1, :cond_1c4

    .line 1323
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidReceiveQueueCounter:I

    add-int/2addr v1, v11

    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidReceiveQueueCounter:I

    .line 1324
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v1, :cond_1b9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBlockingApp CHAT SQC = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidReceiveQueueCounter:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    :cond_1b9
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidReceiveQueueCounter:I

    iput v1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->receivingQueueCount:I

    if-le v1, v6, :cond_1c6

    const-string p0, "BQ"

    .line 1327
    iput-object p0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->result:Ljava/lang/String;

    return v11

    .line 1331
    :cond_1c4
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidReceiveQueueCounter:I

    .line 1335
    :cond_1c6
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isDnsDetected()Z

    move-result v1

    const-string v3, "BD"

    const-string v4, "isBlockingApp CHAT DBC = "

    if-eqz v1, :cond_1fd

    .line 1336
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->resetDnsDetected()V

    .line 1337
    iget v1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    if-nez v1, :cond_32e

    .line 1338
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsBlockCounter:I

    add-int/2addr v1, v11

    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsBlockCounter:I

    .line 1339
    iput v1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->dnsBlockCount:I

    .line 1340
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v1, :cond_1f6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsBlockCounter:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :cond_1f6
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsBlockCounter:I

    if-le p0, v2, :cond_32e

    .line 1342
    iput-object v3, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->result:Ljava/lang/String;

    return v11

    .line 1347
    :cond_1fd
    iget v1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    if-nez v1, :cond_209

    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsBlockCounter:I

    if-lez v1, :cond_209

    add-int/2addr v1, v11

    .line 1348
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsBlockCounter:I

    goto :goto_20b

    .line 1350
    :cond_209
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsBlockCounter:I

    .line 1352
    :goto_20b
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v1, :cond_223

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsBlockCounter:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :cond_223
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsBlockCounter:I

    iput p0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->dnsBlockCount:I

    if-le p0, v2, :cond_32e

    .line 1355
    iput-object v3, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->result:Ljava/lang/String;

    return v11

    .line 1360
    :cond_22c
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v2, :cond_235

    const-string v2, "isBlockingApp SWITCHABLE"

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :cond_235
    iget v2, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->retransmission:I

    if-lez v2, :cond_264

    mul-int/lit8 v2, v2, 0x64

    iget v13, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    div-int/2addr v2, v13

    const/16 v13, 0x19

    if-lt v2, v13, :cond_264

    .line 1364
    iget v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidRetransmissionCounter:I

    add-int/2addr v2, v11

    iput v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidRetransmissionCounter:I

    .line 1365
    iput v2, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->retransCount:I

    .line 1366
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v2, :cond_266

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isBlockingApp SWITCHABLE RC = "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidRetransmissionCounter:I

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_266

    .line 1368
    :cond_264
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidRetransmissionCounter:I

    .line 1370
    :cond_266
    :goto_266
    iget v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidRetransmissionCounter:I

    if-le v2, v9, :cond_26d

    .line 1371
    iput-object v4, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->result:Ljava/lang/String;

    return v11

    .line 1376
    :cond_26d
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v5, :cond_27f

    .line 1377
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1378
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    .line 1381
    :cond_27f
    iget v2, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    if-nez v2, :cond_28d

    iget v4, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    if-lez v4, :cond_28d

    .line 1382
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b0

    :cond_28d
    if-lez v2, :cond_2ab

    .line 1383
    iget v2, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishIPv4:I

    if-lez v2, :cond_29a

    iget v4, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    mul-int/lit8 v4, v4, 0x64

    div-int/2addr v4, v2

    if-gt v4, v8, :cond_2a5

    :cond_29a
    iget v2, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishIPv6:I

    if-lez v2, :cond_2ab

    iget v4, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    mul-int/lit8 v4, v4, 0x64

    div-int/2addr v4, v2

    if-le v4, v8, :cond_2ab

    .line 1386
    :cond_2a5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b0

    .line 1388
    :cond_2ab
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1391
    :goto_2b0
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSynBlockCountSum:I

    .line 1392
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2ce

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1393
    iget v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSynBlockCountSum:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSynBlockCountSum:I

    goto :goto_2b8

    .line 1397
    :cond_2ce
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getDetectedPackageList()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_302

    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 1398
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getDetectedPackageList()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_302

    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 1399
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getDetectedPackageList()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;

    .line 1400
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->getDetectedCount()I

    move-result v1

    if-le v1, v9, :cond_302

    .line 1401
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v1, :cond_303

    const-string v1, "isBlockingApp SWITCHABLE - SBC aggressive"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_303

    :cond_302
    move v6, v9

    .line 1405
    :cond_303
    :goto_303
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v1, :cond_323

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBlockingApp SWITCHABLE  SBC = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSynBlockCountSum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :cond_323
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSynBlockCountSum:I

    iput p0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->synBlockCount:I

    .line 1407
    iput v6, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->maxSynCount:I

    if-lt p0, v6, :cond_32e

    .line 1409
    iput-object v7, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->result:Ljava/lang/String;

    return v11

    :cond_32e
    return v0
.end method

.method private isCurrentUidBlockedList(I)Z
    .registers 3

    .line 1801
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1802
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    if-eqz p0, :cond_14

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    .line 1803
    monitor-exit v0

    return p0

    .line 1805
    :cond_14
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method private isDnsDetected()Z
    .registers 1

    .line 2437
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsDetected:Z

    return p0
.end method

.method private isMdoEnabledUid(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method private isMobileDataConnected()Z
    .registers 3

    .line 2132
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_10

    .line 2133
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2135
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result p0

    const/4 v0, 0x2

    const-string v1, "SemWifiSwitchForIndividualAppsService"

    if-ne p0, v0, :cond_26

    .line 2136
    sget-boolean p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz p0, :cond_24

    const-string p0, "isMobileDataConnected: true"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const/4 p0, 0x1

    return p0

    .line 2139
    :cond_26
    sget-boolean p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz p0, :cond_2f

    const-string p0, "isMobileDataConnected: false"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method private isMonitoringEnabled()Z
    .registers 2

    .line 550
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPoorNetworkDetectionEnabled:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWifiValidState:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsScreenOn:Z

    if-eqz v0, :cond_12

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsQaiSwitchableMode:Z

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private isNotifyEnabledApp(Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)Z
    .registers 7

    const-string v0, "SemWifiSwitchForIndividualAppsService"

    const/4 v1, 0x0

    if-nez p1, :cond_b

    const-string p0, "isNotifyEnabledApp - null WifiPackageInfo"

    .line 1650
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1654
    :cond_b
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getDetectedPackageList()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;

    .line 1655
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->isSwitchEnabledApp(I)Z

    move-result v3

    if-nez v3, :cond_4a

    if-eqz v2, :cond_4a

    .line 1656
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->getDetectedCount()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mThresholdDetectionIgnored:I

    if-lt v3, v4, :cond_4a

    .line 1657
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isNotifyEnabledApp - detection ignored time:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->getDetectedCount()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1661
    :cond_4a
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDetectionMode:I

    const/4 v0, 0x1

    if-eqz p0, :cond_59

    if-eq p0, v0, :cond_52

    goto :goto_60

    .line 1668
    :cond_52
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isSwitchable()Z

    move-result p0

    if-eqz p0, :cond_60

    return v0

    .line 1663
    :cond_59
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isChatApp()Z

    move-result p0

    if-eqz p0, :cond_60

    return v0

    :cond_60
    :goto_60
    return v1
.end method

.method private isPackageException(Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)Z
    .registers 10

    .line 1460
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "SemWifiSwitchForIndividualAppsService"

    const/4 v4, -0x1

    if-ne v0, v4, :cond_17

    .line 1462
    sget-boolean v4, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v4, :cond_14

    const-string v4, "isPackageException - uid 1000 or INVALID app"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move v4, v1

    goto/16 :goto_af

    .line 1464
    :cond_17
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isCurrentUidBlockedList(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 1465
    sget-boolean v4, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v4, :cond_39

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPackageException - already blocked "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    const/4 v4, 0x2

    goto/16 :goto_af

    .line 1467
    :cond_3c
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->hasInternetPermission()Z

    move-result v4

    if-nez v4, :cond_60

    .line 1468
    sget-boolean v4, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v4, :cond_5e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPackageException - no internet permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    const/4 v4, 0x3

    goto :goto_af

    .line 1470
    :cond_60
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isMdoEnabledUid(I)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 1471
    sget-boolean v4, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v4, :cond_82

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPackageException - mdo enabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    const/4 v4, 0x4

    goto :goto_af

    .line 1473
    :cond_84
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isChatApp()Z

    move-result v4

    if-eqz v4, :cond_ae

    iget-wide v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidAccumulatedTxRx:J

    const-wide/16 v6, 0x7d0

    cmp-long v4, v4, v6

    if-lez v4, :cond_ae

    .line 1474
    sget-boolean v4, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v4, :cond_ac

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPackageException - txrx:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidAccumulatedTxRx:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ac
    const/4 v4, 0x5

    goto :goto_af

    :cond_ae
    move v4, v2

    :goto_af
    if-eqz v4, :cond_d4

    .line 1478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPackageException - result:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSkipUid:I

    return v1

    .line 1482
    :cond_d4
    iput v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSkipUid:I

    return v2
.end method

.method private isPackageSystemException(Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)Z
    .registers 3

    .line 1450
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isSystemApp()Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1451
    sget-boolean p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz p0, :cond_24

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isPackageSystemException - system app"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiSwitchForIndividualAppsService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method private isSkipNetworkCondition()Z
    .registers 8

    .line 1556
    iget v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkSpeed:I

    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkSpeedThreshold:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "SemWifiSwitchForIndividualAppsService"

    if-ge v0, v1, :cond_27

    .line 1557
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSkipNetworkCondition - linkspeed :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkSpeed:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    move p0, v2

    goto/16 :goto_b6

    .line 1559
    :cond_27
    iget v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRSSI:I

    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkRssiThreshold:I

    if-ge v0, v1, :cond_49

    .line 1560
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_47

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSkipNetworkCondition - rssi :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRSSI:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    const/4 p0, 0x2

    goto :goto_b6

    .line 1562
    :cond_49
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLoss:D

    const-wide v5, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v0, v5

    if-lez v0, :cond_70

    .line 1563
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_6e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSkipNetworkCondition - loss :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLoss:D

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    const/4 p0, 0x3

    goto :goto_b6

    .line 1568
    :cond_70
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isVoipOngoing()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 1569
    sget-boolean p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz p0, :cond_7f

    const-string p0, "isSkipNetworkCondition - voip ongoing"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7f
    const/4 p0, 0x5

    goto :goto_b6

    .line 1571
    :cond_81
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mScreenOnCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_b5

    .line 1572
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mScreenOnCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 1573
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_b3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSkipNetworkCondition - screen turned on"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mScreenOnCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " : seconds"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b3
    const/4 p0, 0x6

    goto :goto_b6

    :cond_b5
    move p0, v3

    :goto_b6
    if-eqz p0, :cond_cd

    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSkipNetworkCondition - result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_cd
    return v3
.end method

.method private isSkipPoorLinkCondition()Z
    .registers 6

    .line 1536
    iget v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkSpeed:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "SemWifiSwitchForIndividualAppsService"

    const/16 v4, 0x14

    if-ge v0, v4, :cond_26

    .line 1537
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSkipPoorLinkCondition - linkspeed :"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkSpeed:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    move p0, v1

    goto :goto_49

    .line 1539
    :cond_26
    iget v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRSSI:I

    const/16 v4, -0x50

    if-ge v0, v4, :cond_48

    .line 1540
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_46

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSkipPoorLinkCondition - rssi :"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRSSI:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    const/4 p0, 0x2

    goto :goto_49

    :cond_48
    move p0, v2

    :goto_49
    if-eqz p0, :cond_60

    .line 1548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSkipPoorLinkCondition - result:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_60
    return v2
.end method

.method private isSkipTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;)Z
    .registers 10

    .line 1507
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLatestTxRx:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_39

    .line 1508
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x3

    if-lt v0, v4, :cond_13

    .line 1509
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLatestTxRx:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1511
    :cond_13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLatestTxRx:Ljava/util/ArrayList;

    iget-wide v4, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->tx:J

    iget-wide v6, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->rx:J

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1512
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLatestTxRx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_27

    .line 1517
    :cond_39
    iget v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    iget v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mThresholdNormalEstablish:I

    const/4 v5, 0x1

    const-string v6, "SemWifiSwitchForIndividualAppsService"

    if-le v0, v4, :cond_5e

    .line 1518
    sget-boolean p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz p0, :cond_5c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSkipTcpMonitorInfo - e:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    move p0, v5

    goto :goto_80

    .line 1520
    :cond_5e
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mThresholdLatestSumTxRx:I

    int-to-long p0, p0

    cmp-long p0, v2, p0

    if-lez p0, :cond_7f

    .line 1521
    sget-boolean p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz p0, :cond_7d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isSkipTcpMonitorInfo - txrx:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    const/4 p0, 0x2

    goto :goto_80

    :cond_7f
    move p0, v1

    :goto_80
    if-eqz p0, :cond_97

    .line 1526
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSkipTcpMonitorInfo - result:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_97
    return v1
.end method

.method private isSwitchingEnabled()Z
    .registers 2

    .line 555
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isMonitoringEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEnabled:Z

    if-nez v0, :cond_e

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEverDetected:Z

    if-nez p0, :cond_10

    :cond_e
    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private isVoipOngoing()Z
    .registers 1

    .line 733
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsVoipOngoing:Z

    return p0
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 3

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    .line 389
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsScreenOn:Z

    const/4 p1, 0x2

    .line 390
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateMonitoringOperation(I)V

    goto :goto_16

    :cond_a
    const/4 p1, 0x0

    .line 392
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsScreenOn:Z

    .line 393
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mScreenOnCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 p1, 0x4

    .line 394
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateMonitoringOperation(I)V

    :goto_16
    return-void
.end method

.method private loadTcpInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;)Z
    .registers 32

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "loadTcpInfo finally - Exception: "

    const-string v5, "SemWifiSwitchForIndividualAppsService"

    .line 1117
    iget-object v6, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrEstablish:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1118
    iget-object v6, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrSyn:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/4 v7, 0x0

    .line 1123
    :try_start_15
    new-instance v9, Ljava/io/FileReader;

    const-string v10, "/proc/net/tcp"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_1c} :catch_3a1
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1c} :catch_34d
    .catchall {:try_start_15 .. :try_end_1c} :catchall_343

    .line 1124
    :try_start_1c
    new-instance v10, Ljava/io/FileReader;

    const-string v11, "/proc/net/tcp6"

    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_23} :catch_338
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_23} :catch_32e
    .catchall {:try_start_1c .. :try_end_23} :catchall_323

    .line 1125
    :try_start_23
    new-instance v11, Ljava/io/BufferedReader;

    invoke-direct {v11, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_28} :catch_31d
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_28} :catch_317
    .catchall {:try_start_23 .. :try_end_28} :catchall_311

    .line 1126
    :try_start_28
    new-instance v12, Ljava/io/BufferedReader;

    invoke-direct {v12, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_2d} :catch_309
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2d} :catch_301
    .catchall {:try_start_28 .. :try_end_2d} :catchall_2f9

    const/4 v7, 0x0

    .line 1131
    :goto_2e
    :try_start_2e
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_32} :catch_2f1
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_32} :catch_2e9
    .catchall {:try_start_2e .. :try_end_32} :catchall_2e1

    const-string v14, ":"

    const-string v6, "09"

    const/16 v16, 0x7

    const-string v15, "02"

    const-string v8, " +"

    move-object/from16 v18, v5

    const-string v5, "\n"

    const-wide/16 v19, 0x0

    move-object/from16 v21, v4

    const-string v4, "01"

    const/16 v22, 0x3

    const/16 v23, 0x8

    const/16 v24, 0x4

    if-eqz v13, :cond_16f

    move-object/from16 v25, v11

    .line 1132
    :try_start_50
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x1

    add-int/2addr v7, v11

    if-le v7, v11, :cond_14c

    .line 1135
    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1136
    aget-object v8, v5, v24

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a0

    .line 1137
    iget v8, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->establishAllNoRetrans:I

    const/4 v11, 0x1

    add-int/2addr v8, v11

    iput v8, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->establishAllNoRetrans:I

    .line 1138
    iget v8, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aget-object v11, v5, v23

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d3

    .line 1139
    iget v8, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishIPv4:I

    const/4 v11, 0x1

    add-int/2addr v8, v11

    iput v8, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishIPv4:I

    .line 1140
    iget v8, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    add-int/2addr v8, v11

    iput v8, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    .line 1141
    iget-object v8, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrEstablish:Ljava/util/ArrayList;

    aget-object v11, v5, v22

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d3

    .line 1142
    iget-object v8, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrEstablish:Ljava/util/ArrayList;

    aget-object v11, v5, v22

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d3

    .line 1145
    :cond_a0
    aget-object v8, v5, v24

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d3

    .line 1146
    iget v8, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->syn:I

    const/4 v11, 0x1

    add-int/2addr v8, v11

    iput v8, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->syn:I

    .line 1147
    iget v8, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aget-object v11, v5, v23

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d3

    .line 1148
    iget v8, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    const/4 v11, 0x1

    add-int/2addr v8, v11

    iput v8, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    .line 1149
    iget-object v8, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrSyn:Ljava/util/ArrayList;

    aget-object v11, v5, v22

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d3

    .line 1150
    iget-object v8, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrSyn:Ljava/util/ArrayList;

    aget-object v11, v5, v22

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1153
    :cond_d3
    :goto_d3
    aget-object v8, v5, v24

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_101

    aget-object v8, v5, v16

    const/16 v11, 0x10

    .line 1154
    invoke-static {v8, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v26

    cmp-long v8, v26, v19

    if-lez v8, :cond_101

    .line 1155
    iget v8, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->establishAllNoRetrans:I

    const/4 v11, 0x1

    sub-int/2addr v8, v11

    iput v8, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->establishAllNoRetrans:I

    .line 1156
    iget v8, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aget-object v11, v5, v23

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_101

    .line 1157
    iget v8, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->retransmission:I

    const/4 v11, 0x1

    add-int/2addr v8, v11

    iput v8, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->retransmission:I

    .line 1159
    :cond_101
    aget-object v8, v5, v24

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11d

    iget v6, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 1160
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aget-object v8, v5, v23

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11d

    .line 1161
    iget v6, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->laskAck:I

    const/4 v8, 0x1

    add-int/2addr v6, v8

    iput v6, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->laskAck:I

    .line 1163
    :cond_11d
    aget-object v6, v5, v24

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14c

    iget v4, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 1164
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aget-object v6, v5, v23

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14c

    const/4 v4, 0x5

    .line 1165
    aget-object v4, v5, v4

    invoke-virtual {v4, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 1166
    aget-object v4, v4, v5

    const/16 v6, 0x10

    invoke-static {v4, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v13

    cmp-long v4, v13, v19

    if-lez v4, :cond_14c

    .line 1167
    iget v4, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->receivingQueue:I

    add-int/2addr v4, v5

    iput v4, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->receivingQueue:I
    :try_end_14c
    .catch Ljava/lang/RuntimeException; {:try_start_50 .. :try_end_14c} :catch_166
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_14c} :catch_15d
    .catchall {:try_start_50 .. :try_end_14c} :catchall_154

    :cond_14c
    move-object/from16 v5, v18

    move-object/from16 v4, v21

    move-object/from16 v11, v25

    goto/16 :goto_2e

    :catchall_154
    move-exception v0

    move-object v1, v0

    move-object v7, v9

    move-object/from16 v2, v18

    move-object/from16 v3, v21

    goto/16 :goto_3c4

    :catch_15d
    move-exception v0

    move-object v1, v0

    move-object v7, v9

    move-object/from16 v2, v18

    move-object/from16 v3, v21

    goto/16 :goto_355

    :catch_166
    move-exception v0

    move-object v1, v0

    move-object v7, v9

    move-object/from16 v2, v18

    move-object/from16 v3, v21

    goto/16 :goto_3a9

    :cond_16f
    move-object/from16 v25, v11

    const/4 v7, 0x0

    .line 1174
    :goto_172
    :try_start_172
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11
    :try_end_176
    .catch Ljava/lang/RuntimeException; {:try_start_172 .. :try_end_176} :catch_2db
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_176} :catch_2d5
    .catchall {:try_start_172 .. :try_end_176} :catchall_2cf

    if-eqz v11, :cond_287

    .line 1175
    :try_start_178
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    add-int/2addr v7, v13

    if-le v7, v13, :cond_27f

    .line 1178
    invoke-virtual {v11, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1179
    aget-object v13, v11, v24

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1cc

    .line 1180
    iget v13, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->establishAllNoRetrans:I

    const/16 v17, 0x1

    add-int/lit8 v13, v13, 0x1

    iput v13, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->establishAllNoRetrans:I

    .line 1181
    iget v13, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v26, v5

    aget-object v5, v11, v23

    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_201

    .line 1182
    iget v5, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishIPv6:I

    const/4 v13, 0x1

    add-int/2addr v5, v13

    iput v5, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishIPv6:I

    .line 1183
    iget v5, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    add-int/2addr v5, v13

    iput v5, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    .line 1184
    iget-object v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrEstablish:Ljava/util/ArrayList;

    aget-object v13, v11, v22

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_201

    .line 1185
    iget-object v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrEstablish:Ljava/util/ArrayList;

    aget-object v13, v11, v22

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_201

    :cond_1cc
    move-object/from16 v26, v5

    .line 1188
    aget-object v5, v11, v24

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_201

    .line 1189
    iget v5, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->syn:I

    const/4 v13, 0x1

    add-int/2addr v5, v13

    iput v5, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->syn:I

    .line 1190
    iget v5, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aget-object v13, v11, v23

    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_201

    .line 1191
    iget v5, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    const/4 v13, 0x1

    add-int/2addr v5, v13

    iput v5, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    .line 1192
    iget-object v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrSyn:Ljava/util/ArrayList;

    aget-object v13, v11, v22

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_201

    .line 1193
    iget-object v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrSyn:Ljava/util/ArrayList;

    aget-object v13, v11, v22

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1196
    :cond_201
    :goto_201
    aget-object v5, v11, v24

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22f

    aget-object v5, v11, v16

    const/16 v13, 0x10

    .line 1197
    invoke-static {v5, v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v27

    cmp-long v5, v27, v19

    if-lez v5, :cond_22f

    .line 1198
    iget v5, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->establishAllNoRetrans:I

    const/4 v13, 0x1

    sub-int/2addr v5, v13

    iput v5, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->establishAllNoRetrans:I

    .line 1199
    iget v5, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aget-object v13, v11, v23

    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22f

    .line 1200
    iget v5, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->retransmission:I

    const/4 v13, 0x1

    add-int/2addr v5, v13

    iput v5, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->retransmission:I

    .line 1202
    :cond_22f
    aget-object v5, v11, v24

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24b

    iget v5, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 1203
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aget-object v13, v11, v23

    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24b

    .line 1204
    iget v5, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->laskAck:I

    const/4 v13, 0x1

    add-int/2addr v5, v13

    iput v5, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->laskAck:I

    .line 1206
    :cond_24b
    aget-object v5, v11, v24

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27b

    iget v5, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 1207
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aget-object v13, v11, v23

    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27b

    const/4 v5, 0x5

    .line 1208
    aget-object v11, v11, v5

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    .line 1209
    aget-object v11, v11, v13

    const/16 v5, 0x10

    invoke-static {v11, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v27

    cmp-long v11, v27, v19

    if-lez v11, :cond_283

    .line 1210
    iget v11, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->receivingQueue:I

    add-int/2addr v11, v13

    iput v11, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->receivingQueue:I
    :try_end_27a
    .catch Ljava/lang/RuntimeException; {:try_start_178 .. :try_end_27a} :catch_166
    .catch Ljava/lang/Exception; {:try_start_178 .. :try_end_27a} :catch_15d
    .catchall {:try_start_178 .. :try_end_27a} :catchall_154

    goto :goto_283

    :cond_27b
    const/16 v5, 0x10

    const/4 v13, 0x1

    goto :goto_283

    :cond_27f
    move-object/from16 v26, v5

    const/16 v5, 0x10

    :cond_283
    :goto_283
    move-object/from16 v5, v26

    goto/16 :goto_172

    :cond_287
    const/4 v13, 0x1

    .line 1216
    :try_start_288
    iget-wide v3, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidTxDiff:J

    iput-wide v3, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->tx:J

    .line 1217
    iget-wide v3, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidRxDiff:J

    iput-wide v3, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->rx:J

    .line 1218
    iget-wide v3, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLoss:D

    iput-wide v3, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->loss:D

    .line 1219
    iget v3, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRSSI:I

    iput v3, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->rssi:I

    .line 1220
    iget v3, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkSpeed:I

    iput v3, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->linkSpeed:I

    .line 1222
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z
    :try_end_29e
    .catch Ljava/lang/RuntimeException; {:try_start_288 .. :try_end_29e} :catch_2db
    .catch Ljava/lang/Exception; {:try_start_288 .. :try_end_29e} :catch_2d5
    .catchall {:try_start_288 .. :try_end_29e} :catchall_2cf

    if-eqz v2, :cond_2a3

    :try_start_2a0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->syncUpList()V
    :try_end_2a3
    .catch Ljava/lang/RuntimeException; {:try_start_2a0 .. :try_end_2a3} :catch_166
    .catch Ljava/lang/Exception; {:try_start_2a0 .. :try_end_2a3} :catch_15d
    .catchall {:try_start_2a0 .. :try_end_2a3} :catchall_154

    .line 1233
    :cond_2a3
    :try_start_2a3
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V

    .line 1234
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V

    .line 1235
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedReader;->close()V

    .line 1236
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_2af
    .catch Ljava/io/IOException; {:try_start_2a3 .. :try_end_2af} :catch_2b0

    goto :goto_2cc

    :catch_2b0
    move-exception v0

    move-object v1, v0

    .line 1239
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v2, :cond_2cc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v21

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v18

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2cc
    :goto_2cc
    move v6, v13

    goto/16 :goto_3a0

    :catchall_2cf
    move-exception v0

    move-object/from16 v2, v18

    move-object/from16 v3, v21

    goto :goto_2e6

    :catch_2d5
    move-exception v0

    move-object/from16 v2, v18

    move-object/from16 v3, v21

    goto :goto_2ee

    :catch_2db
    move-exception v0

    move-object/from16 v2, v18

    move-object/from16 v3, v21

    goto :goto_2f6

    :catchall_2e1
    move-exception v0

    move-object v3, v4

    move-object v2, v5

    move-object/from16 v25, v11

    :goto_2e6
    move-object v1, v0

    goto/16 :goto_32b

    :catch_2e9
    move-exception v0

    move-object v3, v4

    move-object v2, v5

    move-object/from16 v25, v11

    :goto_2ee
    move-object v1, v0

    goto/16 :goto_336

    :catch_2f1
    move-exception v0

    move-object v3, v4

    move-object v2, v5

    move-object/from16 v25, v11

    :goto_2f6
    move-object v1, v0

    goto/16 :goto_340

    :catchall_2f9
    move-exception v0

    move-object v3, v4

    move-object v2, v5

    move-object/from16 v25, v11

    move-object v1, v0

    move-object v12, v7

    goto :goto_32b

    :catch_301
    move-exception v0

    move-object v3, v4

    move-object v2, v5

    move-object/from16 v25, v11

    move-object v1, v0

    move-object v12, v7

    goto :goto_336

    :catch_309
    move-exception v0

    move-object v3, v4

    move-object v2, v5

    move-object/from16 v25, v11

    move-object v1, v0

    move-object v12, v7

    goto :goto_340

    :catchall_311
    move-exception v0

    move-object v3, v4

    move-object v2, v5

    move-object v1, v0

    move-object v12, v7

    goto :goto_329

    :catch_317
    move-exception v0

    move-object v3, v4

    move-object v2, v5

    move-object v1, v0

    move-object v12, v7

    goto :goto_334

    :catch_31d
    move-exception v0

    move-object v3, v4

    move-object v2, v5

    move-object v1, v0

    move-object v12, v7

    goto :goto_33e

    :catchall_323
    move-exception v0

    move-object v3, v4

    move-object v2, v5

    move-object v1, v0

    move-object v10, v7

    move-object v12, v10

    :goto_329
    move-object/from16 v25, v12

    :goto_32b
    move-object v7, v9

    goto/16 :goto_3c4

    :catch_32e
    move-exception v0

    move-object v3, v4

    move-object v2, v5

    move-object v1, v0

    move-object v10, v7

    move-object v12, v10

    :goto_334
    move-object/from16 v25, v12

    :goto_336
    move-object v7, v9

    goto :goto_355

    :catch_338
    move-exception v0

    move-object v3, v4

    move-object v2, v5

    move-object v1, v0

    move-object v10, v7

    move-object v12, v10

    :goto_33e
    move-object/from16 v25, v12

    :goto_340
    move-object v7, v9

    goto/16 :goto_3a9

    :catchall_343
    move-exception v0

    move-object v3, v4

    move-object v2, v5

    move-object v1, v0

    move-object v10, v7

    move-object v12, v10

    move-object/from16 v25, v12

    goto/16 :goto_3c4

    :catch_34d
    move-exception v0

    move-object v3, v4

    move-object v2, v5

    move-object v1, v0

    move-object v10, v7

    move-object v12, v10

    move-object/from16 v25, v12

    .line 1227
    :goto_355
    :try_start_355
    sget-boolean v4, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v4, :cond_36d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadTcpInfo - Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :cond_36d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_370
    .catchall {:try_start_355 .. :try_end_370} :catchall_3c2

    if-eqz v7, :cond_379

    .line 1233
    :try_start_372
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    goto :goto_379

    :catch_376
    move-exception v0

    move-object v1, v0

    goto :goto_389

    :cond_379
    :goto_379
    if-eqz v10, :cond_37e

    .line 1234
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V

    :cond_37e
    if-eqz v25, :cond_383

    .line 1235
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedReader;->close()V

    :cond_383
    if-eqz v12, :cond_39f

    .line 1236
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_388
    .catch Ljava/io/IOException; {:try_start_372 .. :try_end_388} :catch_376

    goto :goto_39f

    .line 1239
    :goto_389
    sget-boolean v4, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v4, :cond_39f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39f
    :goto_39f
    const/4 v6, 0x0

    :goto_3a0
    return v6

    :catch_3a1
    move-exception v0

    move-object v3, v4

    move-object v2, v5

    move-object v1, v0

    move-object v10, v7

    move-object v12, v10

    move-object/from16 v25, v12

    .line 1224
    :goto_3a9
    :try_start_3a9
    sget-boolean v4, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v4, :cond_3c1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadTcpInfo - RuntimeException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :cond_3c1
    throw v1
    :try_end_3c2
    .catchall {:try_start_3a9 .. :try_end_3c2} :catchall_3c2

    :catchall_3c2
    move-exception v0

    move-object v1, v0

    :goto_3c4
    if-eqz v7, :cond_3cd

    .line 1233
    :try_start_3c6
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    goto :goto_3cd

    :catch_3ca
    move-exception v0

    move-object v4, v0

    goto :goto_3dd

    :cond_3cd
    :goto_3cd
    if-eqz v10, :cond_3d2

    .line 1234
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V

    :cond_3d2
    if-eqz v25, :cond_3d7

    .line 1235
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedReader;->close()V

    :cond_3d7
    if-eqz v12, :cond_3f3

    .line 1236
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_3dc
    .catch Ljava/io/IOException; {:try_start_3c6 .. :try_end_3dc} :catch_3ca

    goto :goto_3f3

    .line 1239
    :goto_3dd
    sget-boolean v5, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v5, :cond_3f3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :cond_3f3
    :goto_3f3
    throw v1
.end method

.method public static makeSemWifiSwitchForIndividualAppsService(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;
    .registers 7

    const-string v0, "SemWifiSwitchForIndividualAppsService"

    const/4 v1, 0x0

    .line 404
    :try_start_3
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "SemWifiTransportLayerMonitor"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 406
    new-instance v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, v2, v1, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;-><init>(Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/content/Context;)V

    .line 409
    new-instance v2, Landroid/os/HandlerThread;

    invoke-direct {v2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 411
    new-instance v4, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v4, p0, v2, v3, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_27} :catch_29

    move-object v1, v4

    goto :goto_41

    :catch_29
    move-exception p0

    .line 414
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeSemWifiSwitchForIndividualAppsService - Exception "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_41
    return-object v1
.end method

.method private modifyTcpTimeOut()V
    .registers 4

    .line 2053
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    const-string v1, "echo 3 > /proc/sys/net/ipv4/tcp_retries2"

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modifyTcpTimeOut - command: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SemWifiSwitchForIndividualAppsService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNetdCommandHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

    if-eqz v0, :cond_28

    const/4 v2, 0x1

    .line 2055
    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_28
    return-void
.end method

.method private parseIP(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string p0, ":"

    .line 2649
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2650
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_16

    .line 2651
    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->hexa2decIPv4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2654
    :cond_16
    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->hexa2decIPv6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "255.255."

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2655
    array-length p1, p0

    const/4 v1, 0x1

    if-le p1, v1, :cond_29

    .line 2656
    aget-object p0, p0, v1

    return-object p0

    .line 2658
    :cond_29
    aget-object p0, p0, v0

    return-object p0
.end method

.method private parsePort(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2663
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ":"

    .line 2664
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 2665
    aget-object p1, p1, v0

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    .line 2666
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2667
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private registerDnsCallback()V
    .registers 5

    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 2487
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    if-nez v1, :cond_12

    const-string v1, "connmetrics"

    .line 2489
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    .line 2491
    :cond_12
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isDnsCallbackRegistered:Z

    if-nez v1, :cond_48

    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    if-eqz v1, :cond_48

    const/4 v2, 0x3

    .line 2493
    :try_start_1b
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    invoke-interface {v1, v2, v3}, Landroid/net/IIpConnectivityMetrics;->addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 2495
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v1, :cond_2c

    const-string v1, "registerDnsCallback - added"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    const/4 v1, 0x1

    .line 2496
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isDnsCallbackRegistered:Z
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2f} :catch_30

    goto :goto_48

    :catch_30
    move-exception p0

    .line 2499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerDnsCallback - RemoteException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_48
    :goto_48
    return-void
.end method

.method private registerForSwitchForIndividualAppsChange()V
    .registers 7

    .line 563
    new-instance v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$2;

    invoke-direct {v0, p0, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$2;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Landroid/os/Handler;)V

    .line 585
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_switch_for_individual_apps_enabled"

    .line 586
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    .line 585
    invoke-virtual {v1, v3, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 588
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    goto :goto_24

    :cond_23
    move v1, v4

    :goto_24
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEnabled:Z

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SwitchForIndividualApps - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiSwitchForIndividualAppsService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    new-instance v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$3;

    invoke-direct {v0, p0, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$3;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Landroid/os/Handler;)V

    .line 600
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_switch_for_individual_apps_detection_mode"

    .line 601
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 600
    invoke-virtual {v2, v5, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 605
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 607
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_75

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDetectionMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDetectionMode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_75
    return-void
.end method

.method private registerWifiNetworkCallbacks()V
    .registers 3

    .line 435
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 436
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 437
    new-instance v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 500
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private removeAllDnsRoutes()V
    .registers 4

    .line 2092
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    const-string v1, " while ip rule del pref 1 2>/dev/null; do true; done"

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoveAllDnsRoutes - command: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SemWifiSwitchForIndividualAppsService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNetdCommandHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

    if-eqz v0, :cond_28

    const/4 v2, 0x1

    .line 2094
    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_28
    return-void
.end method

.method private removeCurrentUidblockedList(I)V
    .registers 5

    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 1761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCurrentUidblockedList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    if-eqz v0, :cond_2b

    .line 1763
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1764
    :try_start_1d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1765
    monitor-exit v0

    goto :goto_2b

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_28

    throw p0

    :cond_2b
    :goto_2b
    return-void
.end method

.method private removeDnsRouteUid(ILjava/lang/String;)V
    .registers 7

    .line 2080
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_71

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_71

    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2081
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ip -4 rule del from all uidrange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " table "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pref 1"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2083
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v2, :cond_64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeDnsRouteUid - command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemWifiSwitchForIndividualAppsService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    :cond_64
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNetdCommandHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

    if-eqz v2, :cond_10

    const/4 v3, 0x1

    .line 2085
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_10

    :cond_71
    return-void
.end method

.method private removeFile(Ljava/lang/String;)V
    .registers 4

    const-string p0, "SemWifiSwitchForIndividualAppsService"

    .line 2156
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2159
    :try_start_7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 2160
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_40

    .line 2161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeFile - Failed to remove file - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_27} :catch_28

    goto :goto_40

    :catch_28
    move-exception p1

    .line 2165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeFile - Exception - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_40
    :goto_40
    return-void
.end method

.method private reportNetworkConnectivity()V
    .registers 5

    .line 427
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWifiValidState:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiNetwork:Landroid/net/Network;

    if-eqz v0, :cond_1e

    .line 428
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiNetwork:Landroid/net/Network;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 429
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiNetwork:Landroid/net/Network;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/net/ConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 430
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWaitForQCResult:Z

    :cond_1e
    return-void
.end method

.method private resetDnsDetected()V
    .registers 2

    const/4 v0, 0x0

    .line 2433
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsDetected:Z

    return-void
.end method

.method private resetTcpTimeOut()V
    .registers 4

    .line 2061
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    const-string v1, "echo 15 > /proc/sys/net/ipv4/tcp_retries2"

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetTcpTimeOut - command: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SemWifiSwitchForIndividualAppsService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNetdCommandHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

    if-eqz v0, :cond_28

    const/4 v2, 0x1

    .line 2063
    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_28
    return-void
.end method

.method private resetUidBaseHistory(Z)V
    .registers 6

    .line 1081
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    if-eqz v0, :cond_1a

    .line 1082
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxPackets(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevRx:J

    .line 1083
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxPackets(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevTx:J

    .line 1085
    :cond_1a
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevRx:J

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevTx:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidTxRxOnResume:J

    const-wide/16 v0, 0x0

    .line 1086
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidAccumulatedTxRx:J

    const/4 v0, 0x0

    .line 1088
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidRetransmissionCounter:I

    .line 1089
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidChatAppRetransmissionCounter:I

    .line 1090
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockNoEstablishCounter:I

    .line 1091
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidReceiveQueueCounter:I

    .line 1092
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsBlockCounter:I

    .line 1093
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1095
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevSynSize:I

    if-eqz p1, :cond_41

    const/16 p1, 0x1e

    .line 1098
    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mThresholdLatestSumTxRx:I

    const/4 p1, 0x5

    .line 1099
    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mThresholdNormalEstablish:I

    goto :goto_49

    :cond_41
    const/16 p1, 0x64

    .line 1101
    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mThresholdLatestSumTxRx:I

    const/16 p1, 0xa

    .line 1102
    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mThresholdNormalEstablish:I

    .line 1105
    :goto_49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidChangedTime:J

    .line 1107
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->resetDnsDetected()V

    .line 1109
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningPrevSyn:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private runDelayedNetdShellCommandAgain(Ljava/lang/String;)V
    .registers 4

    const v0, 0x2121e

    .line 1988
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private runShellCommandResult(Ljava/lang/String;)V
    .registers 3

    const v0, 0x2121d

    .line 1992
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendBigDataFeatureForTCPE(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;Z)V
    .registers 10

    .line 2724
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeManager:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;

    if-nez v0, :cond_c

    .line 2725
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getTcpeManager()Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeManager:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;

    .line 2728
    :cond_c
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeManager:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;

    if-eqz v1, :cond_28

    .line 2729
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    iget v2, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getWifiPackageInfo(I)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    iget v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 2730
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->isSwitchEnabledApp(I)Z

    move-result v5

    move-object v2, p1

    move v6, p2

    .line 2729
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->sendBigDataFeatureForTCPE(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;ZZ)V

    goto :goto_2f

    :cond_28
    const-string p0, "SemWifiSwitchForIndividualAppsService"

    const-string p1, "sendBigDataFeatureForTCPE - Failed to send bigdata"

    .line 2732
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    return-void
.end method

.method private setVoipOngoing(Z)V
    .registers 4

    const/4 v0, 0x0

    const v1, 0x21227

    if-eqz p1, :cond_12

    .line 738
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->removeMessages(I)V

    const/4 p1, 0x1

    .line 739
    invoke-virtual {p0, v1, p1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendMessage(Landroid/os/Message;)Z

    goto :goto_21

    .line 740
    :cond_12
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_21

    .line 741
    invoke-virtual {p0, v1, v0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_21
    :goto_21
    return-void
.end method

.method private setupBroadcastReceiver()V
    .registers 3

    .line 611
    new-instance v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 723
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.net.wifi.TCP_MONITOR_ACTION_USE_MOBILE_DATA"

    .line 724
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.net.wifi.WIFI_TCP_MONITOR_ACTION_SETTINGS"

    .line 725
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.net.wifi.WIFI_TCP_MONITOR_DELETE_NOTIFICATION"

    .line 726
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.net.wifi.WIFI_TCP_MONITOR_SWITCHABLE_APP_LIST_CHANGED"

    .line 727
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.samsung.media.action.AUDIO_MODE"

    .line 728
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 729
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private startHandler()V
    .registers 3

    .line 421
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetdCommandHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 423
    new-instance v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNetdCommandHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

    return-void
.end method

.method private startTCPMonitoring(I)V
    .registers 5

    .line 1038
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsForegroundActivityDetectionStarted:Z

    const-string v1, "SemWifiSwitchForIndividualAppsService"

    if-eqz v0, :cond_10

    .line 1039
    sget-boolean p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz p0, :cond_f

    const-string p0, "startTCPMonitoring : already started"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void

    .line 1042
    :cond_10
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTCPMonitoring - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const v0, 0x211f5

    const/4 v1, 0x0

    .line 1043
    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private stopTCPMonitoring(I)V
    .registers 5

    .line 1047
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsForegroundActivityDetectionStarted:Z

    const-string v1, "SemWifiSwitchForIndividualAppsService"

    if-eqz v0, :cond_2f

    .line 1048
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopTCPMonitoring - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const v0, 0x211f6

    const/4 v1, 0x0

    .line 1049
    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendMessage(Landroid/os/Message;)Z

    .line 1050
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->saveTcpMonitorFiles()V

    goto :goto_34

    :cond_2f
    const-string p0, "stopTCPMonitoring : already stopped"

    .line 1052
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    return-void
.end method

.method private syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;
    .registers 1

    .line 1436
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    return-object p0
.end method

.method private turnOffMobileData()V
    .registers 4

    const-string v0, "SemWifiSwitchForIndividualAppsService"

    const-string v1, "turnOffMobileData"

    .line 516
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v1, :cond_49

    .line 520
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v1, 0x0

    .line 521
    iput-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 v1, 0x0

    .line 522
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsMobileDataEnabledByTcpMonitor:Z
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_1a} :catch_34
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_1b

    goto :goto_49

    :catch_1b
    move-exception p0

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnOffMobileData - Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_49

    :catch_34
    move-exception p0

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnOffMobileData - IllegalArgumentException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    :goto_49
    return-void
.end method

.method private turnOnMobileData()V
    .registers 4

    const-string v0, "SemWifiSwitchForIndividualAppsService"

    const-string v1, "turnOnMobileData"

    .line 504
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xc

    .line 507
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 509
    new-instance v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetworkRequestCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetworkRequestCallback;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetworkRequestCallback-IA;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 510
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x1

    .line 512
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsMobileDataEnabledByTcpMonitor:Z

    return-void
.end method

.method private uidBlockedAppDetected(Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)Z
    .registers 7

    .line 1677
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    const/4 v1, 0x0

    const-string v2, "SemWifiSwitchForIndividualAppsService"

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->isNormalRunningTimePrevention(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1678
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "uidBlockedAppDetected: Normal running time prevention - "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1683
    :cond_2a
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEverDetected:Z

    const/4 v3, 0x1

    if-nez v0, :cond_6b

    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1684
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getWifiPackageInfo(I)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isNotifyEnabledApp(Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_6b

    const-string v0, "uidBlockedAppDetected: first detected"

    .line 1685
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEverDetected:Z

    .line 1687
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_switch_for_individual_apps_ever_detected"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1689
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastDetectedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastSuggestionNotifiedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 1690
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNotifier:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    .line 1691
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1690
    invoke-virtual {v0, v3, v2, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->showNotification(IILjava/lang/String;)V

    .line 1692
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsForegroundActivityDetectionStarted:Z

    if-eqz p1, :cond_6a

    const/4 p1, 0x5

    .line 1693
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateMonitoringOperation(I)V

    :cond_6a
    return v1

    .line 1698
    :cond_6b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    if-eqz v0, :cond_7d

    .line 1699
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->updateNormalOperationTime(Ljava/lang/String;I)V

    .line 1700
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    invoke-virtual {v0, v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->updateWifiApInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;)V

    .line 1704
    :cond_7d
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWaitForQCResult:Z

    if-nez v0, :cond_b1

    .line 1706
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_9d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uidBlockedAppDetected: qc trigger "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    :cond_9d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidListWaitingForQcResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x21209

    .line 1708
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendEmptyMessage(I)Z

    goto :goto_da

    .line 1711
    :cond_b1
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_cd

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uidBlockedAppDetected: add "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    :cond_cd
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidListWaitingForQcResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1715
    :goto_da
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getWifiPackageInfo(I)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isNotifyEnabledApp(Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)Z

    move-result p0

    if-nez p0, :cond_f4

    .line 1716
    sget-boolean p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz p0, :cond_f3

    const-string p0, "uidBlockedAppDetected: do not notify to user "

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f3
    return v1

    :cond_f4
    return v3
.end method

.method private unregisterDnsCallback()V
    .registers 4

    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 2506
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    if-nez v1, :cond_12

    const-string v1, "connmetrics"

    .line 2508
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    .line 2510
    :cond_12
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isDnsCallbackRegistered:Z

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    if-eqz v1, :cond_46

    const/4 v2, 0x3

    .line 2513
    :try_start_1b
    invoke-interface {v1, v2}, Landroid/net/IIpConnectivityMetrics;->removeNetdEventCallback(I)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 2514
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v1, :cond_2a

    const-string v1, "unregisterDnsCallback - removed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const/4 v1, 0x0

    .line 2515
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isDnsCallbackRegistered:Z
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2d} :catch_2e

    goto :goto_46

    :catch_2e
    move-exception p0

    .line 2518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterDnsCallback - RemoteException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_46
    :goto_46
    return-void
.end method

.method private updateCurrentUidBlockedListStatus(ILcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;)Z
    .registers 6

    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 1779
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCurrentUidBlockedListStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1781
    :try_start_21
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    if-eqz v1, :cond_44

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1782
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1783
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 1785
    monitor-exit v0

    return p0

    .line 1787
    :cond_44
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_47
    move-exception p0

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_21 .. :try_end_49} :catchall_47

    throw p0
.end method

.method private updateDnsInfo()V
    .registers 4

    .line 1827
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 1828
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1829
    iget v1, v0, Landroid/net/DhcpInfo;->dns1:I

    .line 1830
    iget v0, v0, Landroid/net/DhcpInfo;->dns2:I

    if-lez v1, :cond_1a

    .line 1832
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->intToIp(I)Ljava/lang/String;

    move-result-object v1

    .line 1833
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    if-lez v0, :cond_25

    .line 1836
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->intToIp(I)Ljava/lang/String;

    move-result-object v0

    .line 1837
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    return-void
.end method

.method private updateLinkStatistics()V
    .registers 3

    .line 1418
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1420
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkSpeed:I

    .line 1421
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRSSI:I

    .line 1422
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIs5GHz:Z

    .line 1424
    :cond_18
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIs5GHz:Z

    if-eqz v0, :cond_25

    const/16 v0, 0x28

    .line 1425
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkSpeedThreshold:I

    const/16 v0, -0x3c

    .line 1426
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkRssiThreshold:I

    goto :goto_2d

    :cond_25
    const/16 v0, 0x1e

    .line 1428
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkSpeedThreshold:I

    const/16 v0, -0x37

    .line 1429
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkRssiThreshold:I

    .line 1431
    :goto_2d
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isAggressiveMode()Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x5

    goto :goto_36

    :cond_35
    const/4 v0, 0x3

    .line 1432
    :goto_36
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mThresholdDetectionIgnored:I

    return-void
.end method

.method private updateMonitoringOperation(I)V
    .registers 5

    .line 1017
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    const-string v1, "SemWifiSwitchForIndividualAppsService"

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMonitoringOperation : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :cond_1a
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isMonitoringEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1020
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->startTCPMonitoring(I)V

    goto :goto_27

    .line 1022
    :cond_24
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->stopTCPMonitoring(I)V

    .line 1025
    :goto_27
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPoorNetworkDetectionEnabled:Z

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEnabled:Z

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWifiValidState:Z

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsQaiSwitchableMode:Z

    if-nez v0, :cond_4e

    .line 1027
    :cond_37
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsMobileDataEnabledByTcpMonitor:Z

    if-eqz v0, :cond_43

    const-string v0, "updateMonitoringOperation : stop switching"

    .line 1028
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->useDefaultNetworkForAllApp()V

    :cond_43
    const/4 v0, 0x6

    if-eq p1, v0, :cond_49

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4e

    .line 1032
    :cond_49
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNotifier:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->clearNotificationAll()V

    :cond_4e
    return-void
.end method

.method private updateQcResult(Z)V
    .registers 6

    .line 1723
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidListWaitingForQcResult:Ljava/util/ArrayList;

    if-eqz v0, :cond_aa

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_aa

    if-eqz p1, :cond_a5

    .line 1725
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidListWaitingForQcResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1726
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getWifiPackageInfo(I)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isNotifyEnabledApp(Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)Z

    move-result v1

    const-string v2, "SemWifiSwitchForIndividualAppsService"

    if-nez v1, :cond_49

    .line 1727
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateQcResult - skip switching "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 1729
    :cond_49
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->isSwitchEnabledApp(I)Z

    move-result v1

    if-nez v1, :cond_7a

    .line 1730
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v1, :cond_69

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateQcResult - show first notification "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    :cond_69
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastDetectedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastSwitchNotifiedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 1732
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNotifier:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1734
    invoke-virtual {v3, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getPackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 1732
    invoke-virtual {v1, v2, v0, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->showNotification(IILjava/lang/String;)V

    goto :goto_12

    .line 1736
    :cond_7a
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v1, :cond_92

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateQcResult - switch "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    const v1, 0x2120c

    const/4 v2, 0x0

    .line 1737
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 1738
    invoke-virtual {v3, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getPackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 1737
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_12

    .line 1743
    :cond_a5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidListWaitingForQcResult:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_aa
    return-void
.end method

.method private updateRunningDnsList(Ljava/lang/String;)V
    .registers 4

    .line 2599
    sget-object v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningDnsListlock:Ljava/lang/Object;

    monitor-enter v0

    .line 2600
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningDnsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2601
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningDnsList:Ljava/util/ArrayList;

    if-eqz p1, :cond_1f

    .line 2602
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v1, 0x258

    if-le p1, v1, :cond_1f

    .line 2603
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningDnsList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2604
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningDnsList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->trimToSize()V

    .line 2607
    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method private updateRunningSynList(Ljava/lang/String;)V
    .registers 5

    .line 2637
    sget-object v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningSynlock:Ljava/lang/Object;

    monitor-enter v0

    .line 2638
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningIpListSyn:Ljava/util/ArrayList;

    if-eqz v1, :cond_1f

    .line 2639
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x258

    if-lt v1, v2, :cond_1a

    .line 2640
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningIpListSyn:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2641
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningIpListSyn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    .line 2643
    :cond_1a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningIpListSyn:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2645
    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method private updateRxTx(I)V
    .registers 8

    .line 1440
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxPackets(I)J

    move-result-wide v0

    .line 1441
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxPackets(I)J

    move-result-wide v2

    .line 1442
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevTx:J

    sub-long v4, v0, v4

    iput-wide v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidTxDiff:J

    .line 1443
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevRx:J

    sub-long v4, v2, v4

    iput-wide v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidRxDiff:J

    .line 1444
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevTx:J

    .line 1445
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevRx:J

    add-long/2addr v0, v2

    .line 1446
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidTxRxOnResume:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidAccumulatedTxRx:J

    return-void
.end method

.method private updateSwitchedPackageInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1064
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    if-eqz p1, :cond_5a

    .line 1065
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidChangedTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    long-to-int p1, v0

    .line 1066
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    const-string v1, "SemWifiSwitchForIndividualAppsService"

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSwitchedPackageInfo - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    if-lez p1, :cond_5a

    .line 1068
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getDetectedPackageList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 1069
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->updateNormalOperationTime(Ljava/lang/String;I)V

    .line 1070
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->updateWifiApInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;)V

    goto :goto_5a

    .line 1072
    :cond_45
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_4e

    const-string v0, "updateSwitchedPackageInfo - create new DetectedPackage info"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_4e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->addDetectedPakcageInfo(Ljava/lang/String;I)V

    .line 1074
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->updateWifiApInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;)V

    :cond_5a
    :goto_5a
    return-void
.end method

.method private updateTcpDetectedHistory()V
    .registers 6

    .line 2174
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistory:Ljava/util/ArrayList;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    .line 2175
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0xa

    const/4 v2, 0x0

    if-gez v1, :cond_16

    move v1, v2

    .line 2180
    :cond_16
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDetectedHistory:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2181
    :goto_21
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDetectedHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x258

    if-le v0, v1, :cond_31

    .line 2182
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDetectedHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_21

    :cond_31
    return-void
.end method

.method private updateTcpDnsHistory(Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;)V
    .registers 5

    .line 2529
    sget-object v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsdatalock:Ljava/lang/Object;

    monitor-enter v0

    .line 2530
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDnsHistory:Ljava/util/ArrayList;

    if-eqz v1, :cond_1f

    .line 2531
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x258

    if-lt v1, v2, :cond_1a

    .line 2532
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDnsHistory:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2533
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDnsHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    .line 2535
    :cond_1a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDnsHistory:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2537
    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method private useDefaultNetworkForAllApp()V
    .registers 2

    .line 1878
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->clearCurrentUidBlockedList()V

    const v0, 0x21215

    .line 1879
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->removeMessages(I)V

    .line 1881
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->changeAllRouteToDefaultNetwork()V

    const v0, 0x21214

    .line 1882
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private useDefaultNetworkForBlockedApp(I)V
    .registers 2

    .line 1868
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->changeRouteToDefaultNetwork(I)V

    .line 1869
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->hasActivatedCurrentUidBlockedList()Z

    move-result p1

    if-nez p1, :cond_13

    const p1, 0x21214

    .line 1870
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendMessage(Landroid/os/Message;)Z

    :cond_13
    return-void
.end method

.method private useMobileDataForBlockedApp(I)V
    .registers 4

    .line 1850
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsMobileDataEnabledByTcpMonitor:Z

    if-nez v0, :cond_e

    const v0, 0x21213

    .line 1851
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendMessage(Landroid/os/Message;)Z

    .line 1854
    :cond_e
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isMobileDataConnected()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    .line 1855
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsInterfaceNameNotAvailable:Z

    .line 1856
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->changeRouteToMobileNetwork(I)V

    goto :goto_28

    :cond_1b
    const v0, 0x21215

    const/4 v1, 0x1

    .line 1858
    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_28
    return-void
.end method

.method private writeHandlerMsg(Landroid/os/Message;)Ljava/lang/String;
    .registers 6

    .line 2343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2345
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 2346
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss "

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2347
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2349
    iget v1, p1, Landroid/os/Message;->what:I

    const v2, 0x21227

    const-string v3, " "

    if-eq v1, v2, :cond_ad

    packed-switch v1, :pswitch_data_ea

    packed-switch v1, :pswitch_data_f4

    packed-switch v1, :pswitch_data_fe

    packed-switch v1, :pswitch_data_10e

    packed-switch v1, :pswitch_data_11a

    .line 2408
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2409
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b2

    :pswitch_3e
    const-string v1, "TCP_MONITOR_RUN_SHELL_COMMAND_AGAIN"

    .line 2402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b2

    :pswitch_45
    const-string v1, "TCP_MONITOR_SHELL_COMMAND_RESULT"

    .line 2399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b2

    :pswitch_4c
    const-string v1, "TCP_MONITOR_RESET_TCP_TIMEOUT_VALUE"

    .line 2396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b2

    :pswitch_53
    const-string v1, "TCP_MONITOR_CHECK_MOBILE_DATA_ENABLED"

    .line 2393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b2

    :pswitch_59
    const-string v1, "TCP_MONITOR_TURN_OFF_MOBILE_NETWORK"

    .line 2390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b2

    :pswitch_5f
    const-string v1, "TCP_MONITOR_TURN_ON_MOBILE_NETWORK"

    .line 2387
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b2

    :pswitch_65
    const-string v1, "TCP_MONITOR_SWITCH_INDIVIDUAL_APP_LIST_CHANGED"

    .line 2384
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b2

    :pswitch_6b
    const-string v1, "TCP_MONITOR_SWITCH_INDIVIDUAL_APP_TO_WIFI"

    .line 2381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b2

    :pswitch_71
    const-string v1, "TCP_MONITOR_SWITCH_INDIVIDUAL_APP_TO_MOBILE_DATA"

    .line 2378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b2

    :pswitch_77
    const-string v1, "TCP_MONITOR_QC_RESULT_TIMEOUT"

    .line 2375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b2

    :pswitch_7d
    const-string v1, "TCP_MONITOR_QC_RESULT_UPDATED"

    .line 2372
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b2

    :pswitch_83
    const-string v1, "TCP_MONITOR_QC_REQUEST"

    .line 2369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b2

    :pswitch_89
    const-string v1, "SWITCH_TO_MOBILE_DATA_QAI"

    .line 2366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b2

    :pswitch_8f
    const-string v1, "SWITCH_TO_MOBILE_DATA_DISABLED"

    .line 2363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b2

    :pswitch_95
    const-string v1, "SWITCH_TO_MOBILE_DATA_ENABLED"

    .line 2360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b2

    :pswitch_9b
    const-string v1, "TCP_MONITOR_FOREGROUND_ACTIVITY_DETECT"

    .line 2357
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b2

    :pswitch_a1
    const-string v1, "TCP_MONITOR_FOREGROUND_ACTIVITY_STOP"

    .line 2354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b2

    :pswitch_a7
    const-string v1, "TCP_MONITOR_FOREGROUND_ACTIVITY_START"

    .line 2351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b2

    :cond_ad
    const-string v1, "TCP_MONITOR_VOIP_STATE_CHANGED"

    .line 2405
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2412
    :goto_b2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2413
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2414
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2415
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2416
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2417
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2419
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDumpHandlerMsg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2420
    :goto_d3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDumpHandlerMsg:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v1, 0x258

    if-le p1, v1, :cond_e4

    .line 2421
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDumpHandlerMsg:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_d3

    .line 2424
    :cond_e4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_ea
    .packed-switch 0x211f5
        :pswitch_a7
        :pswitch_a1
        :pswitch_9b
    .end packed-switch

    :pswitch_data_f4
    .packed-switch 0x211fe
        :pswitch_95
        :pswitch_8f
        :pswitch_89
    .end packed-switch

    :pswitch_data_fe
    .packed-switch 0x21209
        :pswitch_83
        :pswitch_7d
        :pswitch_77
        :pswitch_71
        :pswitch_6b
        :pswitch_65
    .end packed-switch

    :pswitch_data_10e
    .packed-switch 0x21213
        :pswitch_5f
        :pswitch_59
        :pswitch_53
        :pswitch_4c
    .end packed-switch

    :pswitch_data_11a
    .packed-switch 0x2121d
        :pswitch_45
        :pswitch_3e
    .end packed-switch
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .registers 14

    const-string v0, ":"

    .line 2222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isMonitoringEnabled] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isMonitoringEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isSwitchingEnabled] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isSwitchingEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[mSwitchForIndividualAppsEnabled] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[mSwitchForIndividualAppsEverDetected] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEverDetected:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[mPoorNetworkDetectionEnabled] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPoorNetworkDetectionEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[mCurrentQai] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentQai:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[mDetectionMode] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDetectionMode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[mIsWifiValidState] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWifiValidState:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[mIsScreenOn] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsScreenOn:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[TCPE version] 20220712\n"

    .line 2232
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n[CURRENT UID LIST]\n"

    .line 2235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2236
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    const-string v4, "] "

    const-string v5, "["

    const-string v6, "EMPTY\n"

    const/4 v7, 0x1

    if-eqz v2, :cond_183

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_183

    .line 2240
    :try_start_109
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 2241
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v8, v7

    :goto_11a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_186

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 2242
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 2243
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getPackageName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2242
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_165} :catch_168

    add-int/lit8 v8, v8, 0x1

    goto :goto_11a

    :catch_168
    move-exception v0

    .line 2248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dump - Exception "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "SemWifiSwitchForIndividualAppsService"

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_186

    .line 2252
    :cond_183
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_186
    :goto_186
    const-string v0, "\n[LATEST HISTORY]\n"

    .line 2256
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2257
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistory:Ljava/util/ArrayList;

    if-eqz v0, :cond_1c9

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c9

    .line 2259
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v7

    :goto_19c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1cc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 2260
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v2, v7

    goto :goto_19c

    .line 2264
    :cond_1c9
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1cc
    const-string v0, "\n\n[DETECTED HISTORY]\n"

    .line 2268
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2269
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDetectedHistory:Ljava/util/ArrayList;

    if-eqz v0, :cond_20f

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20f

    .line 2271
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDetectedHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v7

    :goto_1e2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_212

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 2272
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v2, v7

    goto :goto_1e2

    .line 2276
    :cond_20f
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2279
    :cond_212
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_2e8

    const-string v0, "\n\n[DNS HISTORY]\n"

    .line 2281
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "dateTime,UID,PackageName,HostName/Domain Name,Result,Blocked,Policy,Foreground App, IPList\n"

    .line 2282
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2284
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDnsHistory:Ljava/util/ArrayList;

    if-eqz v0, :cond_25e

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25e

    .line 2286
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDnsHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v7

    :goto_231
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_261

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;

    .line 2287
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v2, v7

    goto :goto_231

    .line 2291
    :cond_25e
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_261
    const-string v0, "\n\n[TCP ALL SOCKET HISTORY]\n"

    .line 2295
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "dateTime,Establish,SYN,Retransmission,Result\n"

    .line 2296
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2297
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpAllSocketInfoHistory:Ljava/util/ArrayList;

    if-eqz v0, :cond_2a9

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a9

    .line 2299
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpAllSocketInfoHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v7

    :goto_27c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2ac

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;

    .line 2300
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v2, v7

    goto :goto_27c

    .line 2304
    :cond_2a9
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2ac
    const-string v0, "\n\n[IP ADDRESS COULD NOT CONVERT TO ESTABLISH STATE HISTORY]\n"

    .line 2308
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Date,UID,DomainNmae,IPAddress, PortNo\n"

    .line 2309
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2310
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningIpListSyn:Ljava/util/ArrayList;

    if-eqz v0, :cond_2e5

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e5

    .line 2311
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningIpListSyn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2312
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c6

    .line 2315
    :cond_2e5
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e8
    const-string v0, "\n\n[HANDLER MESSAGES]\n"

    .line 2320
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2321
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDumpHandlerMsg:Ljava/util/ArrayList;

    if-eqz v0, :cond_327

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_327

    .line 2323
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDumpHandlerMsg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v7

    :goto_2fe
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_32a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2324
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v2, v7

    goto :goto_2fe

    .line 2328
    :cond_327
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2332
    :cond_32a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    if-eqz p0, :cond_335

    .line 2333
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->dump()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2336
    :cond_335
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public factoryResetForTcpMonitoring()V
    .registers 4

    .line 2145
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_switch_for_individual_apps_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2147
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_switch_for_individual_apps_ever_detected"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "/data/misc/wifi/TcpMonitorApInfo.json"

    .line 2150
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->removeFile(Ljava/lang/String;)V

    const-string v0, "/data/misc/wifi/TcpMonitorPackageInfo.json"

    .line 2151
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->removeFile(Ljava/lang/String;)V

    const-string v0, "/data/misc/wifi/TcpMonitorSwitchEnabledUID.xml"

    .line 2152
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->removeFile(Ljava/lang/String;)V

    return-void
.end method

.method public getTcpMonitorAllSocketHistory(I)Ljava/lang/String;
    .registers 6

    .line 2576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2577
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpAllSocketInfoHistory:Ljava/util/ArrayList;

    if-eqz v1, :cond_49

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_49

    if-lez p1, :cond_49

    const-string v1, "dateTime,E,S,Retransmission,Result\n"

    .line 2578
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 2579
    :goto_17
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v1, v2, :cond_4e

    if-gt v1, p1, :cond_4e

    .line 2580
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpAllSocketInfoHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;

    .line 2581
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_49
    const-string p0, "EMPTY\n"

    .line 2584
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2586
    :cond_4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTcpMonitorDnsHistory(I)Ljava/lang/String;
    .registers 6

    .line 2541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2542
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDnsHistory:Ljava/util/ArrayList;

    if-eqz v1, :cond_49

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_49

    if-lez p1, :cond_49

    const-string v1, "dateTime,UID,PN,HN,R,B,P,FG\n"

    .line 2543
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 2544
    :goto_17
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDnsHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v1, v2, :cond_4e

    if-gt v1, p1, :cond_4e

    .line 2545
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDnsHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;

    .line 2546
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_49
    const-string p0, "EMPTY\n"

    .line 2549
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2551
    :cond_4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTcpMonitorSocketForegroundHistory(I)Ljava/lang/String;
    .registers 8

    .line 2555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2556
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistory:Ljava/util/ArrayList;

    if-eqz v1, :cond_79

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_79

    if-lez p1, :cond_79

    const-string v1, "dateTime,UID,PN,E,S,R,Result\n"

    .line 2557
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 2558
    :goto_17
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v1, v2, :cond_7e

    if-gt v1, p1, :cond_7e

    .line 2559
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 2560
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->date:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->retransmission:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->result:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_79
    const-string p0, "EMPTY\n"

    .line 2570
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2572
    :cond_7e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 13

    .line 756
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x21227

    const v2, 0x211f7

    if-eq v0, v2, :cond_11

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_11

    .line 757
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->writeHandlerMsg(Landroid/os/Message;)Ljava/lang/String;

    .line 760
    :cond_11
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "SemWifiSwitchForIndividualAppsService"

    if-eq v0, v1, :cond_3db

    const-wide/16 v6, 0x3e8

    const/4 v1, 0x2

    const/4 v8, 0x6

    packed-switch v0, :pswitch_data_40e

    packed-switch v0, :pswitch_data_418

    const-wide/16 v1, 0xbb8

    const v6, 0x2120b

    const/4 v7, 0x3

    packed-switch v0, :pswitch_data_422

    packed-switch v0, :pswitch_data_432

    goto/16 :goto_40a

    .line 984
    :pswitch_31
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_3a

    const-string v0, "TCP_RESET_TCP_TIMEOUT_VALUE"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_3a
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->resetTcpTimeOut()V

    goto/16 :goto_40a

    .line 989
    :pswitch_3f
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_63

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TCP_CHECK_MOBILE_DATA_ENABLED: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :cond_63
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 991
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 992
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isMobileDataConnected()Z

    move-result v6

    if-eqz v6, :cond_76

    .line 993
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsInterfaceNameNotAvailable:Z

    .line 994
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->changeRouteToMobileNetwork(I)V

    goto/16 :goto_40a

    .line 996
    :cond_76
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ge v3, v7, :cond_40a

    const v6, 0x21215

    add-int/2addr v3, v4

    .line 998
    invoke-virtual {p0, v6, v0, v3, v5}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_40a

    .line 979
    :pswitch_87
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_90

    const-string v0, "TCP_MONITOR_TURN_OFF_MOBILE_NETWORK"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_90
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->turnOffMobileData()V

    goto/16 :goto_40a

    .line 974
    :pswitch_95
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_9e

    const-string v0, "TCP_MONITOR_TURN_ON_MOBILE_NETWORK"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_9e
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->turnOnMobileData()V

    goto/16 :goto_40a

    .line 945
    :pswitch_a3
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_ac

    const-string v0, "TCP_MONITOR_SWITCH_INDIVIDUAL_APP_LIST_CHANGED"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_ac
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_40a

    .line 949
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->updateSwitchEnabledAppList(Ljava/util/ArrayList;)V

    .line 950
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_40a

    .line 952
    :try_start_bf
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 953
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 954
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d1
    :goto_d1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 955
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_108

    .line 956
    new-instance v4, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 957
    invoke-virtual {v6, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getPackageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v2, v6}, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;-><init>(ILjava/lang/String;)V

    const/16 v6, 0xc

    .line 958
    iput v6, v4, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->actionResult:I

    .line 959
    invoke-direct {p0, v4, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendBigDataFeatureForTCPE(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;Z)V

    const v4, 0x2120d

    .line 960
    invoke-virtual {p0, v4, v2, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendMessage(Landroid/os/Message;)Z

    goto :goto_d1

    .line 961
    :cond_108
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getCurrentUidBlockedListStatus(I)Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;->REMOVED:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;

    if-ne v4, v6, :cond_d1

    .line 962
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->removeCurrentUidblockedList(I)V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_113} :catch_114

    goto :goto_d1

    :catch_114
    move-exception v0

    .line 966
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v1, :cond_12d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TCP_MONITOR_SWITCH_INDIVIDUAL_APP_LIST_CHANGED - Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_12d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_40a

    .line 937
    :pswitch_132
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_13b

    const-string v0, "TCP_MONITOR_SWITCH_INDIVIDUAL_APP_TO_WIFI"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_13b
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 939
    sget-object v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;->REMOVED:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateCurrentUidBlockedListStatus(ILcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;)Z

    .line 940
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->useDefaultNetworkForBlockedApp(I)V

    .line 941
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNotifier:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    invoke-virtual {v0, v7}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->removeNotification(I)V

    goto/16 :goto_40a

    .line 923
    :pswitch_14c
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_155

    const-string v0, "TCP_MONITOR_SWITCH_INDIVIDUAL_APP_TO_MOBILE_DATA"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_155
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 925
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 926
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->addCurrentUidBlockedList(I)V

    .line 927
    sget-object v2, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;->ACTIVATED:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateCurrentUidBlockedListStatus(ILcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;)Z

    .line 928
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->useMobileDataForBlockedApp(I)V

    .line 929
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastDetectedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    iput-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastAutoSwitchNotifiedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 930
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNotifier:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    invoke-virtual {v2, v7, v0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->showNotification(IILjava/lang/String;)V

    .line 933
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->enableSwitchEnabledAppInfo(I)V

    goto/16 :goto_40a

    .line 915
    :pswitch_176
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_17f

    const-string v0, "TCP_MONITOR_QC_RESULT_TIMEOUT"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_17f
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWaitForQCResult:Z

    if-eqz v0, :cond_185

    .line 917
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWaitForQCResult:Z

    .line 919
    :cond_185
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWifiValidState:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateQcResult(Z)V

    goto/16 :goto_40a

    .line 909
    :pswitch_18c
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_195

    const-string v0, "TCP_MONITOR_QC_RESULT_UPDATED"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_195
    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->removeMessages(I)V

    .line 911
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWifiValidState:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateQcResult(Z)V

    goto/16 :goto_40a

    .line 903
    :pswitch_19f
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_1a8

    const-string v0, "TCP_MONITOR_QC_REQUEST"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_1a8
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->reportNetworkConnectivity()V

    .line 905
    invoke-virtual {p0, v6, v1, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_40a

    .line 896
    :pswitch_1b0
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_1ca

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SWITCH_TO_MOBILE_DATA_QAI "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_1ca
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1d7

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v4, :cond_1d7

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_1d8

    :cond_1d7
    move v3, v4

    :cond_1d8
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsQaiSwitchableMode:Z

    .line 898
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentQai:I

    .line 899
    invoke-direct {p0, v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateMonitoringOperation(I)V

    goto/16 :goto_40a

    .line 890
    :pswitch_1e3
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_1ec

    const-string v0, "SWITCH_TO_MOBILE_DATA_DISABLED"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_1ec
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPoorNetworkDetectionEnabled:Z

    .line 892
    invoke-direct {p0, v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateMonitoringOperation(I)V

    goto/16 :goto_40a

    .line 884
    :pswitch_1f3
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_1fc

    const-string v0, "SWITCH_TO_MOBILE_DATA_ENABLED"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_1fc
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPoorNetworkDetectionEnabled:Z

    .line 886
    invoke-direct {p0, v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateMonitoringOperation(I)V

    goto/16 :goto_40a

    .line 793
    :pswitch_203
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsForegroundActivityDetectionStarted:Z

    if-eqz v0, :cond_355

    .line 794
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getCurrentPackageInfo()Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    move-result-object v0

    if-nez v0, :cond_21a

    .line 796
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_350

    const-string v0, "TCP_MONITOR_FOREGROUND_ACTIVITY_DETECT - NULL"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_350

    .line 797
    :cond_21a
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSkipUid:I

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result v8

    if-ne v1, v8, :cond_233

    .line 798
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_22f

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSkipUidNotified:Z

    if-nez v0, :cond_22f

    const-string v0, "TCP_MONITOR_FOREGROUND_ACTIVITY_DETECT - SKIP"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_22f
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSkipUidNotified:Z

    goto/16 :goto_350

    .line 801
    :cond_233
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSkipUidNotified:Z

    .line 802
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    if-eqz v1, :cond_243

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result v8

    if-eq v1, v8, :cond_263

    .line 803
    :cond_243
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    if-eqz v1, :cond_25a

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result v1

    iget v8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSkipUid:I

    if-eq v1, v8, :cond_25a

    .line 804
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSsid:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v1, v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateSwitchedPackageInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    :cond_25a
    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 807
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isChatApp()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->resetUidBaseHistory(Z)V

    .line 810
    :cond_263
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateLinkStatistics()V

    .line 811
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isPackageException(Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)Z

    move-result v0

    if-nez v0, :cond_350

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isSkipPoorLinkCondition()Z

    move-result v0

    if-nez v0, :cond_350

    .line 813
    new-instance v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result v1

    iget-object v8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 814
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;-><init>(ILjava/lang/String;)V

    .line 815
    new-instance v1, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;-><init>()V

    .line 816
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 817
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd HH:mm:ss "

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 818
    invoke-virtual {v9, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->date:Ljava/lang/String;

    const-string v10, "NORMAL"

    .line 819
    iput-object v10, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->result:Ljava/lang/String;

    .line 820
    invoke-virtual {v9, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->date:Ljava/lang/String;

    .line 821
    iput-object v10, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->result:Ljava/lang/String;

    .line 824
    iget v8, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    invoke-direct {p0, v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateRxTx(I)V

    .line 827
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->loadTcpInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;)Z

    move-result v8

    if-eqz v8, :cond_347

    .line 829
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->addTcpMonitorInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;)V

    .line 830
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->addAllTcpSocketInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;)V

    .line 833
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isSkipNetworkCondition()Z

    move-result v1

    if-nez v1, :cond_32f

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isSkipTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;)Z

    move-result v1

    if-nez v1, :cond_32f

    .line 834
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isBlockingApp(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;)Z

    move-result v1

    if-eqz v1, :cond_32f

    .line 837
    iput v3, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->actionResult:I

    .line 838
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateTcpDetectedHistory()V

    .line 839
    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastDetectedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 842
    invoke-direct {p0, v0, v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendBigDataFeatureForTCPE(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;Z)V

    .line 844
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isSwitchingEnabled()Z

    move-result v1

    if-eqz v1, :cond_318

    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isNotifyEnabledApp(Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_318

    .line 846
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    iget v3, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->addWifiPackageDetectedCount(I)V

    .line 849
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    if-eqz v1, :cond_306

    .line 850
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 851
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 850
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->addSwitchForIndivdiaulAppsDetectionCount(Ljava/lang/String;)V

    .line 852
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->updateWifiApInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;)V

    .line 856
    :cond_306
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->uidBlockedAppDetected(Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_327

    .line 857
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->addCurrentUidBlockedList(I)V

    goto :goto_327

    .line 861
    :cond_318
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v1, :cond_321

    const-string v1, "BLOCKED - request QC"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_321
    const v1, 0x21209

    .line 862
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendEmptyMessage(I)Z

    .line 865
    :cond_327
    :goto_327
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSkipUid:I

    .line 867
    :cond_32f
    iget v1, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevSynSize:I

    .line 868
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-nez v1, :cond_33f

    iget-object v1, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->result:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_350

    .line 869
    :cond_33f
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_350

    .line 872
    :cond_347
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_350

    const-string v0, "Failed to load TCP data"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_350
    :goto_350
    invoke-virtual {p0, v2, v6, v7}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_40a

    .line 879
    :cond_355
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_40a

    const-string v0, "TCP_MONITOR_FOREGROUND_ACTIVITY_DETECT - STOP"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_40a

    .line 776
    :pswitch_360
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_37a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TCP_MONITOR_FOREGROUND_ACTIVITY_STOP - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_37a
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsForegroundActivityDetectionStarted:Z

    .line 779
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v4, :cond_389

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v8, :cond_389

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_38c

    .line 781
    :cond_389
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->clearCurrentUidBlockedList()V

    .line 783
    :cond_38c
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->unregisterDnsCallback()V

    .line 784
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->removeMessages(I)V

    .line 786
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    if-eqz v0, :cond_40a

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSkipUid:I

    if-eq v0, v1, :cond_40a

    .line 787
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_3a7

    const-string v0, "TCP_MONITOR_FOREGROUND_ACTIVITY_STOP - update running time"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_3a7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSsid:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateSwitchedPackageInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40a

    .line 762
    :pswitch_3b3
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_3bc

    const-string v0, "TCP_MONITOR_FOREGROUND_ACTIVITY_START - "

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_3bc
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsForegroundActivityDetectionStarted:Z

    .line 764
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->registerDnsCallback()V

    .line 766
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_3d4

    .line 767
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_3ce

    const-string v0, "TCP_MONITOR_FOREGROUND_ACTIVITY_START - update start time"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_3ce
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidChangedTime:J

    .line 771
    :cond_3d4
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->removeMessages(I)V

    .line 772
    invoke-virtual {p0, v2, v6, v7}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_40a

    .line 1004
    :cond_3db
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsVoipOngoing:Z

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_3e3

    move v1, v4

    goto :goto_3e4

    :cond_3e3
    move v1, v3

    :goto_3e4
    if-eq v0, v1, :cond_40a

    .line 1005
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    if-eqz v0, :cond_400

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TCP_MONITOR_VOIP_STATE_CHANGED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_400
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->writeHandlerMsg(Landroid/os/Message;)Ljava/lang/String;

    .line 1007
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_408

    move v3, v4

    :cond_408
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsVoipOngoing:Z

    .line 1013
    :cond_40a
    :goto_40a
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_data_40e
    .packed-switch 0x211f5
        :pswitch_3b3
        :pswitch_360
        :pswitch_203
    .end packed-switch

    :pswitch_data_418
    .packed-switch 0x211fe
        :pswitch_1f3
        :pswitch_1e3
        :pswitch_1b0
    .end packed-switch

    :pswitch_data_422
    .packed-switch 0x21209
        :pswitch_19f
        :pswitch_18c
        :pswitch_176
        :pswitch_14c
        :pswitch_132
        :pswitch_a3
    .end packed-switch

    :pswitch_data_432
    .packed-switch 0x21213
        :pswitch_95
        :pswitch_87
        :pswitch_3f
        :pswitch_31
    .end packed-switch
.end method

.method syncUpList()V
    .registers 5

    .line 2612
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrEstablish:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrSyn:Ljava/util/ArrayList;

    if-eqz v3, :cond_e

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    and-int/2addr v0, v1

    if-eqz v0, :cond_6c

    .line 2613
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2614
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrSyn:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2615
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrEstablish:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 2616
    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrSyn:Ljava/util/ArrayList;

    .line 2617
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningPrevSyn:Ljava/util/ArrayList;

    if-eqz v0, :cond_6c

    .line 2619
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrEstablish:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 2620
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrSyn:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 2623
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningPrevSyn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 2624
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningPrevSyn:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrSyn:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 2625
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningPrevSyn:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrSyn:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2626
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6c

    .line 2627
    :goto_4c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_6c

    .line 2628
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->parseIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->parsePort(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->addProblematicDomainName(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :cond_6c
    return-void
.end method
