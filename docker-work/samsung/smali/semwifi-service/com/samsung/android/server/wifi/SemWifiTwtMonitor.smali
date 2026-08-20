.class public final Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;
.super Ljava/lang/Object;
.source "SemWifiTwtMonitor.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/ClientModeStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;,
        Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle;,
        Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;
    }
.end annotation


# static fields
.field private static final CREATE_SESSION:I = 0xa

.field private static final DURATION_QUANTIZATION_UNIT:I = 0x2000

.field private static final GET_SCPM_POLICY:I = 0x8

.field private static final HEAVY_DUTY_CYCLE_CESSATION_THRESHOLD:F = 0.8f

.field private static final HEAVY_DUTY_CYCLE_RESUMPTION_THRESHOLD:F = 0.7f

.field private static final HEAVY_RATIO_THROTTLING_ACTIVATION_THRESHOLD:F = 0.9f

.field private static final HEAVY_RATIO_THROTTLING_DEACTIVATION_THRESHOLD:F = 0.6f

.field private static final LIGHT_TRAFFIC_CESSATION_THRESHOLD_BYTES:J = 0x0L

.field private static final LIGHT_TRAFFIC_RESUMPTION_THRESHOLD_BYTES:J = 0x0L

.field private static final LINK_STATE_UPDATE:I = 0x9

.field private static final MAX_SP_DURATION:I = 0xff00

.field private static final MAX_TWT_INTERVAL:I = 0xfa000

.field private static final MIN_LATENCY_TOLERANCE_MS:I = 0x2710

.field private static final PM_SCPM_CONFIGURATION_COUNT:I = 0x2

.field private static final SCPM_SPM:I = 0x1

.field private static final SCPM_TWT:I = 0x0

.field private static final SESSION_CREATION_RESULT_EVENT:I = 0xc

.field private static final SESSION_TEARDOWN_RESULT_EVENT:I = 0xd

.field private static final SPM_CHIPSET_CAP_FEATURE_SUPPORT:I = 0x1

.field private static final SPM_CHIPSET_CAP_MIN_SERVICE_PERIOD:I = 0x6

.field private static final SPM_CHIPSET_CAP_MIN_SLEEP_PERIOD:I = 0x18

.field private static final TAG:Ljava/lang/String; = "SemWifiTwtMonitor"

.field private static final TEARDOWN_SESSION:I = 0xb

.field private static final THROTTLING_LIMIT_MAX:F = 0.8f

.field private static final THROTTLING_LIMIT_MIN:F = 0.3f

.field private static final TWT_ACTIVE:I = 0x1

.field private static final TWT_ALGORITHM_POLL:I = 0x2

.field private static final TWT_CAP_FLAGS_BROADCAST_TWT_SUPPORT:I = 0x4

.field private static final TWT_CAP_FLAGS_FLEXIBLE_TWT_SUPPORT:I = 0x8

.field private static final TWT_CAP_FLAGS_REQUESTER_SUPPORT:I = 0x1

.field private static final TWT_CAP_FLAGS_RESPONDER_SUPPORT:I = 0x2

.field private static final TWT_CAP_FLAGS_TWT_REQUIRED:I = 0x10

.field private static final TWT_CESSATION_HEAVY_TRAFFIC:I = 0x1

.field private static final TWT_CESSATION_NOT_ALLOWED_DUTY:I = 0x8

.field private static final TWT_CESSATION_TOO_LIGHT_TRAFFIC:I = 0x2

.field private static final TWT_CESSATION_TOO_LOW_RSSI:I = 0x4

.field private static final TWT_CHIPSET_CAP_BROADCAST_TWT:I = 0x4

.field private static final TWT_CHIPSET_CAP_FEATURE_SUPPORT:I = 0x1

.field private static final TWT_CHIPSET_CAP_FLEXIBLE_TWT:I = 0x8

.field private static final TWT_CHIPSET_CAP_MIN_SERVICE_PERIOD:I = 0x30

.field private static final TWT_CHIPSET_CAP_MIN_SLEEP_PERIOD:I = 0xc0

.field private static final TWT_CHIPSET_CAP_REQUESTER:I = 0x2

.field private static final TWT_CONNECTION_FOLLOWUP_PROCESS:I = 0x5

.field private static final TWT_CONTROL_DEACTIVATION:I = 0x7

.field private static final TWT_DISCONNECTION_FOLLOWUP_PROCESS:I = 0x6

.field private static final TWT_LATENCY_TOLERANCE:I = 0x14

.field private static final TWT_NO_NEGOTIATION:I = 0x0

.field private static final TWT_OVERFLOW_POLL:I = 0x3

.field private static final TWT_OVERFLOW_POLL_INTERVAL_MS:I = 0x1f4

.field private static final TWT_RATE_TOLERANCE:I = 0x14

.field private static final TWT_RENEW_INTERVAL_UNDER_THROTTLING_MS:I = 0x1770

.field private static final TWT_RESUMPTION_DATA_POLL:I = 0x1

.field private static final TWT_RESUMPTION_DATA_SAMPLING_INTERVAL_MS:I = 0xbb8

.field private static final TWT_SUSPENDED:I = 0x2

.field private static final TWT_TORNDOWN_BY_HOST:I = 0x0

.field private static final TWT_TORNDOWN_BY_PEER:I = 0x1

.field private static final TWT_TORNDOWN_DUE_TO_BT_COEX:I = 0x5

.field private static final TWT_TORNDOWN_DUE_TO_MULTI_CHANNEL_CONNECTION:I = 0x3

.field private static final TWT_TORNDOWN_DUE_TO_MULTI_CONNECTION_IN_SAME_CHANNEL:I = 0x2

.field private static final TWT_TORNDOWN_DUE_TO_OTHER_REASONS:I = 0xff

.field private static final TWT_TORNDOWN_DUE_TO_ROAM_CSA:I = 0x4

.field private static final TWT_TORNDOWN_FAILED_DUE_TO_NO_RESPONSE_FROM_PEER:I = 0x6

.field private static final TWT_TRAFFIC_CONTROL_POLL:I = 0x4

.field private static final UNKNOWN_VERSION_H:Ljava/lang/String; = "999999"

.field private static final UNKNOWN_VERSION_L:Ljava/lang/String; = "000000"

.field private static final twtMonitorVersion:Ljava/lang/String; = "3.1"


# instance fields
.field private final PM_SCPM_CONFIGURATION_LIST:[Ljava/lang/String;

.field private TdtUs:F

.field private apOUIs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final awareConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private checkDiffResult:[J

.field private chipsetVendorName:Ljava/lang/String;

.field private firstNego:Z

.field private final ifaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final initialTrafficCheck:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private latestSCPMVersion:Ljava/lang/String;

.field private mAssociatedApCapabilities:I

.field private final mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private mCurRxBytes:J

.field private mCurTime:J

.field private mDesiredFlowID:I

.field private mDesiredInterval:I

.field private mDesiredSP:I

.field private mDeviceCapabilities:I

.field private mIfaceName:Ljava/lang/String;

.field private mIsFeatureEnabled:Z

.field private final mIsPmControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIsPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIsScheduledPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsScheduledPmSupported:Z

.field private final mIsTwtControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsTwtSupported:Z

.field private mLastRxBytes:J

.field private mLastTime:J

.field private mLatestScpmVersionSchedPm:Ljava/lang/String;

.field private mMinInterval:I

.field private mMinServicePeriod:I

.field private mMinSleepPeriod:I

.field private mMinSpmInterval:I

.field private mMinSpmServicePeriod:I

.field private mMinSpmSleepPeriod:I

.field private mMinTwtInterval:I

.field private mMinTwtServicePeriod:I

.field private mMinTwtSleepPeriod:I

.field mRssi:I

.field private final mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

.field private mSchedPmScpmOuis:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScpmDataProvider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

.field private mScpmDataProviderSchedPm:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

.field private mScpmDriverVersionSchedPm:Ljava/lang/String;

.field private mScpmEnableConditionSchedPm:I

.field private final mScpmExecutorList:[Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

.field private mScpmFirmwareVersionSchedPm:Ljava/lang/String;

.field private mScpmMonitorVersionSchedPm:Ljava/lang/String;

.field private final mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

.field private mTrafficLimit:I

.field private final mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

.field private mTwtCessation:I

.field private final mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

.field private final mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

.field private mTwtStatus:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

.field private final mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private final mWifiScheduledPmControl:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

.field private final mWifiServiceDetectionCallback:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

.field private final mWifiServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

.field private final mWifiTrafficControlCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

.field private final mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

.field private final mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

.field private final mWifiTwtControl:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

.field private minServicePeriodSCPM:I

.field private final modelName:Ljava/lang/String;

.field private final p2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final reconnectionWithoutDisconnection:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private resumptionPollCnt:J

.field private scpmDriverVersion:Ljava/lang/String;

.field private scpmEnableCondition:I

.field private scpmFirmwareVersion:Ljava/lang/String;

.field private scpmOUIs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private scpmTwtMonitorVersion:Ljava/lang/String;

.field private final screenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final throttlingActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private throttlingRatio:F

.field private throttlingStep:F

.field private final trafficControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private twtControlResumptionThresholdDbm:I

.field private twtControlSuspensionThresholdDbm:I

.field private final twtRenewalEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$I1BCEZZtryYng5m7xRMwgHsUFBo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->lambda$new$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PrkcmnIgw-N4P_ks4TgYVgYFsFs(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->lambda$new$0(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetPM_SCPM_CONFIGURATION_LIST(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->PM_SCPM_CONFIGURATION_LIST:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetTdtUs(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->TdtUs:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetapOUIs(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->apOUIs:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetawareConnected(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->awareConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcheckDiffResult(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[J
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->checkDiffResult:[J

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchipsetVendorName(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->chipsetVendorName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfirstNego(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->firstNego:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetinitialTrafficCheck(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->initialTrafficCheck:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlatestSCPMVersion(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->latestSCPMVersion:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAssociatedApCapabilities(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mAssociatedApCapabilities:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurRxBytes(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mCurRxBytes:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmCurTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mCurTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredInterval:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDesiredSP(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredSP:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceCapabilities(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDeviceCapabilities:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPmControlActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsPmControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPmControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsScheduledPmControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsScheduledPmSupported(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmSupported:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsTwtControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsTwtSupported(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtSupported:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastRxBytes(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLastRxBytes:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLastTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLastTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLatestScpmVersionSchedPm(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLatestScpmVersionSchedPm:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMinInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinInterval:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMinSleepPeriod(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSleepPeriod:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemServiceInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrafficLimit(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTrafficLimit:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTwtCessation(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTwtHandler(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtStatus:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiServiceDetectionCallback(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiServiceDetectionCallback:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiServiceDetector(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiTwtControl(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtControl;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTwtControl:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetp2pConnected(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->p2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetresumptionPollCnt(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->resumptionPollCnt:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetthrottlingActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->throttlingActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetthrottlingRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->throttlingRatio:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetthrottlingStep(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->throttlingStep:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettrafficControlActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->trafficControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettwtRenewalEnabled(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->twtRenewalEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputTdtUs(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;F)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->TdtUs:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputapOUIs(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Ljava/util/HashSet;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->apOUIs:Ljava/util/HashSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcheckDiffResult(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;[J)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->checkDiffResult:[J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfirstNego(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->firstNego:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurRxBytes(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mCurRxBytes:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mCurTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredInterval:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDesiredSP(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredSP:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastRxBytes(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLastRxBytes:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLastTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScpmDataProvider(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmDataProvider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScpmDataProviderSchedPm(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmDataProviderSchedPm:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTwtCessation(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputresumptionPollCnt(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->resumptionPollCnt:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputthrottlingRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;F)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->throttlingRatio:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mcapDuration(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->capDuration(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcapInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->capInterval(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mchangeSessionParameters(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->changeSessionParameters()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckResumption(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;FJF)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->checkResumption(FJF)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckScpmPolicy(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->checkScpmPolicy()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckScpmPolicySchedPm(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->checkScpmPolicySchedPm()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckSuspension(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;FJF)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->checkSuspension(FJF)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcreateSession(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->createSession()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeactivateTwt(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->deactivateTwt()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdurationTC(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->durationTC(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetVendorOuiFromVsie(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/HashSet;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getVendorOuiFromVsie()Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Landroid/net/wifi/WifiInfo;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monConnection(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->onConnection()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDisconnection(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->onDisconnection()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpolicyComplianceCheck(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->policyComplianceCheck()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mpolicyComplianceCheckSchedPm(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->policyComplianceCheckSchedPm()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mprovideTwtStateToLinkInfoCollector(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->provideTwtStateToLinkInfoCollector(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreConfigureSessionParametersBoundary(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->reConfigureSessionParametersBoundary()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrenewIgnored(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;II)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->renewIgnored(II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartAlgorithmPollWithNewInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->startAlgorithmPollWithNewInterval(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartTrafficStatsPoll(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->startTrafficStatsPoll(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopTrafficControlPoll(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->stopTrafficControlPoll(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopTrafficStatsPoll(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->stopTrafficStatsPoll(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mteardownSession(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->teardownSession()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePackageInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->updatePackageInfo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Landroid/net/wifi/WifiUsabilityStatsEntry;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->updateWifiUsabilityStatsEntry(Landroid/net/wifi/WifiUsabilityStatsEntry;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
    .registers 13

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->screenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->twtRenewalEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->trafficControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->p2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->awareConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->throttlingActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->reconnectionWithoutDisconnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->initialTrafficCheck:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsPmControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "TWT_CONTROL"

    const-string v3, "WIFI_SCHEDULED_PM"

    .line 165
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->PM_SCPM_CONFIGURATION_LIST:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    .line 171
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmExecutorList:[Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->latestSCPMVersion:Ljava/lang/String;

    .line 180
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLatestScpmVersionSchedPm:Ljava/lang/String;

    .line 182
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mSchedPmScpmOuis:Ljava/util/HashSet;

    .line 183
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmOUIs:Ljava/util/HashSet;

    .line 184
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->apOUIs:Ljava/util/HashSet;

    .line 185
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->minServicePeriodSCPM:I

    const-string v3, "999999"

    .line 187
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmTwtMonitorVersion:Ljava/lang/String;

    .line 188
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmDriverVersion:Ljava/lang/String;

    .line 189
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmFirmwareVersion:Ljava/lang/String;

    const/16 v4, -0x41

    .line 191
    iput v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->twtControlSuspensionThresholdDbm:I

    const/16 v4, -0x3c

    .line 192
    iput v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->twtControlResumptionThresholdDbm:I

    const/16 v4, 0x10

    .line 193
    iput v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmEnableCondition:I

    const/16 v5, 0x2800

    .line 195
    iput v5, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinInterval:I

    const/16 v6, 0x2000

    .line 196
    iput v6, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinServicePeriod:I

    .line 197
    iput v6, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSleepPeriod:I

    .line 199
    iput v5, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinTwtInterval:I

    .line 200
    iput v6, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinTwtServicePeriod:I

    .line 201
    iput v6, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinTwtSleepPeriod:I

    .line 203
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmMonitorVersionSchedPm:Ljava/lang/String;

    .line 204
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmDriverVersionSchedPm:Ljava/lang/String;

    .line 205
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmFirmwareVersionSchedPm:Ljava/lang/String;

    .line 207
    iput v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmEnableConditionSchedPm:I

    .line 209
    iput v5, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSpmInterval:I

    .line 210
    iput v6, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSpmServicePeriod:I

    .line 211
    iput v6, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSpmSleepPeriod:I

    .line 213
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTrafficLimit:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 214
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->throttlingRatio:F

    const v3, 0x3e4ccccd    # 0.2f

    .line 215
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->throttlingStep:F

    .line 241
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    .line 242
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->ifaces:Ljava/util/HashSet;

    .line 243
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsFeatureEnabled:Z

    .line 244
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtSupported:Z

    .line 245
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmSupported:Z

    .line 247
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->firstNego:Z

    const/4 v0, 0x0

    .line 248
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->TdtUs:F

    const/16 v0, 0x9

    new-array v0, v0, [J

    .line 249
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->checkDiffResult:[J

    const-wide/16 v3, 0x0

    .line 250
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->resumptionPollCnt:J

    .line 253
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredFlowID:I

    .line 260
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mRssi:I

    .line 436
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$4;-><init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 448
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$5;-><init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTrafficControlCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 456
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;-><init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiServiceDetectionCallback:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 267
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mContext:Landroid/content/Context;

    .line 268
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 269
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 270
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInterfaceNameProvider()Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/server/wifi/SemClientModeManager;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 271
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 272
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getScanPoll()Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object p4

    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 273
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtControl()Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    move-result-object p4

    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTwtControl:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 274
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScheduledPmControl()Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    move-result-object p4

    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiScheduledPmControl:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 276
    new-instance p4, Landroid/os/HandlerThread;

    const-string v0, "SemWifiTwtThread"

    invoke-direct {p4, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p4}, Landroid/os/HandlerThread;->start()V

    .line 278
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {v0, p0, p4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    .line 280
    iput-object p5, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 281
    invoke-virtual {p5}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->getSemServiceInfo()Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    move-result-object p4

    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 283
    new-instance p5, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-direct {p5}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;-><init>()V

    iput-object p5, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 284
    new-instance v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    invoke-direct {v0, p5, p4}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;-><init>(Lcom/samsung/android/server/wifi/twt/SemTwtInfo;Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    const-string p4, "wifinl80211"

    .line 285
    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    const-string p4, "wifi"

    .line 286
    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/wifi/WifiManager;

    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 288
    new-instance p4, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    invoke-direct {p4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;-><init>()V

    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtStatus:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 290
    new-instance p4, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$1;

    invoke-direct {p4, p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 299
    iget-object p5, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {p5, v0, p4}, Landroid/net/wifi/WifiManager;->addOnWifiUsabilityStatsListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;)V

    .line 302
    new-instance p4, Landroid/content/IntentFilter;

    invoke-direct {p4}, Landroid/content/IntentFilter;-><init>()V

    const-string p5, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 303
    invoke-virtual {p4, p5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p5, "android.net.wifi.aware.action.WIFI_AWARE_RESOURCE_CHANGED"

    .line 304
    invoke-virtual {p4, p5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    new-instance p5, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$2;

    invoke-direct {p5, p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$2;-><init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    invoke-virtual {p1, p5, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 337
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 338
    new-instance p3, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    .line 346
    new-instance p1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 353
    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    .line 354
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getProductModelName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->modelName:Ljava/lang/String;

    .line 356
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->setWifiScpmExecutorList()V

    return-void
.end method

.method private capDuration(I)I
    .registers 2

    .line 851
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinServicePeriod:I

    if-ge p1, p0, :cond_5

    return p0

    :cond_5
    const p0, 0xff00

    if-le p1, p0, :cond_b

    return p0

    :cond_b
    return p1
.end method

.method private capInterval(I)I
    .registers 2

    .line 865
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinInterval:I

    if-ge p1, p0, :cond_5

    return p0

    :cond_5
    const p0, 0xfa000

    if-le p1, p0, :cond_b

    return p0

    :cond_b
    return p1
.end method

.method private changeSessionParameters()V
    .registers 5

    .line 961
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 962
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTwtControl:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredFlowID:I

    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredSP:I

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredInterval:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->changeSessionParameters(Ljava/lang/String;III)V

    goto :goto_2b

    .line 964
    :cond_16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 965
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiScheduledPmControl:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredFlowID:I

    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredSP:I

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredInterval:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->changeSessionParameters(Ljava/lang/String;III)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method private checkResumption(FJF)Z
    .registers 10

    const/4 v0, 0x0

    .line 911
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    .line 912
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mRssi:I

    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->twtControlResumptionThresholdDbm:I

    if-ge v1, v2, :cond_e

    or-int/lit8 p1, v0, 0x4

    .line 913
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    return v0

    .line 915
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->trafficControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    return v2

    :cond_18
    const v1, 0x3f333333    # 0.7f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_25

    .line 918
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    or-int/2addr p1, v2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    return v0

    :cond_25
    const-wide/16 v3, 0x0

    cmp-long p2, p2, v3

    if-gez p2, :cond_32

    .line 921
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    return v0

    :cond_32
    cmpl-float p1, p1, p4

    if-lez p1, :cond_3d

    .line 924
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    return v0

    :cond_3d
    return v2
.end method

.method private checkScpmPolicy()V
    .registers 20

    move-object/from16 v1, p0

    const-string v0, ","

    const-string v2, "999999"

    const-string v3, "SCPM: descriptor & stream close failure"

    .line 1528
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmDataProvider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    const/4 v5, 0x1

    if-nez v4, :cond_15

    .line 1529
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    const-string v1, "SCPM: null data provider"

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    return-void

    :cond_15
    const/4 v6, 0x0

    .line 1537
    :try_start_16
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->PM_SCPM_CONFIGURATION_LIST:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-interface {v4, v7}, Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;->getData(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_4d3

    if-nez v4, :cond_57

    .line 1539
    :try_start_21
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmDataProvider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    invoke-interface {v0}, Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;->getLastError()Landroid/util/Pair;

    move-result-object v0

    .line 1540
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SCPM: null file descriptor "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v5}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V
    :try_end_4b
    .catchall {:try_start_21 .. :try_end_4b} :catchall_4cd

    if-eqz v4, :cond_56

    .line 1672
    :try_start_4d
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_56

    .line 1674
    :catchall_51
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {v0, v3, v5}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    :cond_56
    :goto_56
    return-void

    .line 1544
    :cond_57
    :try_start_57
    new-instance v7, Ljava/io/FileInputStream;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_4cd

    .line 1545
    :try_start_60
    new-instance v9, Ljava/io/DataInputStream;

    invoke-direct {v9, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_4ca

    .line 1546
    :try_start_65
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6f
    .catchall {:try_start_65 .. :try_end_6f} :catchall_4c7

    .line 1551
    :try_start_6f
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8f

    .line 1553
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    const-string v2, "SCPM: empty data"

    invoke-virtual {v0, v2, v5}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V
    :try_end_7c
    .catchall {:try_start_6f .. :try_end_7c} :catchall_4c5

    .line 1669
    :try_start_7c
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 1670
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V

    .line 1671
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 1672
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_88
    .catchall {:try_start_7c .. :try_end_88} :catchall_89

    goto :goto_8e

    .line 1674
    :catchall_89
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {v0, v3, v5}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    :goto_8e
    return-void

    .line 1558
    :cond_8f
    :try_start_8f
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1559
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6
    :try_end_97
    .catchall {:try_start_8f .. :try_end_97} :catchall_4c5

    const-string v11, ""

    const/4 v12, 0x2

    if-eqz v6, :cond_a6

    .line 1560
    :try_start_9c
    array-length v13, v6

    if-ne v13, v12, :cond_a6

    .line 1561
    aget-object v6, v6, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_a7

    :cond_a6
    move-object v6, v11

    .line 1563
    :goto_a7
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c7

    .line 1564
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    const-string v2, "SCPM: wrong policy version"

    invoke-virtual {v0, v2, v5}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V
    :try_end_b4
    .catchall {:try_start_9c .. :try_end_b4} :catchall_4c5

    .line 1669
    :try_start_b4
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 1670
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V

    .line 1671
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 1672
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c0
    .catchall {:try_start_b4 .. :try_end_c0} :catchall_c1

    goto :goto_c6

    .line 1674
    :catchall_c1
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {v0, v3, v5}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    :goto_c6
    return-void

    .line 1566
    :cond_c7
    :try_start_c7
    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->latestSCPMVersion:Ljava/lang/String;

    if-eqz v11, :cond_ef

    .line 1567
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ef

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmOUIs:Ljava/util/HashSet;

    if-eqz v11, :cond_ef

    .line 1568
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    const-string v2, "SCPM: existing policy"

    invoke-virtual {v0, v2, v12}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V
    :try_end_dc
    .catchall {:try_start_c7 .. :try_end_dc} :catchall_4c5

    .line 1669
    :try_start_dc
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 1670
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V

    .line 1671
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 1672
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e8
    .catchall {:try_start_dc .. :try_end_e8} :catchall_e9

    goto :goto_ee

    .line 1674
    :catchall_e9
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {v0, v3, v5}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    :goto_ee
    return-void

    .line 1571
    :cond_ef
    :try_start_ef
    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SCPM: new policy "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13, v12}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 1572
    iput-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->latestSCPMVersion:Ljava/lang/String;

    .line 1573
    iput-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmTwtMonitorVersion:Ljava/lang/String;

    .line 1574
    iput-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmDriverVersion:Ljava/lang/String;

    .line 1575
    iput-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmFirmwareVersion:Ljava/lang/String;

    .line 1578
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmOUIs:Ljava/util/HashSet;

    .line 1580
    :goto_114
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4b8

    .line 1581
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1582
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4b5

    .line 1584
    array-length v6, v2

    const/4 v11, 0x3

    if-ge v6, v11, :cond_129

    goto :goto_114

    .line 1588
    :cond_129
    aget-object v6, v2, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v13, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v14

    const v15, -0x140f2c77

    if-eq v14, v15, :cond_158

    const v15, 0x13323

    if-eq v14, v15, :cond_14e

    const v15, 0x782db4b8

    if-eq v14, v15, :cond_144

    goto :goto_161

    :cond_144
    const-string v14, "Version"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_161

    move v13, v8

    goto :goto_161

    :cond_14e
    const-string v14, "OUI"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_161

    move v13, v5

    goto :goto_161

    :cond_158
    const-string v14, "Parameter"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_161

    move v13, v12

    :cond_161
    :goto_161
    const/4 v6, 0x7

    const/4 v14, 0x6

    const/4 v15, 0x5

    const/16 v16, 0x4

    if-eqz v13, :cond_460

    if-eq v13, v5, :cond_44c

    if-eq v13, v12, :cond_16f

    :cond_16c
    move v5, v12

    goto/16 :goto_4b0

    .line 1607
    :cond_16f
    aget-object v13, v2, v5

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v5, "AI_INTTERFACE_LONG"

    .line 1608
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v17, 0xb

    const/16 v18, 0xa

    const/16 v8, 0x9

    if-eqz v5, :cond_262

    .line 1609
    array-length v5, v2

    const/16 v13, 0xf

    if-lt v5, v13, :cond_16c

    .line 1610
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    aget-object v13, v2, v12

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->overHead_Tdt:J

    .line 1611
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    aget-object v11, v2, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->constOverHead_Tdt:J

    .line 1612
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    aget-object v11, v2, v16

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->resetQosPatchTimeThd_Tdt:J

    .line 1613
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    aget-object v11, v2, v15

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->resetAbnormalAPTimeThd_Tdt:J

    .line 1614
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    aget-object v11, v2, v14

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->qoSInterTimeMaxTh1_Tdt:J

    .line 1615
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->qoSInterTimeMaxTh2_Tdt:J

    .line 1616
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    const/16 v6, 0x8

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->qoSGoodInterTime_Tdt:J

    .line 1617
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    aget-object v6, v2, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgInterT1_Tdt:J

    .line 1618
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    aget-object v6, v2, v18

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgInterT2_Tdt:J

    .line 1619
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    aget-object v6, v2, v17

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->acInterT1_Tdt:J

    .line 1620
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    const/16 v6, 0xc

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->acInterT2_Tdt:J

    .line 1621
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    const/16 v6, 0xd

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->vcInterT1_Tdt:J

    .line 1622
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    const/16 v6, 0xe

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->vcInterT2_Tdt:J

    goto/16 :goto_45e

    :cond_262
    const-string v5, "AI_INTTERFACE_INT"

    .line 1624
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_314

    .line 1625
    array-length v5, v2

    const/16 v12, 0xc

    if-lt v5, v12, :cond_45e

    .line 1626
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    const/4 v12, 0x2

    aget-object v13, v2, v12

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCntThd_Tdt:I

    .line 1627
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    aget-object v11, v2, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCcaThd1_Tdt:I

    .line 1628
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    aget-object v11, v2, v16

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCcaThd2_Tdt:I

    .line 1629
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    aget-object v11, v2, v15

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCcaThd3_Tdt:I

    .line 1630
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    aget-object v11, v2, v14

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->qoSAnomalyCntThd_Tdt:I

    .line 1631
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->abAPCntThd_Tdt:I

    .line 1632
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    const/16 v6, 0x8

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->abAPContCntThd_Tdt:I

    .line 1633
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    aget-object v6, v2, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCca1_Tdt:I

    .line 1634
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    aget-object v6, v2, v18

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->acCca1_Tdt:I

    .line 1635
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    aget-object v2, v2, v17

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->vcCca1_Tdt:I

    goto/16 :goto_45e

    :cond_314
    const-string v5, "AI_INTTERFACE_FLOAT"

    .line 1637
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_394

    .line 1638
    array-length v5, v2

    if-lt v5, v8, :cond_45e

    .line 1639
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    const/4 v8, 0x2

    aget-object v12, v2, v8

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->congestCoe_Tdt:F

    .line 1640
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    aget-object v8, v2, v11

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgTxGoodThd1_Tdt:F

    .line 1641
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    aget-object v8, v2, v16

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgTxGoodThd2_Tdt:F

    .line 1642
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    aget-object v8, v2, v15

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgTxGoodThd3_Tdt:F

    .line 1643
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    aget-object v8, v2, v14

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mBoostFactor1_Tdt:F

    .line 1644
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mBoostFactor2_Tdt:F

    .line 1645
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    const/16 v6, 0x8

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mBoostFactor3_Tdt:F

    goto/16 :goto_45e

    :cond_394
    const-string v5, "SP_DURATION"

    .line 1647
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45e

    .line 1648
    array-length v5, v2

    const/16 v12, 0xc

    if-lt v5, v12, :cond_45e

    .line 1649
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    const/4 v12, 0x2

    aget-object v13, v2, v12

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    iput v12, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mOverflowGuardThr:F

    .line 1650
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    aget-object v11, v2, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    iput v11, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mStableGuardLoEpsThr:F

    .line 1651
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    aget-object v11, v2, v16

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    iput v11, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mStableGuardHiEpsThr:F

    .line 1652
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    aget-object v11, v2, v15

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mCongestionDivider:J

    .line 1653
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    aget-object v11, v2, v14

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    iput v11, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mOverflowThresholdPercent:F

    .line 1654
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mEpsilonUpdateThreshold:F

    .line 1655
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    const/16 v6, 0x8

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mMinSPDuration:I

    .line 1656
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    aget-object v6, v2, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mStableTdtWeight:F

    .line 1657
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    aget-object v6, v2, v18

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mOverflowTdtWeight:F

    .line 1658
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    aget-object v2, v2, v17

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mTdtUpdateMode:I

    .line 1659
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->updateParameters()V

    goto :goto_45e

    :cond_44c
    const/4 v12, 0x2

    .line 1602
    :goto_44d
    array-length v5, v2

    if-ge v12, v5, :cond_45e

    .line 1603
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmOUIs:Ljava/util/HashSet;

    aget-object v6, v2, v12

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_44d

    :cond_45e
    :goto_45e
    const/4 v5, 0x2

    goto :goto_4b0

    .line 1590
    :cond_460
    aget-object v8, v2, v5

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->modelName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45e

    .line 1591
    array-length v5, v2

    const/16 v8, 0x8

    if-lt v5, v8, :cond_45e

    const/4 v5, 0x2

    .line 1592
    aget-object v8, v2, v5

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmDriverVersion:Ljava/lang/String;

    .line 1593
    aget-object v8, v2, v11

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmFirmwareVersion:Ljava/lang/String;

    .line 1594
    aget-object v8, v2, v16

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmTwtMonitorVersion:Ljava/lang/String;

    .line 1595
    aget-object v8, v2, v15

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->twtControlSuspensionThresholdDbm:I

    .line 1596
    aget-object v8, v2, v14

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->twtControlResumptionThresholdDbm:I

    .line 1597
    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmEnableCondition:I
    :try_end_4b0
    .catchall {:try_start_ef .. :try_end_4b0} :catchall_4c5

    :goto_4b0
    move v12, v5

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_114

    :cond_4b5
    const/4 v5, 0x1

    goto/16 :goto_114

    .line 1669
    :cond_4b8
    :try_start_4b8
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 1670
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V

    .line 1671
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 1672
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4c4
    .catchall {:try_start_4b8 .. :try_end_4c4} :catchall_507

    goto :goto_50d

    :catchall_4c5
    move-exception v0

    goto :goto_4d1

    :catchall_4c7
    move-exception v0

    move-object v10, v6

    goto :goto_4d1

    :catchall_4ca
    move-exception v0

    move-object v9, v6

    goto :goto_4d0

    :catchall_4cd
    move-exception v0

    move-object v7, v6

    move-object v9, v7

    :goto_4d0
    move-object v10, v9

    :goto_4d1
    move-object v6, v4

    goto :goto_4d7

    :catchall_4d3
    move-exception v0

    move-object v7, v6

    move-object v9, v7

    move-object v10, v9

    .line 1666
    :goto_4d7
    :try_start_4d7
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SCPM: policy query failure "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V
    :try_end_4f2
    .catchall {:try_start_4d7 .. :try_end_4f2} :catchall_50e

    if-eqz v10, :cond_4f7

    .line 1669
    :try_start_4f4
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    :cond_4f7
    if-eqz v9, :cond_4fc

    .line 1670
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V

    :cond_4fc
    if-eqz v7, :cond_501

    .line 1671
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    :cond_501
    if-eqz v6, :cond_50d

    .line 1672
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_506
    .catchall {:try_start_4f4 .. :try_end_506} :catchall_507

    goto :goto_50d

    .line 1674
    :catchall_507
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    :cond_50d
    :goto_50d
    return-void

    :catchall_50e
    move-exception v0

    if-eqz v10, :cond_514

    .line 1669
    :try_start_511
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    :cond_514
    if-eqz v9, :cond_519

    .line 1670
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V

    :cond_519
    if-eqz v7, :cond_51e

    .line 1671
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    :cond_51e
    if-eqz v6, :cond_52a

    .line 1672
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_523
    .catchall {:try_start_511 .. :try_end_523} :catchall_524

    goto :goto_52a

    .line 1674
    :catchall_524
    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 1676
    :cond_52a
    :goto_52a
    throw v0
.end method

.method private checkScpmPolicySchedPm()V
    .registers 16

    const-string v0, ","

    const-string v1, "999999"

    const-string v2, "SCPM SchedPM: descriptor & stream close failure"

    .line 1708
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmDataProviderSchedPm:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    const/4 v4, 0x1

    if-nez v3, :cond_13

    .line 1709
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    const-string v0, "SCPM SchedPM: null data provider"

    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    return-void

    :cond_13
    const/4 v5, 0x0

    .line 1717
    :try_start_14
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->PM_SCPM_CONFIGURATION_LIST:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-interface {v3, v6}, Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;->getData(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1bd

    if-nez v3, :cond_54

    .line 1719
    :try_start_1e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmDataProviderSchedPm:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    invoke-interface {v0}, Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;->getLastError()Landroid/util/Pair;

    move-result-object v0

    .line 1720
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SCPM SchedPM: null file descriptor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V
    :try_end_48
    .catchall {:try_start_1e .. :try_end_48} :catchall_1b7

    if-eqz v3, :cond_53

    .line 1803
    :try_start_4a
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_53

    .line 1806
    :catchall_4e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    :cond_53
    :goto_53
    return-void

    .line 1725
    :cond_54
    :try_start_54
    new-instance v6, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_1b7

    .line 1726
    :try_start_5d
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_1b4

    .line 1727
    :try_start_62
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_1b1

    .line 1730
    :try_start_6c
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8c

    .line 1732
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    const-string v1, "SCPM SchedPM: empty data"

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V
    :try_end_79
    .catchall {:try_start_6c .. :try_end_79} :catchall_1af

    .line 1794
    :try_start_79
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 1797
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    .line 1800
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 1803
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_85
    .catchall {:try_start_79 .. :try_end_85} :catchall_86

    goto :goto_8b

    .line 1806
    :catchall_86
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    :goto_8b
    return-void

    .line 1738
    :cond_8c
    :try_start_8c
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1739
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5
    :try_end_94
    .catchall {:try_start_8c .. :try_end_94} :catchall_1af

    const-string v9, ""

    const/4 v10, 0x2

    if-eqz v5, :cond_a3

    .line 1740
    :try_start_99
    array-length v11, v5

    if-ne v11, v10, :cond_a3

    .line 1741
    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_a4

    :cond_a3
    move-object v5, v9

    .line 1743
    :goto_a4
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c4

    .line 1744
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    const-string v1, "SCPM SchedPM: wrong policy version"

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V
    :try_end_b1
    .catchall {:try_start_99 .. :try_end_b1} :catchall_1af

    .line 1794
    :try_start_b1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 1797
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    .line 1800
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 1803
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_bd
    .catchall {:try_start_b1 .. :try_end_bd} :catchall_be

    goto :goto_c3

    .line 1806
    :catchall_be
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    :goto_c3
    return-void

    .line 1746
    :cond_c4
    :try_start_c4
    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLatestScpmVersionSchedPm:Ljava/lang/String;

    if-eqz v9, :cond_ec

    .line 1747
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ec

    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mSchedPmScpmOuis:Ljava/util/HashSet;

    if-eqz v9, :cond_ec

    .line 1748
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    const-string v1, "SCPM SchedPM: existing policy"

    invoke-virtual {v0, v1, v10}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V
    :try_end_d9
    .catchall {:try_start_c4 .. :try_end_d9} :catchall_1af

    .line 1794
    :try_start_d9
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 1797
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    .line 1800
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 1803
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e5
    .catchall {:try_start_d9 .. :try_end_e5} :catchall_e6

    goto :goto_eb

    .line 1806
    :catchall_e6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    :goto_eb
    return-void

    .line 1751
    :cond_ec
    :try_start_ec
    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SCPM SchedPM: new policy "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11, v10}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 1752
    iput-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLatestScpmVersionSchedPm:Ljava/lang/String;

    .line 1753
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmMonitorVersionSchedPm:Ljava/lang/String;

    .line 1754
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmDriverVersionSchedPm:Ljava/lang/String;

    .line 1755
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmFirmwareVersionSchedPm:Ljava/lang/String;

    .line 1758
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mSchedPmScpmOuis:Ljava/util/HashSet;

    .line 1760
    :cond_111
    :goto_111
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a2

    .line 1761
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1762
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_111

    .line 1764
    array-length v5, v1

    const/4 v9, 0x3

    if-ge v5, v9, :cond_126

    goto :goto_111

    :cond_126
    const/4 v5, 0x0

    .line 1768
    aget-object v11, v1, v5

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const/4 v12, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v13

    const v14, 0x13323

    if-eq v13, v14, :cond_146

    const v14, 0x782db4b8

    if-eq v13, v14, :cond_13d

    goto :goto_150

    :cond_13d
    const-string v13, "Version"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_150

    goto :goto_151

    :cond_146
    const-string v5, "OUI"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_150

    move v5, v4

    goto :goto_151

    :cond_150
    :goto_150
    move v5, v12

    :goto_151
    if-eqz v5, :cond_168

    if-eq v5, v4, :cond_156

    goto :goto_111

    :cond_156
    move v5, v10

    .line 1780
    :goto_157
    array-length v9, v1

    if-ge v5, v9, :cond_111

    .line 1781
    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mSchedPmScpmOuis:Ljava/util/HashSet;

    aget-object v11, v1, v5

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_157

    .line 1770
    :cond_168
    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-object v11, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->modelName:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_111

    .line 1771
    array-length v5, v1

    const/4 v11, 0x6

    if-lt v5, v11, :cond_111

    .line 1772
    aget-object v5, v1, v10

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmDriverVersionSchedPm:Ljava/lang/String;

    .line 1773
    aget-object v5, v1, v9

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmFirmwareVersionSchedPm:Ljava/lang/String;

    const/4 v5, 0x4

    .line 1774
    aget-object v5, v1, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmMonitorVersionSchedPm:Ljava/lang/String;

    const/4 v5, 0x5

    .line 1775
    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmEnableConditionSchedPm:I
    :try_end_1a0
    .catchall {:try_start_ec .. :try_end_1a0} :catchall_1af

    goto/16 :goto_111

    .line 1794
    :cond_1a2
    :try_start_1a2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 1797
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    .line 1800
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 1803
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1ae
    .catchall {:try_start_1a2 .. :try_end_1ae} :catchall_1f0

    goto :goto_1f5

    :catchall_1af
    move-exception v0

    goto :goto_1bb

    :catchall_1b1
    move-exception v0

    move-object v8, v5

    goto :goto_1bb

    :catchall_1b4
    move-exception v0

    move-object v7, v5

    goto :goto_1ba

    :catchall_1b7
    move-exception v0

    move-object v6, v5

    move-object v7, v6

    :goto_1ba
    move-object v8, v7

    :goto_1bb
    move-object v5, v3

    goto :goto_1c1

    :catchall_1bd
    move-exception v0

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    .line 1789
    :goto_1c1
    :try_start_1c1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SCPM SchedPM: policy query failure "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1790
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1789
    invoke-virtual {v1, v0, v4}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V
    :try_end_1db
    .catchall {:try_start_1c1 .. :try_end_1db} :catchall_1f6

    if-eqz v8, :cond_1e0

    .line 1794
    :try_start_1dd
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    :cond_1e0
    if-eqz v7, :cond_1e5

    .line 1797
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    :cond_1e5
    if-eqz v6, :cond_1ea

    .line 1800
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_1ea
    if-eqz v5, :cond_1f5

    .line 1803
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1ef
    .catchall {:try_start_1dd .. :try_end_1ef} :catchall_1f0

    goto :goto_1f5

    .line 1806
    :catchall_1f0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    :cond_1f5
    :goto_1f5
    return-void

    :catchall_1f6
    move-exception v0

    if-eqz v8, :cond_1fc

    .line 1794
    :try_start_1f9
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    :cond_1fc
    if-eqz v7, :cond_201

    .line 1797
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    :cond_201
    if-eqz v6, :cond_206

    .line 1800
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_206
    if-eqz v5, :cond_211

    .line 1803
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_20b
    .catchall {:try_start_1f9 .. :try_end_20b} :catchall_20c

    goto :goto_211

    .line 1806
    :catchall_20c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 1809
    :cond_211
    :goto_211
    throw v0
.end method

.method private checkSuspension(FJF)Z
    .registers 9

    const/4 v0, 0x0

    .line 891
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    .line 892
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mRssi:I

    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->twtControlSuspensionThresholdDbm:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_f

    or-int/lit8 p1, v0, 0x4

    .line 893
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    return v3

    .line 895
    :cond_f
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->throttlingActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_18

    return v0

    :cond_18
    const v1, 0x3f4ccccd    # 0.8f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_25

    .line 898
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    or-int/2addr p1, v3

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    return v3

    :cond_25
    const-wide/16 v1, 0x0

    cmp-long p2, p2, v1

    if-gez p2, :cond_32

    .line 901
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    return v3

    :cond_32
    cmpl-float p1, p1, p4

    if-lez p1, :cond_3d

    .line 904
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    return v3

    :cond_3d
    return v0
.end method

.method private containsNotAllowedVendorOui(Ljava/util/HashSet;Ljava/util/HashSet;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 2058
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2059
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private convertHexStringToMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 2004
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2005
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_9
    const/4 v1, 0x3

    if-lt v0, v1, :cond_22

    add-int/lit8 v2, v0, -0x2

    .line 2006
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v0, v1, :cond_1a

    const-string v1, ":"

    goto :goto_1c

    :cond_1a
    const-string v1, ""

    :goto_1c
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x2

    goto :goto_9

    .line 2008
    :cond_22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createSession()V
    .registers 5

    .line 953
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 954
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTwtControl:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredFlowID:I

    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredSP:I

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredInterval:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->createSession(Ljava/lang/String;III)V

    goto :goto_2b

    .line 955
    :cond_16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 956
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiScheduledPmControl:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredFlowID:I

    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredSP:I

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredInterval:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->createSession(Ljava/lang/String;III)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method private deactivateTwt()V
    .registers 3

    .line 686
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsPmControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 687
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->initialTrafficCheck:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 688
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/16 v0, 0x1f4

    .line 689
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->stopTrafficStatsPoll(I)V

    const/16 v0, 0xbb8

    .line 690
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->stopTrafficStatsPoll(I)V

    .line 691
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->teardownAllTwtSessionIfExist()V

    .line 692
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->teardownScheduledPmSessionIfExist()V

    return-void
.end method

.method private driverVersionViolation(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x1

    if-eqz p1, :cond_76

    if-nez p2, :cond_7

    goto/16 :goto_76

    .line 1879
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->chipsetVendorName:Ljava/lang/String;

    if-eqz v1, :cond_18

    const-string v2, "QUALCOMM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1880
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->versionViolation(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_18
    const-string v1, "-"

    .line 1882
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1883
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 1885
    array-length v1, p1

    if-ge v1, v0, :cond_29

    array-length v1, p2

    if-ge v1, v0, :cond_29

    return v0

    .line 1889
    :cond_29
    array-length v1, p1

    sub-int/2addr v1, v0

    aget-object p1, p1, v1

    const-string v1, "[^0-9]"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1890
    array-length v3, p2

    sub-int/2addr v3, v0

    aget-object p2, p2, v3

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1892
    :try_start_3d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_49

    .line 1893
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_4a

    :cond_49
    move p1, v2

    .line 1894
    :goto_4a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_55

    .line 1895
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_54
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_54} :catch_5b

    goto :goto_56

    :cond_55
    move p0, v2

    :goto_56
    if-le p0, p1, :cond_59

    goto :goto_5a

    :cond_59
    move v0, v2

    :goto_5a
    return v0

    :catch_5b
    move-exception p1

    .line 1899
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ver. violation check failure: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    :cond_76
    :goto_76
    return v0
.end method

.method private durationTC(I)I
    .registers 2

    int-to-float p1, p1

    .line 861
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->throttlingRatio:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private getInformationElements()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;"
        }
    .end annotation

    .line 2012
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 2013
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_c
    move-object v0, v1

    .line 2014
    :goto_d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/ScanPool;->getScanResults()Ljava/util/List;

    move-result-object p0

    if-eqz v0, :cond_37

    .line 2017
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_37

    .line 2018
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 2019
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 2020
    invoke-virtual {v2}, Landroid/net/wifi/ScanResult;->getInformationElements()Ljava/util/List;

    move-result-object v1

    :cond_37
    return-object v1
.end method

.method private getLinkInfo()Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .registers 2

    .line 847
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getWifiLinkLayerStats(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    move-result-object p0

    return-object p0
.end method

.method private getProductModelName()Ljava/lang/String;
    .registers 4

    const-string p0, "ro.product.model"

    .line 1513
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_b

    return-object v0

    .line 1516
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_23

    const-string p0, "ro.factory.model"

    .line 1517
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 1518
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_22

    goto :goto_23

    :cond_22
    return-object v0

    :cond_23
    :goto_23
    const/4 v0, 0x3

    const/4 v1, 0x7

    .line 1524
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getVendorOuiFromVsie()Ljava/util/HashSet;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2029
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getInformationElements()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_87

    .line 2030
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_f

    goto/16 :goto_87

    .line 2035
    :cond_f
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2036
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult$InformationElement;

    .line 2037
    invoke-virtual {v3}, Landroid/net/wifi/ScanResult$InformationElement;->getId()I

    move-result v4

    const/16 v5, 0xdd

    if-ne v4, v5, :cond_18

    .line 2040
    :try_start_2c
    invoke-virtual {v3}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    const-string v5, "%02X"

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 2041
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2042
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_18

    .line 2043
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->convertHexStringToMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2044
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2045
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AP OUI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    invoke-virtual {v5, v3, v6}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V
    :try_end_6e
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2c .. :try_end_6e} :catch_6f

    goto :goto_18

    .line 2048
    :catch_6f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BufferUnderflowException ie:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemWifiTwtMonitor"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :cond_86
    return-object v2

    .line 2031
    :cond_87
    :goto_87
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    const-string v0, "InformationElement is null"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getWifiDriverVersion()Ljava/lang/String;
    .registers 2

    .line 1499
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object p0

    .line 1500
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->isReady()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1501
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->checkAndUpdate()V

    .line 1504
    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getDriverVersion()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1f

    const-string v0, ""

    .line 1505
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_1f

    :cond_1e
    return-object p0

    :cond_1f
    :goto_1f
    const-string p0, "000000"

    return-object p0
.end method

.method private getWifiFactoryMacAddress()Ljava/lang/String;
    .registers 3

    .line 1907
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object p0

    .line 1908
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->isReady()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1909
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->checkAndUpdate()V

    .line 1912
    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 1913
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1e

    return-object p0

    :cond_1e
    const-string p0, ""

    return-object p0
.end method

.method private getWifiFirmwareVersion()Ljava/lang/String;
    .registers 2

    .line 1485
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object p0

    .line 1486
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->isReady()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1487
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->checkAndUpdate()V

    :cond_f
    const/4 v0, 0x0

    .line 1490
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getFirmwareVersion(Z)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_20

    const-string v0, ""

    .line 1491
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_20

    :cond_1f
    return-object p0

    :cond_20
    :goto_20
    const-string p0, "000000"

    return-object p0
.end method

.method private getWifiInfo()Landroid/net/wifi/WifiInfo;
    .registers 3

    .line 833
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_10

    .line 834
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 836
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    return-object p0
.end method

.method private initializeForStartingPmControl()V
    .registers 5

    const/4 v0, 0x0

    .line 650
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    const-wide/16 v0, 0x0

    .line 651
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->resumptionPollCnt:J

    const/4 v0, 0x1

    .line 652
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->firstNego:Z

    .line 654
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->teardownAllTwtSessionIfExist()V

    .line 655
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->teardownScheduledPmSessionIfExist()V

    .line 657
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->twtRenewalEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 658
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->initialize()Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    move-result-object v1

    .line 659
    iget v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredSP:I

    .line 660
    iget v1, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredInterval:I

    .line 662
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->updateLinkLayerStats()V

    .line 664
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiServiceDetectionCallback:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;)V

    .line 665
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getMainCategoryServiceType()I

    move-result v1

    if-ne v1, v0, :cond_54

    .line 667
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    const/4 v2, 0x2

    const-string v3, "RTA on connection"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 668
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    .line 669
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->initialTrafficCheck:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v1, 0xbb8

    .line 670
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->startTrafficStatsPoll(I)V

    .line 671
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsPmControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 674
    :cond_54
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->trafficControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 675
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->updateTrafficStats()V

    .line 676
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mCurRxBytes:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLastRxBytes:J

    .line 677
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mCurTime:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLastTime:J

    const/16 v0, 0x1770

    .line 678
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->startTrafficControlPoll(I)V

    goto :goto_72

    .line 681
    :cond_6d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsPmControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_72
    :goto_72
    return-void
.end method

.method private isTwtAllowedByMacAddress(I)Z
    .registers 5

    .line 1921
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getWifiFactoryMacAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 1922
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1d

    const/16 p0, 0x11

    const/16 v1, 0x10

    .line 1923
    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    if-lt p0, p1, :cond_1c

    const/4 v2, 0x1

    :cond_1c
    return v2

    .line 1926
    :cond_1d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    const/4 p1, 0x2

    const-string v0, "Invalid MAC"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    return v2
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 2

    if-eqz p1, :cond_9

    .line 340
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->screenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_f

    .line 342
    :cond_9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->screenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_f
    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/String;)V
    .registers 4

    .line 347
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    .line 348
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->ifaces:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1e

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->ifaces:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 349
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->reconnectionWithoutDisconnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p1, 0x6

    .line 350
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->sendInternalMessage(I)V

    :cond_1e
    return-void
.end method

.method private onConnection()V
    .registers 8

    .line 562
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->latestSCPMVersion:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLatestScpmVersionSchedPm:Ljava/lang/String;

    if-eqz v0, :cond_b

    goto :goto_15

    .line 574
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    const-string v3, "SCPM policy not available"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    move v0, v2

    move v3, v0

    goto :goto_48

    .line 563
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->reconnectionWithoutDisconnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_40

    .line 564
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 565
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    .line 566
    :goto_29
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getVendorOuiFromVsie()Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->apOUIs:Ljava/util/HashSet;

    if-eqz v3, :cond_40

    if-eqz v0, :cond_40

    const/16 v4, 0x8

    .line 568
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 571
    :cond_40
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->policyComplianceCheck()Z

    move-result v0

    .line 572
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->policyComplianceCheckSchedPm()Z

    move-result v3

    .line 578
    :goto_48
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->reconnectionWithoutDisconnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-nez v0, :cond_52

    if-nez v3, :cond_52

    return-void

    .line 584
    :cond_52
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtSupported:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_aa

    if-eqz v0, :cond_aa

    .line 585
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTwtControl:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->queryTwtCapabilities(Ljava/lang/String;)I

    move-result v0

    const v4, 0xffff

    and-int/2addr v4, v0

    .line 586
    iput v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mAssociatedApCapabilities:I

    const/high16 v4, -0x10000

    and-int/2addr v0, v4

    shr-int/lit8 v0, v0, 0x10

    .line 587
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDeviceCapabilities:I

    .line 588
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cap. "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDeviceCapabilities:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mAssociatedApCapabilities:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 591
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mAssociatedApCapabilities:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_a5

    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDeviceCapabilities:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_a5

    .line 593
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTwtControl:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->connectionStateChanged()V

    .line 594
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_aa

    .line 596
    :cond_a5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 600
    :cond_aa
    :goto_aa
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmSupported:Z

    if-eqz v0, :cond_b5

    if-eqz v3, :cond_b5

    .line 601
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiScheduledPmControl:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->connectionStateChanged()V

    .line 605
    :cond_b5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_c5

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 606
    :cond_c5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 607
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->reConfigureSessionParametersBoundary()V

    .line 608
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->initializeForStartingPmControl()V

    :cond_d0
    return-void
.end method

.method private onDisconnection()V
    .registers 3

    .line 613
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/16 v0, 0x1f4

    .line 614
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->stopTrafficStatsPoll(I)V

    const/16 v0, 0xbb8

    .line 615
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->stopTrafficStatsPoll(I)V

    .line 616
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiServiceDetectionCallback:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;)V

    const/16 v0, 0x1770

    .line 617
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->stopTrafficControlPoll(I)V

    const/4 v0, 0x0

    .line 618
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mAssociatedApCapabilities:I

    .line 619
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 620
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 621
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 622
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsPmControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 623
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->initialTrafficCheck:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 624
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtStatus:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    iput v0, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    .line 625
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->throttlingActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 626
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->trafficControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 627
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->setNegotiationResult(ZIII)V

    .line 628
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtStatus:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->provideTwtStateToLinkInfoCollector(I)V

    .line 629
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTwtControl:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->connectionStateChanged()V

    .line 631
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->reconnectionWithoutDisconnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_63

    const/4 v0, 0x5

    .line 632
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->sendInternalMessage(I)V

    :cond_63
    return-void
.end method

.method private policyComplianceCheck()Z
    .registers 9

    .line 1680
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getWifiDriverVersion()Ljava/lang/String;

    move-result-object v0

    .line 1681
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getWifiFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    .line 1682
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmDriverVersion:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->driverVersionViolation(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "3.1"

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez v2, :cond_54

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmFirmwareVersion:Ljava/lang/String;

    .line 1683
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->versionViolation(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_54

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmTwtMonitorVersion:Ljava/lang/String;

    .line 1684
    invoke-direct {p0, v3, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->versionViolation(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_54

    .line 1689
    :cond_25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmOUIs:Ljava/util/HashSet;

    if-eqz v0, :cond_3b

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->apOUIs:Ljava/util/HashSet;

    if-eqz v1, :cond_3b

    .line 1690
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->containsNotAllowedVendorOui(Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1691
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    const-string v0, "Compliance violation: OUI"

    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    return v5

    .line 1694
    :cond_3b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->apOUIs:Ljava/util/HashSet;

    if-nez v0, :cond_40

    return v5

    .line 1698
    :cond_40
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmEnableCondition:I

    if-ltz v0, :cond_52

    .line 1699
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->isTwtAllowedByMacAddress(I)Z

    move-result v0

    if-nez v0, :cond_52

    .line 1700
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    const-string v0, "Compliance violation: MAC"

    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    return v5

    :cond_52
    const/4 p0, 0x1

    return p0

    .line 1685
    :cond_54
    :goto_54
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Compliance violation: ver. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmDriverVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmFirmwareVersion:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmTwtMonitorVersion:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, v4}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    return v5
.end method

.method private policyComplianceCheckSchedPm()Z
    .registers 9

    .line 1813
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getWifiDriverVersion()Ljava/lang/String;

    move-result-object v0

    .line 1814
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getWifiFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    .line 1815
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmDriverVersionSchedPm:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->driverVersionViolation(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "3.1"

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez v2, :cond_54

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmFirmwareVersionSchedPm:Ljava/lang/String;

    .line 1816
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->versionViolation(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_54

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmMonitorVersionSchedPm:Ljava/lang/String;

    .line 1817
    invoke-direct {p0, v3, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->versionViolation(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_54

    .line 1823
    :cond_25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mSchedPmScpmOuis:Ljava/util/HashSet;

    if-eqz v0, :cond_3b

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->apOUIs:Ljava/util/HashSet;

    if-eqz v1, :cond_3b

    .line 1824
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->containsNotAllowedVendorOui(Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1825
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    const-string v0, "SchedPm Compliance violation: OUI"

    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    return v5

    .line 1828
    :cond_3b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->apOUIs:Ljava/util/HashSet;

    if-nez v0, :cond_40

    return v5

    .line 1832
    :cond_40
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmEnableConditionSchedPm:I

    if-ltz v0, :cond_52

    .line 1833
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->isTwtAllowedByMacAddress(I)Z

    move-result v0

    if-nez v0, :cond_52

    .line 1834
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    const-string v0, "SchedPm Compliance violation: MAC"

    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    return v5

    :cond_52
    const/4 p0, 0x1

    return p0

    .line 1818
    :cond_54
    :goto_54
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SchedPm Compliance violation: ver. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmDriverVersionSchedPm:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmFirmwareVersionSchedPm:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmMonitorVersionSchedPm:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, v4}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    return v5
.end method

.method private provideTwtStateToLinkInfoCollector(I)V
    .registers 2

    .line 2067
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiLinkInfoCollector()Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 2069
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->updateTwtState(I)V

    :cond_b
    return-void
.end method

.method private reConfigureSessionParametersBoundary()V
    .registers 2

    .line 548
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 549
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinTwtServicePeriod:I

    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinServicePeriod:I

    .line 550
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinTwtSleepPeriod:I

    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSleepPeriod:I

    .line 551
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinTwtInterval:I

    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinInterval:I

    goto :goto_29

    .line 552
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 553
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSpmServicePeriod:I

    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinServicePeriod:I

    .line 554
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSpmSleepPeriod:I

    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSleepPeriod:I

    .line 555
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSpmInterval:I

    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinInterval:I

    :cond_29
    :goto_29
    return-void
.end method

.method private renewIgnored(II)Z
    .registers 4

    .line 883
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtStatus:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->interval:I

    if-ne p2, v0, :cond_12

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->quantizingDuration(I)I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtStatus:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->duration:I

    if-ne p1, p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private sendInternalMessage(I)V
    .registers 3

    .line 527
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsFeatureEnabled:Z

    if-eqz v0, :cond_d

    .line 528
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    return-void
.end method

.method private setTWTRenewalEnabled(Z)V
    .registers 3

    .line 1434
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->twtRenewalEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1435
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->reconnectionWithoutDisconnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p1, 0x6

    .line 1436
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->sendInternalMessage(I)V

    return-void
.end method

.method private setWifiScpmExecutorList()V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_14

    .line 382
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->PM_SCPM_CONFIGURATION_LIST:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 383
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmExecutorList:[Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    new-instance v3, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;-><init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Ljava/lang/String;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    return-void
.end method

.method private startAlgorithmPollWithNewInterval(I)V
    .registers 5

    .line 931
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 932
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->removeMessages(I)V

    .line 934
    :cond_e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private startTrafficControlPoll(I)V
    .registers 3

    .line 945
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTrafficControlCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V

    return-void
.end method

.method private startTrafficStatsPoll(I)V
    .registers 3

    .line 937
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V

    return-void
.end method

.method private stopTrafficControlPoll(I)V
    .registers 3

    .line 949
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTrafficControlCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V

    return-void
.end method

.method private stopTrafficStatsPoll(I)V
    .registers 3

    .line 941
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V

    return-void
.end method

.method private teardownAllTwtSessionIfExist()V
    .registers 3

    .line 637
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTwtControl:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->querySessionExistence(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 638
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtStatus:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->id:I

    .line 639
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1a
    return-void
.end method

.method private teardownScheduledPmSessionIfExist()V
    .registers 3

    .line 644
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiScheduledPmControl:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->querySessionExistence(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 645
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_15
    return-void
.end method

.method private teardownSession()V
    .registers 3

    .line 971
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 972
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTwtControl:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtStatus:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->id:I

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->teardownSession(Ljava/lang/String;I)V

    goto :goto_27

    .line 973
    :cond_14
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 974
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiScheduledPmControl:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtStatus:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->id:I

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->teardownSession(Ljava/lang/String;I)V

    :cond_27
    :goto_27
    return-void
.end method

.method private updateCurrentRssi(Landroid/net/wifi/WifiInfo;)V
    .registers 3

    .line 840
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->signalPoll(Ljava/lang/String;)Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;

    move-result-object p0

    if-eqz p1, :cond_11

    if-eqz p0, :cond_11

    .line 842
    iget p0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;->currentRssiDbm:I

    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    :cond_11
    return-void
.end method

.method private updatePackageInfo()V
    .registers 3

    .line 1427
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getUsageStatsPackage()Ljava/lang/String;

    move-result-object v0

    .line 1428
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getUsageStatsPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 1429
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->setUsageStatsPackage(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method private updateScheduledPmCapabilities(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V
    .registers 5

    .line 1964
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    const-string v1, "ro.product.first_api_level"

    const/4 v2, -0x1

    .line 1965
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x21

    if-gt v0, v1, :cond_12

    return-void

    .line 1970
    :cond_12
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->getScheduledPmFeature()I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-lez v0, :cond_1d

    move v0, v1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 1971
    :goto_1e
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmSupported:Z

    and-int/lit8 v0, p1, 0x30

    shr-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit16 v0, v0, 0x400

    .line 1974
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSpmServicePeriod:I

    and-int/lit16 p1, p1, 0xc0

    shr-int/lit8 p1, p1, 0x6

    add-int/2addr p1, v1

    mul-int/lit8 p1, p1, 0x8

    mul-int/lit16 p1, p1, 0x400

    .line 1977
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSpmSleepPeriod:I

    add-int/2addr v0, p1

    .line 1978
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSpmInterval:I

    return-void
.end method

.method private updateTwtCapabilities(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V
    .registers 5

    .line 1932
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->getTwtFeature()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-lez v1, :cond_f

    and-int/lit8 v1, v0, 0x2

    if-lez v1, :cond_f

    move v1, v2

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 1933
    :goto_10
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtSupported:Z

    if-eqz v1, :cond_36

    and-int/lit8 p1, v0, 0x30

    shr-int/lit8 p1, p1, 0x4

    add-int/2addr p1, v2

    mul-int/lit8 p1, p1, 0x4

    mul-int/lit16 p1, p1, 0x400

    .line 1938
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinTwtServicePeriod:I

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x8

    mul-int/lit16 v0, v0, 0x400

    .line 1941
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinTwtSleepPeriod:I

    add-int/2addr p1, v0

    .line 1942
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinTwtInterval:I

    .line 1943
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getChipsetVendorName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->chipsetVendorName:Ljava/lang/String;

    goto :goto_87

    .line 1944
    :cond_36
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->isTwtSupported()Z

    move-result p1

    if-eqz p1, :cond_87

    .line 1946
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtSupported:Z

    .line 1947
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getTwtParameters()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_70

    const-string v0, "minServicePeriod"

    .line 1950
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->minServicePeriodSCPM:I

    if-le v1, v2, :cond_60

    .line 1951
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1952
    :cond_60
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinTwtServicePeriod:I

    const-string v0, "minInterval"

    .line 1953
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinTwtInterval:I

    .line 1956
    :cond_70
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getChipsetVendorName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->chipsetVendorName:Ljava/lang/String;

    if-eqz p1, :cond_87

    const-string v0, "QUALCOMM"

    .line 1957
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_87

    const p1, 0x8000

    .line 1958
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinTwtSleepPeriod:I

    :cond_87
    :goto_87
    return-void
.end method

.method private updateWifiUsabilityStatsEntry(Landroid/net/wifi/WifiUsabilityStatsEntry;)V
    .registers 26

    move-object/from16 v0, p0

    .line 753
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-nez v1, :cond_9

    return-void

    .line 758
    :cond_9
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getTxLinkSpeedMbps()I

    move-result v13

    move v3, v13

    .line 759
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRxLinkSpeedMbps()I

    move-result v14

    move v4, v14

    .line 760
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v5

    .line 761
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    iput v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mRssi:I

    .line 763
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalRadioOnFreqTimeMillis()J

    move-result-wide v15

    .line 764
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalCcaBusyFreqTimeMillis()J

    move-result-wide v17

    .line 765
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalScanTimeMillis()J

    move-result-wide v19

    .line 767
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    iget v6, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mRssi:I

    iget-wide v7, v1, Landroid/net/wifi/WifiInfo;->txSuccess:J

    iget-wide v9, v1, Landroid/net/wifi/WifiInfo;->txRetries:J

    iget-wide v11, v1, Landroid/net/wifi/WifiInfo;->txBad:J

    move/from16 v21, v13

    move/from16 v22, v14

    iget-wide v13, v1, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    move/from16 v1, v21

    move/from16 v23, v22

    invoke-virtual/range {v2 .. v20}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->setLinkLayerStats(IIIIJJJJJJJ)V

    .line 770
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getTwtStats()Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;

    move-result-object v2

    .line 772
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LinkStats "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mRssi:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v23

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->txGood:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->txRetry:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->txBad:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->rxGood:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->radioOnTimeMs:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->ccaBusyTimeMs:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v2, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->scanTimeMs:J

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    return-void
.end method

.method private versionViolation(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x1

    if-eqz p1, :cond_67

    if-nez p2, :cond_6

    goto :goto_67

    :cond_6
    const-string v1, "\\."

    .line 1846
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1847
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    move v2, v1

    .line 1848
    :goto_12
    array-length v3, p2

    if-ge v2, v3, :cond_66

    .line 1849
    array-length v3, p1

    if-ne v2, v3, :cond_19

    return v0

    .line 1852
    :cond_19
    aget-object v3, p1, v2

    const-string v4, "[^0-9]"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1853
    aget-object v6, p2, v2

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1857
    :try_start_29
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_31

    move v3, v1

    goto :goto_35

    :cond_31
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1858
    :goto_35
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3d

    move v4, v1

    goto :goto_41

    :cond_3d
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_41
    .catchall {:try_start_29 .. :try_end_41} :catchall_4a

    :goto_41
    if-le v4, v3, :cond_44

    return v0

    :cond_44
    if-ge v4, v3, :cond_47

    return v1

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :catchall_4a
    move-exception p1

    .line 1860
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ver. violation check failure: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    return v0

    :cond_66
    return v1

    :cond_67
    :goto_67
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 3

    .line 1440
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->dump(Ljava/io/PrintWriter;)V

    .line 1441
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtControl()Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->dump(Ljava/io/PrintWriter;)V

    .line 1442
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScheduledPmControl()Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public enableVerboseLogging(I)V
    .registers 2

    .line 1421
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    if-eqz p0, :cond_7

    .line 1422
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->enableVerboseLogging(I)V

    :cond_7
    return-void
.end method

.method public externalTwtInterface(ILjava/lang/String;)V
    .registers 14

    const-string v0, "\\s"

    .line 702
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    .line 709
    :goto_c
    array-length v6, p2

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v1, v6, :cond_73

    .line 710
    aget-object v6, p2, v1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    const/4 v9, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_aa

    :goto_1e
    move v7, v9

    goto :goto_49

    :sswitch_20
    const-string v7, "interval"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_29

    goto :goto_1e

    :cond_29
    const/4 v7, 0x3

    goto :goto_49

    :sswitch_2b
    const-string v8, "sp"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_49

    goto :goto_1e

    :sswitch_34
    const-string v7, "flowId"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3d

    goto :goto_1e

    :cond_3d
    move v7, v8

    goto :goto_49

    :sswitch_3f
    const-string v7, "enabled"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_48

    goto :goto_1e

    :cond_48
    move v7, v0

    :cond_49
    :goto_49
    packed-switch v7, :pswitch_data_bc

    goto :goto_70

    :pswitch_4d
    add-int/lit8 v5, v1, 0x1

    .line 718
    aget-object v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_70

    :pswitch_56
    add-int/lit8 v4, v1, 0x1

    .line 715
    aget-object v4, p2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_70

    :pswitch_5f
    add-int/lit8 v2, v1, 0x1

    .line 712
    aget-object v2, p2, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_70

    :pswitch_68
    add-int/lit8 v3, v1, 0x1

    .line 721
    aget-object v3, p2, v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    :goto_70
    add-int/lit8 v1, v1, 0x2

    goto :goto_c

    :cond_73
    if-eqz p1, :cond_95

    if-eq p1, v8, :cond_85

    if-eq p1, v7, :cond_81

    const-string p0, "SemWifiTwtMonitor"

    const-string p1, "Invalid cmdId"

    .line 747
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    .line 744
    :cond_81
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->setTWTRenewalEnabled(Z)V

    goto :goto_a8

    :cond_85
    if-ltz v2, :cond_89

    .line 739
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredFlowID:I

    .line 741
    :cond_89
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    const/16 p1, 0xb

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a8

    :cond_95
    if-lez v2, :cond_99

    .line 731
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredFlowID:I

    .line 733
    :cond_99
    iput v5, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredInterval:I

    .line 734
    iput v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredSP:I

    .line 735
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    const/16 p1, 0xa

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_a8
    return-void

    nop

    :sswitch_data_aa
    .sparse-switch
        -0x5ff074bf -> :sswitch_3f
        -0x4bcb8917 -> :sswitch_34
        0xe5d -> :sswitch_2b
        0x21ffe4c5 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_68
        :pswitch_5f
        :pswitch_56
        :pswitch_4d
    .end packed-switch
.end method

.method public getScpmCount()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method public getScpmExecutorList()[Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;
    .registers 1

    .line 429
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmExecutorList:[Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    return-object p0
.end method

.method public getTWTParams()[I
    .registers 6

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 1447
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getTWTParams()[I

    move-result-object v1

    .line 1448
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->twtRenewalEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 1449
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtStatus:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    iget v2, v2, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    const/4 v4, 0x1

    if-nez v2, :cond_1c

    move v2, v3

    goto :goto_1d

    :cond_1c
    move v2, v4

    :goto_1d
    aput v2, v0, v4

    .line 1450
    aget v2, v1, v3

    const/4 v3, 0x2

    aput v2, v0, v3

    .line 1451
    aget v2, v1, v4

    const/4 v4, 0x3

    aput v2, v0, v4

    const/4 v2, 0x4

    .line 1452
    aget v3, v1, v3

    aput v3, v0, v2

    const/4 v2, 0x5

    .line 1453
    aget v1, v1, v4

    aput v1, v0, v2

    const/4 v1, 0x6

    .line 1454
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTwtControl:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->getAbnormalityOfAP()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 1455
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mAssociatedApCapabilities:I

    aput p0, v0, v1

    return-object v0
.end method

.method public handleLazyBootCompleted(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V
    .registers 4

    .line 1982
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->updateTwtCapabilities(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V

    .line 1983
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->updateScheduledPmCapabilities(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V

    .line 1984
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtSupported:Z

    if-nez p1, :cond_11

    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmSupported:Z

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    :goto_12
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsFeatureEnabled:Z

    .line 1985
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Feature support: TWT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " S-PM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 1988
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtSupported:Z

    if-eqz p1, :cond_48

    .line 1989
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinTwtServicePeriod:I

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinServicePeriod:I

    .line 1990
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinTwtSleepPeriod:I

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSleepPeriod:I

    .line 1991
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinTwtInterval:I

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinInterval:I

    goto :goto_58

    .line 1992
    :cond_48
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmSupported:Z

    if-eqz p1, :cond_58

    .line 1993
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSpmServicePeriod:I

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinServicePeriod:I

    .line 1994
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSpmSleepPeriod:I

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSleepPeriod:I

    .line 1995
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSpmInterval:I

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinInterval:I

    .line 1998
    :cond_58
    :goto_58
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_64

    const/4 p1, 0x5

    .line 1999
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->sendInternalMessage(I)V

    :cond_64
    return-void
.end method

.method public onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .registers 5

    .line 502
    iget-boolean p2, p2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_2a

    .line 503
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->ifaces:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 504
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryInterfaceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6d

    .line 505
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->ifaces:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p2

    if-ne p2, v0, :cond_6d

    .line 506
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 507
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    const/4 p1, 0x5

    .line 508
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->sendInternalMessage(I)V

    goto :goto_6d

    .line 512
    :cond_2a
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->ifaces:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 513
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x6

    if-eqz p1, :cond_47

    .line 514
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 515
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->reconnectionWithoutDisconnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 516
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->sendInternalMessage(I)V

    goto :goto_6d

    .line 517
    :cond_47
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->ifaces:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-ne p1, v0, :cond_6d

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->ifaces:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 518
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 519
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryInterfaceName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    .line 520
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->reconnectionWithoutDisconnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 521
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->sendInternalMessage(I)V

    :cond_6d
    :goto_6d
    return-void
.end method

.method onSessionCreationResult(IIII)V
    .registers 6

    .line 533
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;-><init>()V

    .line 534
    iput p1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->id:I

    .line 535
    iput p3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->duration:I

    .line 536
    iput p4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->interval:I

    .line 537
    iput p2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->reasonCode:I

    .line 538
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    const/16 p1, 0xc

    invoke-static {p0, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 539
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method onSessionTeardownResult(II)V
    .registers 4

    .line 543
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    const/16 v0, 0xd

    invoke-static {p0, v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    .line 544
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method quantizingDuration(I)I
    .registers 2

    .line 875
    rem-int/lit16 p0, p1, 0x2000

    if-nez p0, :cond_5

    return p1

    .line 878
    :cond_5
    div-int/lit16 p1, p1, 0x2000

    add-int/lit8 p1, p1, 0x1

    mul-int/lit16 p1, p1, 0x2000

    return p1
.end method

.method public renewTwtSession(Ljava/lang/String;)V
    .registers 4

    .line 1412
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsFeatureEnabled:Z

    if-nez p1, :cond_5

    return-void

    .line 1415
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    const/4 v0, 0x2

    const-string v1, "DR_reinit."

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 1416
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->reconnectionWithoutDisconnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p1, 0x6

    .line 1417
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->sendInternalMessage(I)V

    return-void
.end method

.method public setTCRule(ZI)V
    .registers 7

    .line 1460
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    if-eqz p1, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TC enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    :cond_16
    const-string v1, "TC disabled"

    :goto_18
    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 1461
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsFeatureEnabled:Z

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->twtRenewalEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_31

    goto :goto_82

    .line 1466
    :cond_31
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->trafficControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/16 v1, 0x1770

    if-nez v0, :cond_4c

    if-eqz p1, :cond_4c

    .line 1467
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->updateTrafficStats()V

    .line 1468
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mCurRxBytes:J

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLastRxBytes:J

    .line 1469
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mCurTime:J

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLastTime:J

    .line 1470
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->startTrafficControlPoll(I)V

    goto :goto_7a

    .line 1471
    :cond_4c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->trafficControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_7a

    if-nez p1, :cond_7a

    .line 1472
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->stopTrafficControlPoll(I)V

    .line 1473
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->throttlingActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 1474
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getMainCategoryServiceType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_74

    .line 1475
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1476
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1478
    :cond_74
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->throttlingActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1480
    :cond_7a
    :goto_7a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->trafficControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1481
    iput p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTrafficLimit:I

    return-void

    .line 1462
    :cond_82
    :goto_82
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->trafficControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1463
    iput p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTrafficLimit:I

    return-void
.end method

.method updateLinkLayerStats()V
    .registers 24
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    .line 779
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 780
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->screenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_e2

    if-nez v1, :cond_12

    goto/16 :goto_e2

    .line 784
    :cond_12
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getTxLinkSpeedMbps()I

    move-result v2

    .line 785
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRxLinkSpeedMbps()I

    move-result v6

    .line 786
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v5

    .line 788
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->screenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_29

    .line 789
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->updateCurrentRssi(Landroid/net/wifi/WifiInfo;)V

    .line 791
    :cond_29
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    iput v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mRssi:I

    .line 793
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getLinkInfo()Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    if-eqz v3, :cond_60

    .line 798
    iget-object v9, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->channelStatsMap:Landroid/util/SparseArray;

    .line 799
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    move v11, v4

    :goto_3f
    if-ge v11, v10, :cond_55

    .line 801
    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;

    .line 802
    iget v13, v12, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->frequency:I

    if-ne v13, v5, :cond_52

    .line 803
    iget v7, v12, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->radioOnTimeMs:I

    int-to-long v7, v7

    .line 804
    iget v9, v12, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->ccaBusyTimeMs:I

    int-to-long v9, v9

    goto :goto_56

    :cond_52
    add-int/lit8 v11, v11, 0x1

    goto :goto_3f

    :cond_55
    move-wide v9, v7

    .line 808
    :goto_56
    iget v3, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_scan:I

    int-to-long v11, v3

    move-wide/from16 v16, v7

    move-wide/from16 v18, v9

    move-wide/from16 v20, v11

    goto :goto_66

    :cond_60
    move-wide/from16 v16, v7

    move-wide/from16 v18, v16

    move-wide/from16 v20, v18

    .line 811
    :goto_66
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    iget v7, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mRssi:I

    iget-wide v8, v1, Landroid/net/wifi/WifiInfo;->txSuccess:J

    iget-wide v10, v1, Landroid/net/wifi/WifiInfo;->txRetries:J

    iget-wide v12, v1, Landroid/net/wifi/WifiInfo;->txBad:J

    iget-wide v14, v1, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    move v1, v4

    move v4, v2

    move/from16 v22, v5

    move v5, v6

    move v1, v6

    move/from16 v6, v22

    invoke-virtual/range {v3 .. v21}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->setLinkLayerStats(IIIIJJJJJJJ)V

    .line 814
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getTwtStats()Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;

    move-result-object v3

    .line 816
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LinkStats "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mRssi:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->txGood:J

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->txRetry:J

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->txBad:J

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->rxGood:J

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->radioOnTimeMs:J

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->ccaBusyTimeMs:J

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v3, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->scanTimeMs:J

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    :cond_e2
    :goto_e2
    return-void
.end method

.method updateTrafficStats()V
    .registers 13

    .line 822
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v2

    .line 823
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v4

    .line 824
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v6

    .line 825
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v8

    .line 826
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mCurTime:J

    .line 827
    iput-wide v8, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mCurRxBytes:J

    .line 829
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual/range {v1 .. v11}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->setTrafficStats(JJJJJ)V

    return-void
.end method
