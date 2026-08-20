.class public final Lcom/samsung/android/server/wifi/SemWifiServiceDetector;
.super Ljava/lang/Object;
.source "SemWifiServiceDetector.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/ClientModeStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;,
        Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;,
        Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ScpmBundle;
    }
.end annotation


# static fields
.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0x7d0

.field private static final DUMP_ARG:Ljava/lang/String; = "SemWifiServiceDetector history:"

.field public static final LOG_TYPE_D:I = 0x0

.field public static final LOG_TYPE_E:I = 0x1

.field public static final LOG_TYPE_I:I = 0x2

.field private static final NSD_OUTPUT_SIZE:I = 0x9

.field private static final NUM_L1_CAT:I = 0x3

.field private static final NUM_L2_NRT_CAT:I = 0x4

.field private static final NUM_L2_RT_CAT:I = 0x3

.field private static final SERVICE_DETECTION_ACTIVATION:I = 0x3

.field private static final SERVICE_DETECTION_CALLBACK_REGISTRATION:I = 0x7

.field private static final SERVICE_DETECTION_CALLBACK_UNREGISTRATION:I = 0x8

.field static final SERVICE_DETECTION_DEACTIVATION:I = 0x4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final SERVICE_DETECTION_INTERFACE_CHANGE:I = 0x5

.field private static final SERVICE_DETECTION_LOAD_ML_LIBRARY:I = 0x6

.field private static final SERVICE_DETECTION_MODEL_UPGRADE:I = 0x9

.field private static final SERVICE_UPDATE_INTERVAL_MS:I = 0x1f4

.field static final SERVICE_UPDATE_POLL:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemWifiServiceDetector"

.field private static final TRAFFIC_UPDATE_INTERVAL_MS:I = 0xbb8

.field private static final TRAFFIC_UPDATE_POLL:I = 0x2

.field private static final WINDOW_FOR_MAIN_CATEGORY:I = 0x7

.field private static final WINDOW_FOR_SUB_CATEGORY:I = 0x5

.field private static final ZERO_ARRAY:[I

.field private static mXgbL2Nrt:Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Nrt;

.field private static mXgbL2Rt:Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;

.field private static mXgbMsL1:Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;


# instance fields
.field private final Callbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final NSD_SCPM_CONFIGURATION_COUNT:I

.field private final SCPM_CONFIGURATION_LIST:[Ljava/lang/String;

.field private final ifaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isMlLibraryReady:Z

.field private lastRxBytes:J

.field private lastTime:J

.field private lastTxBytes:J

.field private mClientIfaceName:Ljava/lang/String;

.field private final mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialResultIgnoreCount:I

.field private mIsFeatureEnabled:Z

.field private final mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

.field private final mServiceDetectionHandler:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

.field private mTrafficPatternTracker:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

.field private final mTrafficTypeDetector:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;

.field private mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

.field private mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

.field private mVerboseLoggingEnabled:Z

.field private final mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

.field private final mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

.field private final nsdResults:[I

.field private nsdSuspensionThresholdHigh:I

.field private nsdSuspensionThresholdLow:I

.field private final prevL1MsDetRes:[I

.field private priIntfListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

.field private runTimeSleepTimerMs:I

.field private final scpmExecutorList:[Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

.field private final serCntMs:[I

.field private final serDetNrtResPerSlot:[I

.field private serDetResInd:I

.field private final serDetResPerSlotMs:[[I

.field private final serDetRtResPerSlot:[I

.field private serDetSubResInd:I

.field private final serNrtCnt:[I

.field private final serRtCnt:[I

.field private final twtBeneficial:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private wakeDurationThresholdPercent:I


# direct methods
.method static bridge synthetic -$$Nest$fgetCallbacks(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->Callbacks:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetifaces(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->ifaces:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisMlLibraryReady(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->isMlLibraryReady:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastRxBytes(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->lastRxBytes:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlastTime(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->lastTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlastTxBytes(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->lastTxBytes:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmClientIfaceName(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mClientIfaceName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFeatureEnabled(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mIsFeatureEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemServiceInfo(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceDetectionHandler(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrafficPatternTracker(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficPatternTracker:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiTrafficPoller(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiTrafficStatsCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnsdResults(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)[I
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdResults:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnsdSuspensionThresholdHigh(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdSuspensionThresholdHigh:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnsdSuspensionThresholdLow(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdSuspensionThresholdLow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettwtBeneficial(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->twtBeneficial:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwakeDurationThresholdPercent(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->wakeDurationThresholdPercent:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputisMlLibraryReady(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->isMlLibraryReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastRxBytes(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->lastRxBytes:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastTime(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->lastTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastTxBytes(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->lastTxBytes:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmClientIfaceName(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mClientIfaceName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdetermineServiceType(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->determineServiceType(Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitializeInternalVariables(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->initializeInternalVariables()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitializeServiceInfo(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->initializeServiceInfo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitializeTrafficTypeDetector(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->initializeTrafficTypeDetector()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minputDataToClassifiers(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->inputDataToClassifiers(Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpredictL1ServiceType(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->predictL1ServiceType()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpredictL2ServiceType(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->predictL2ServiceType()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterUsageStatsWatcher(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->registerUsageStatsWatcher()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartServiceDetectionPoll(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->startServiceDetectionPoll()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartTrafficPatternTracker(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->startTrafficPatternTracker()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopTrafficPatternTracker(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->stopTrafficPatternTracker()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterUsageStatsWatcher(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->unregisterUsageStatsWatcher()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmXgbL2Nrt()Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Nrt;
    .registers 1

    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mXgbL2Nrt:Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Nrt;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmXgbL2Rt()Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;
    .registers 1

    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mXgbL2Rt:Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmXgbMsL1()Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;
    .registers 1

    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mXgbMsL1:Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputmXgbL2Nrt(Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Nrt;)V
    .registers 1

    sput-object p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mXgbL2Nrt:Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Nrt;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmXgbL2Rt(Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;)V
    .registers 1

    sput-object p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mXgbL2Rt:Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmXgbMsL1(Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;)V
    .registers 1

    sput-object p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mXgbMsL1:Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 85
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->ZERO_ARRAY:[I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Landroid/os/HandlerThread;)V
    .registers 11

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    .line 73
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdSuspensionThresholdHigh:I

    const/4 v0, 0x5

    .line 74
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdSuspensionThresholdLow:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 87
    fill-array-data v1, :array_da

    const-class v2, I

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serDetResPerSlotMs:[[I

    new-array v1, v0, [I

    .line 88
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serDetRtResPerSlot:[I

    new-array v0, v0, [I

    .line 89
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serDetNrtResPerSlot:[I

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 91
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serCntMs:[I

    new-array v1, v0, [I

    .line 92
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serRtCnt:[I

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 93
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serNrtCnt:[I

    const/16 v1, 0x9

    new-array v1, v1, [I

    .line 95
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdResults:[I

    new-array v0, v0, [I

    .line 96
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->prevL1MsDetRes:[I

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serDetResInd:I

    .line 99
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serDetSubResInd:I

    .line 109
    new-instance v1, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficTypeDetector:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;

    .line 111
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 112
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mVerboseLoggingEnabled:Z

    .line 125
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->ifaces:Ljava/util/Set;

    .line 127
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mIsFeatureEnabled:Z

    const-wide/16 v1, 0x0

    .line 129
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->lastTime:J

    .line 130
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->lastTxBytes:J

    .line 131
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->lastRxBytes:J

    .line 134
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mHistory:Ljava/util/LinkedList;

    const/16 v1, 0xa

    .line 141
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mInitialResultIgnoreCount:I

    const/16 v1, 0x3c

    .line 143
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->wakeDurationThresholdPercent:I

    const/16 v1, 0x32

    .line 144
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->runTimeSleepTimerMs:I

    .line 145
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->twtBeneficial:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 147
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->isMlLibraryReady:Z

    const/4 v0, 0x6

    .line 149
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->NSD_SCPM_CONFIGURATION_COUNT:I

    const-string v1, "NSD_CONTROL_L1_CG"

    const-string v2, "NSD_CONTROL_L1_RT"

    const-string v3, "NSD_CONTROL_L1_NRT"

    const-string v4, "NSD_CONTROL_L2_RT"

    const-string v5, "NSD_CONTROL_L2_NRT"

    const-string v6, "NSD_CONTROL"

    .line 150
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->SCPM_CONFIGURATION_LIST:[Ljava/lang/String;

    new-array v0, v0, [Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    .line 160
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->scpmExecutorList:[Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    .line 217
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->Callbacks:Ljava/util/Set;

    .line 269
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$2;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 278
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->priIntfListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

    .line 237
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 238
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInterfaceNameProvider()Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 239
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    const-string p2, "usagestats"

    .line 241
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 240
    invoke-static {p2}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    .line 243
    new-instance p2, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    invoke-direct {p2}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 245
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->priIntfListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

    invoke-interface {p1, p2}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    .line 246
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->setWifiScpmExecutorList()V

    return-void

    nop

    :array_da
    .array-data 4
        0x3
        0x7
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Landroid/os/HandlerThread;Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Nrt;Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;Landroid/app/usage/IUsageStatsManager;Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;)V
    .registers 18
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v0, p0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x2710

    .line 73
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdSuspensionThresholdHigh:I

    const/4 v1, 0x5

    .line 74
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdSuspensionThresholdLow:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 87
    fill-array-data v2, :array_dc

    const-class v3, I

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serDetResPerSlotMs:[[I

    new-array v2, v1, [I

    .line 88
    iput-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serDetRtResPerSlot:[I

    new-array v1, v1, [I

    .line 89
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serDetNrtResPerSlot:[I

    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 91
    iput-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serCntMs:[I

    new-array v2, v1, [I

    .line 92
    iput-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serRtCnt:[I

    const/4 v2, 0x4

    new-array v2, v2, [I

    .line 93
    iput-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serNrtCnt:[I

    const/16 v2, 0x9

    new-array v2, v2, [I

    .line 95
    iput-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdResults:[I

    new-array v1, v1, [I

    .line 96
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->prevL1MsDetRes:[I

    const/4 v1, 0x0

    .line 98
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serDetResInd:I

    .line 99
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serDetSubResInd:I

    .line 109
    new-instance v2, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;-><init>()V

    iput-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficTypeDetector:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;

    .line 111
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 112
    iput-boolean v1, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mVerboseLoggingEnabled:Z

    .line 125
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->ifaces:Ljava/util/Set;

    .line 127
    iput-boolean v1, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mIsFeatureEnabled:Z

    const-wide/16 v2, 0x0

    .line 129
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->lastTime:J

    .line 130
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->lastTxBytes:J

    .line 131
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->lastRxBytes:J

    .line 134
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mHistory:Ljava/util/LinkedList;

    const/16 v2, 0xa

    .line 141
    iput v2, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mInitialResultIgnoreCount:I

    const/16 v2, 0x3c

    .line 143
    iput v2, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->wakeDurationThresholdPercent:I

    const/16 v2, 0x32

    .line 144
    iput v2, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->runTimeSleepTimerMs:I

    .line 145
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->twtBeneficial:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 147
    iput-boolean v1, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->isMlLibraryReady:Z

    const/4 v1, 0x6

    .line 149
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->NSD_SCPM_CONFIGURATION_COUNT:I

    const-string v2, "NSD_CONTROL_L1_CG"

    const-string v3, "NSD_CONTROL_L1_RT"

    const-string v4, "NSD_CONTROL_L1_NRT"

    const-string v5, "NSD_CONTROL_L2_RT"

    const-string v6, "NSD_CONTROL_L2_NRT"

    const-string v7, "NSD_CONTROL"

    .line 150
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->SCPM_CONFIGURATION_LIST:[Ljava/lang/String;

    new-array v1, v1, [Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    .line 160
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->scpmExecutorList:[Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    .line 217
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->Callbacks:Ljava/util/Set;

    .line 269
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$2;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 278
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->priIntfListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

    move-object v1, p2

    .line 256
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 257
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInterfaceNameProvider()Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 258
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    move-object/from16 v1, p8

    .line 259
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    move-object/from16 v1, p9

    .line 260
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    .line 261
    sput-object p4, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mXgbMsL1:Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;

    .line 262
    sput-object p5, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mXgbL2Nrt:Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Nrt;

    .line 263
    sput-object p6, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mXgbL2Rt:Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;

    move-object v1, p7

    .line 264
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficPatternTracker:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    const/4 v1, 0x1

    .line 265
    iput-boolean v1, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->isMlLibraryReady:Z

    .line 266
    new-instance v1, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    return-void

    nop

    :array_dc
    .array-data 4
        0x3
        0x7
    .end array-data
.end method

.method private checkMixedServiceTypeDetection([I)V
    .registers 7

    .line 749
    invoke-static {p1}, Ljava/util/stream/IntStream;->of([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->sum()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-le v0, v3, :cond_2b

    .line 751
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdResults:[I

    aput v3, p0, v1

    const/4 p1, 0x3

    .line 752
    aget p1, p0, p1

    if-ne p1, v3, :cond_19

    .line 753
    aput v1, p0, v2

    goto :goto_23

    :cond_19
    const/4 p1, 0x4

    .line 754
    aget p1, p0, p1

    if-ne p1, v3, :cond_21

    .line 755
    aput v3, p0, v2

    goto :goto_23

    .line 757
    :cond_21
    aput v2, p0, v2

    :goto_23
    const/4 p1, 0x6

    const/4 v0, -0x1

    .line 759
    aput v0, p0, p1

    const/4 p1, 0x7

    .line 760
    aput v0, p0, p1

    goto :goto_50

    :cond_2b
    const/4 v4, 0x5

    if-ne v0, v3, :cond_48

    .line 762
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdResults:[I

    aput v1, p0, v1

    .line 763
    aget v0, p1, v1

    if-eq v0, v3, :cond_3e

    aget p1, p1, v3

    if-ne p1, v3, :cond_3b

    goto :goto_3e

    .line 771
    :cond_3b
    aput v2, p0, v2

    goto :goto_50

    .line 764
    :cond_3e
    :goto_3e
    aput v1, p0, v4

    if-ne v0, v3, :cond_45

    .line 766
    aput v1, p0, v2

    goto :goto_50

    .line 768
    :cond_45
    aput v3, p0, v2

    goto :goto_50

    .line 774
    :cond_48
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdResults:[I

    aput v1, p0, v1

    .line 775
    aput v2, p0, v2

    .line 776
    aput v3, p0, v4

    :goto_50
    return-void
.end method

.method private convertTrafficDataToArray(Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;)[F
    .registers 4

    const/16 p0, 0xd

    new-array p0, p0, [F

    .line 519
    iget v0, p1, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->interTimeMax:F

    const/4 v1, 0x0

    aput v0, p0, v1

    .line 520
    iget v0, p1, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->interTimeAvg:F

    const/4 v1, 0x1

    aput v0, p0, v1

    .line 521
    iget v0, p1, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->ulPacketCnt:F

    const/4 v1, 0x2

    aput v0, p0, v1

    .line 522
    iget v0, p1, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->dlPacketCnt:F

    const/4 v1, 0x3

    aput v0, p0, v1

    .line 523
    iget v0, p1, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->ulPacketSizeMin:F

    const/4 v1, 0x4

    aput v0, p0, v1

    .line 524
    iget v0, p1, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->ulPacketSizeMax:F

    const/4 v1, 0x5

    aput v0, p0, v1

    .line 525
    iget v0, p1, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->ulPacketSizeAvg:F

    const/4 v1, 0x6

    aput v0, p0, v1

    .line 526
    iget v0, p1, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->dlPacketSizeMax:F

    const/4 v1, 0x7

    aput v0, p0, v1

    .line 527
    iget v0, p1, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->dlPacketSizeMin:F

    const/16 v1, 0x8

    aput v0, p0, v1

    .line 528
    iget v0, p1, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->dlPacketSizeAvg:F

    const/16 v1, 0x9

    aput v0, p0, v1

    .line 529
    iget v0, p1, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->interTimeMin:F

    const/16 v1, 0xa

    aput v0, p0, v1

    .line 530
    iget v0, p1, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->interTimeDLMax1:F

    const/16 v1, 0xb

    aput v0, p0, v1

    .line 531
    iget p1, p1, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->interTimeDLMax2:F

    const/16 v0, 0xc

    aput p1, p0, v0

    return-object p0
.end method

.method private createTrafficPatternTracker(Lcom/android/net/module/util/InterfaceParams;)Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;
    .registers 4

    .line 613
    :try_start_0
    new-instance v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;-><init>(Landroid/os/Handler;Lcom/android/net/module/util/InterfaceParams;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    :catch_8
    move-exception p1

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get PacketTracker object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private determineServiceType(Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;)V
    .registers 12

    const/4 v0, 0x1

    new-array v1, v0, [F

    new-array v2, v0, [F

    .line 561
    iget v3, p1, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->ulPacketCnt:F

    iget v4, p1, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->ulPacketSizeAvg:F

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    aput v3, v1, v4

    .line 562
    iget v3, p1, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->dlPacketCnt:F

    iget p1, p1, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->dlPacketSizeAvg:F

    mul-float/2addr v3, p1

    aput v3, v2, v4

    .line 564
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficTypeDetector:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;

    invoke-virtual {p1, v1, v2, v0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->trafficDetAlgo([F[FI)V

    .line 566
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficTypeDetector:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;

    iget-object v5, v3, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->trafficType:[I

    aget v5, v5, v4

    iget v6, v3, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLenMav:I

    iget v7, v3, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLenMav:I

    iget-object v3, v3, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvlPreMavArray:[F

    aget v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {p1, v5, v6, v7, v3}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->setTrafficInfo(IIII)V

    .line 569
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mInitialResultIgnoreCount:I

    if-lez p1, :cond_36

    sub-int/2addr p1, v0

    .line 570
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mInitialResultIgnoreCount:I

    goto/16 :goto_fd

    .line 571
    :cond_36
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdResults:[I

    aget p1, p1, v0

    const/16 v3, 0x8

    if-eq p1, v0, :cond_5a

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->twtBeneficial:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 572
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdResults:[I

    aget p1, p1, v3

    if-ne p1, v0, :cond_5a

    :cond_4c
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->twtBeneficial:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 573
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_fd

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdResults:[I

    aget p1, p1, v3

    if-ne p1, v0, :cond_fd

    .line 574
    :cond_5a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdResults:[I

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->twtBeneficial:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    aput v5, p1, v3

    .line 576
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NSD results: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdResults:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Traff. type "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficTypeDetector:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->trafficType:[I

    aget v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Thr "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v1, v4

    aget v5, v2, v4

    add-float/2addr v3, v5

    const/high16 v5, 0x43fa0000    # 500.0f

    div-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x2

    .line 579
    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 582
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdResults:[I

    const/4 v5, 0x4

    aget v5, p1, v5

    const/4 v6, 0x7

    const/4 v7, 0x6

    if-ne v5, v0, :cond_b0

    aget v8, p1, v7

    if-ltz v8, :cond_b0

    .line 584
    sget-object v9, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->LATENCY_REQ_RT:[I

    aget v8, v9, v8

    goto :goto_bf

    :cond_b0
    const/4 v8, 0x5

    .line 585
    aget v8, p1, v8

    if-ne v8, v0, :cond_be

    aget v8, p1, v6

    if-ltz v8, :cond_be

    .line 587
    sget-object v9, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->LATENCY_REQ_NRT:[I

    aget v8, v9, v8

    goto :goto_bf

    :cond_be
    move v8, v4

    :goto_bf
    const/4 v9, 0x3

    .line 592
    aget v9, p1, v9

    if-ne v9, v0, :cond_c8

    .line 594
    aget p1, p1, v7

    move v0, v4

    goto :goto_d0

    :cond_c8
    if-ne v5, v0, :cond_cd

    .line 597
    aget p1, p1, v7

    goto :goto_d0

    .line 600
    :cond_cd
    aget p1, p1, v6

    move v0, v3

    .line 603
    :goto_d0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->Callbacks:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 604
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdResults:[I

    aget v7, v1, v4

    aget v9, v2, v4

    add-float/2addr v7, v9

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v7, v9

    float-to-int v7, v7

    invoke-interface {v5, v6, v8, v7}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;->updatedServiceStats([III)V

    goto :goto_d6

    .line 606
    :cond_f1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdResults:[I

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->updateNetworkServiceDetectionResults([I)V

    .line 607
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->updateServiceType(II)V

    :cond_fd
    :goto_fd
    return-void
.end method

.method private filteringTrafficData([F)[F
    .registers 5

    const/4 p0, 0x0

    .line 537
    aget v0, p1, p0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    aput v0, p1, p0

    const/4 p0, 0x1

    .line 538
    aget v0, p1, p0

    div-float/2addr v0, v1

    aput v0, p1, p0

    const/16 p0, 0xa

    .line 540
    aget v0, p1, p0

    div-float/2addr v0, v1

    aput v0, p1, p0

    const/16 p0, 0xb

    .line 541
    aget v0, p1, p0

    div-float/2addr v0, v1

    aput v0, p1, p0

    .line 543
    array-length p0, p1

    const/16 v0, 0xc

    if-le p0, v0, :cond_27

    .line 544
    aget p0, p1, v0

    div-float/2addr p0, v1

    aput p0, p1, v0

    :cond_27
    const/4 p0, 0x2

    .line 548
    aget p0, p1, p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    const v1, 0x49742400    # 1000000.0f

    if-nez p0, :cond_3b

    const/4 p0, 0x4

    aget v2, p1, p0

    cmpl-float v2, v2, v1

    if-nez v2, :cond_3b

    .line 549
    aput v0, p1, p0

    :cond_3b
    const/4 p0, 0x3

    .line 551
    aget p0, p1, p0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_4c

    const/16 p0, 0x8

    aget v2, p1, p0

    cmpl-float v1, v2, v1

    if-nez v1, :cond_4c

    .line 552
    aput v0, p1, p0

    :cond_4c
    return-object p1
.end method

.method private initializeInternalVariables()V
    .registers 6

    .line 730
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serDetRtResPerSlot:[I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 731
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serDetNrtResPerSlot:[I

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 733
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serCntMs:[I

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    .line 734
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serCntMs:[I

    const/4 v4, 0x7

    aput v4, v0, v3

    .line 736
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serRtCnt:[I

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    .line 737
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serRtCnt:[I

    const/4 v4, 0x5

    aput v4, v0, v1

    .line 739
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serNrtCnt:[I

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    .line 740
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serNrtCnt:[I

    aput v4, v0, v2

    .line 742
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdResults:[I

    aput v3, v0, v1

    const/4 v1, 0x3

    .line 743
    aput v2, v0, v1

    const/16 v0, 0xa

    .line 745
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mInitialResultIgnoreCount:I

    return-void
.end method

.method private initializeServiceInfo()V
    .registers 2

    .line 721
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->initializeServiceType()V

    .line 722
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdResults:[I

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->initializeNetworkServiceDetectionResults([I)V

    return-void
.end method

.method private initializeTrafficTypeDetector()V
    .registers 1

    .line 726
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficTypeDetector:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->resetVariables()V

    return-void
.end method

.method private inputDataToClassifiers(Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;)V
    .registers 5

    .line 502
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->convertTrafficDataToArray(Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;)[F

    move-result-object p1

    .line 503
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->filteringTrafficData([F)[F

    move-result-object p1

    const/16 v0, 0xa

    new-array v1, v0, [F

    const/4 v2, 0x0

    .line 507
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    sget-object p1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mXgbMsL1:Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;

    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->updateInpArrLi([F)V

    .line 510
    sget-object p1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mXgbL2Nrt:Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Nrt;

    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Nrt;->updateInpArrLi([F)V

    .line 511
    sget-object p1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mXgbL2Rt:Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;

    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;->updateInpArrLi([F)V

    .line 513
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DN"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    return-void
.end method

.method private predictL1ServiceType()V
    .registers 8

    .line 781
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mXgbMsL1:Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->predict()[D

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 783
    :goto_8
    array-length v3, v0

    if-ge v2, v3, :cond_19

    .line 784
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serDetResPerSlotMs:[[I

    aget-object v3, v3, v2

    iget v4, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serDetResInd:I

    aget-wide v5, v0, v2

    double-to-int v5, v5

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_19
    move v0, v1

    :goto_1a
    const/4 v2, 0x3

    if-ge v0, v2, :cond_30

    .line 788
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serCntMs:[I

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serDetResPerSlotMs:[[I

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/util/stream/IntStream;->of([I)Ljava/util/stream/IntStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/IntStream;->sum()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 791
    :cond_30
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mXgbMsL1:Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serCntMs:[I

    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->postProcessing([I)[I

    move-result-object v0

    .line 793
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdResults:[I

    aget v4, v0, v1

    aput v4, v3, v2

    const/4 v2, 0x4

    const/4 v4, 0x1

    .line 794
    aget v5, v0, v4

    aput v5, v3, v2

    const/4 v2, 0x5

    const/4 v5, 0x2

    .line 795
    aget v5, v0, v5

    aput v5, v3, v2

    .line 797
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->checkMixedServiceTypeDetection([I)V

    .line 799
    sget-object v2, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->ZERO_ARRAY:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 800
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->prevL1MsDetRes:[I

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 802
    array-length v2, v0

    sub-int/2addr v2, v4

    aput v4, v0, v2

    goto :goto_68

    .line 804
    :cond_62
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->prevL1MsDetRes:[I

    array-length v3, v0

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 808
    :cond_68
    :goto_68
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->prevL1MsDetRes:[I

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 809
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdResults:[I

    aput v1, v2, v4

    goto :goto_79

    .line 811
    :cond_75
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdResults:[I

    aput v4, v2, v4

    .line 813
    :goto_79
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->prevL1MsDetRes:[I

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 815
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serDetResInd:I

    add-int/2addr v0, v4

    rem-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serDetResInd:I

    return-void
.end method

.method private predictL2ServiceType()V
    .registers 7

    .line 819
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serDetRtResPerSlot:[I

    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serDetSubResInd:I

    aget v0, v0, v1

    .line 820
    sget-object v1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mXgbL2Rt:Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;->predict()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    const/4 v1, 0x2

    :cond_10
    const/4 v3, 0x1

    if-ltz v1, :cond_27

    .line 825
    sget-object v4, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mXgbL2Rt:Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;->getNumClass()I

    move-result v4

    if-ge v1, v4, :cond_27

    .line 826
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serRtCnt:[I

    aget v5, v4, v0

    sub-int/2addr v5, v3

    aput v5, v4, v0

    .line 827
    aget v0, v4, v1

    add-int/2addr v0, v3

    aput v0, v4, v1

    .line 830
    :cond_27
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdResults:[I

    const/4 v4, 0x4

    aget v0, v0, v4

    if-ne v0, v3, :cond_3b

    .line 831
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mXgbL2Rt:Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serRtCnt:[I

    invoke-virtual {v0, v4}, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;->postProcessing([I)I

    move-result v0

    .line 832
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdResults:[I

    const/4 v5, 0x6

    aput v0, v4, v5

    .line 835
    :cond_3b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serDetNrtResPerSlot:[I

    iget v4, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serDetSubResInd:I

    aget v0, v0, v4

    .line 836
    sget-object v4, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mXgbL2Nrt:Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Nrt;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Nrt;->predict()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_4c

    const/4 v4, 0x0

    goto :goto_4f

    :cond_4c
    if-ne v4, v2, :cond_4f

    move v4, v3

    :cond_4f
    :goto_4f
    if-ltz v4, :cond_65

    .line 842
    sget-object v2, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mXgbL2Nrt:Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Nrt;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Nrt;->getNumClass()I

    move-result v2

    if-ge v4, v2, :cond_65

    .line 843
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serNrtCnt:[I

    aget v5, v2, v0

    sub-int/2addr v5, v3

    aput v5, v2, v0

    .line 844
    aget v0, v2, v4

    add-int/2addr v0, v3

    aput v0, v2, v4

    .line 847
    :cond_65
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serDetRtResPerSlot:[I

    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serDetSubResInd:I

    aput v1, v0, v2

    .line 848
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serDetNrtResPerSlot:[I

    aput v4, v0, v2

    .line 850
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdResults:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    if-ne v0, v3, :cond_83

    .line 851
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mXgbL2Nrt:Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Nrt;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serNrtCnt:[I

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Nrt;->postProcessing([I)I

    move-result v0

    .line 852
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdResults:[I

    const/4 v4, 0x7

    aput v0, v2, v4

    .line 855
    :cond_83
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serDetSubResInd:I

    add-int/2addr v0, v3

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->serDetSubResInd:I

    return-void
.end method

.method private registerUsageStatsWatcher()V
    .registers 4

    .line 664
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    if-nez v0, :cond_2e

    .line 665
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$4;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    .line 700
    :try_start_f
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    invoke-interface {v1, v0}, Landroid/app/usage/IUsageStatsManager;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    goto :goto_2e

    :catch_15
    move-exception v0

    .line 702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurred while register UsageStatWatcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 703
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2e
    :goto_2e
    return-void
.end method

.method private setWifiScpmExecutorList()V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_14

    .line 164
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->SCPM_CONFIGURATION_LIST:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 165
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->scpmExecutorList:[Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    new-instance v3, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;Ljava/lang/String;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    return-void
.end method

.method private startServiceDetectionPoll()V
    .registers 4

    .line 651
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->removeMessages(I)V

    .line 652
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    .line 653
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 652
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private startTrafficPatternTracker()V
    .registers 5

    .line 621
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficPatternTracker:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    if-eqz v0, :cond_5

    return-void

    .line 625
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mClientIfaceName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/net/module/util/InterfaceParams;->getByName(Ljava/lang/String;)Lcom/android/net/module/util/InterfaceParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->createTrafficPatternTracker(Lcom/android/net/module/util/InterfaceParams;)Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficPatternTracker:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    if-eqz v0, :cond_3a

    .line 627
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->runTimeSleepTimerMs:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->setRunTimeSleepTimer(I)V

    .line 628
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->setTrackerStatus(Z)V

    .line 630
    :try_start_1e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficPatternTracker:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->start()V
    :try_end_23
    .catch Ljava/lang/IllegalStateException; {:try_start_1e .. :try_end_23} :catch_24

    goto :goto_3a

    :catch_24
    move-exception v0

    .line 632
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start tracking : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    return-void

    :cond_3a
    :goto_3a
    const/4 v0, 0x2

    const-string v1, "Traff. tracking started"

    .line 636
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    return-void
.end method

.method private stopTrafficPatternTracker()V
    .registers 3

    .line 640
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficPatternTracker:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    if-nez v0, :cond_5

    return-void

    .line 644
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->setTrackerStatus(Z)V

    .line 645
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficPatternTracker:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->stop()V

    const/4 v0, 0x0

    .line 646
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficPatternTracker:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    const/4 v0, 0x2

    const-string v1, "Traff. tracking stopped"

    .line 647
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    return-void
.end method

.method private unregisterUsageStatsWatcher()V
    .registers 4

    .line 709
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    if-eqz v0, :cond_28

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    if-eqz v1, :cond_28

    .line 711
    :try_start_8
    invoke-interface {v0, v1}, Landroid/app/usage/IUsageStatsManager;->unregisterUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V

    const/4 v0, 0x0

    .line 712
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    goto :goto_28

    :catch_f
    move-exception v0

    .line 714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurred while unregister UsageStatWatcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 715
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_28
    :goto_28
    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;I)V
    .registers 7

    if-nez p2, :cond_c

    .line 864
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mVerboseLoggingEnabled:Z

    if-eqz p0, :cond_b

    const-string p0, "SemWifiServiceDetector"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void

    :cond_c
    const/4 v0, 0x2

    if-ne p2, v0, :cond_15

    const-string p2, "SemWifiServiceDetector"

    .line 867
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_15
    const-string p2, "SemWifiServiceDetector"

    .line 869
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :goto_1a
    :try_start_1a
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    .line 875
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 874
    invoke-virtual {p2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "%s %s"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 876
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_3c
    .catch Ljava/util/IllegalFormatException; {:try_start_1a .. :try_end_3c} :catch_59

    .line 882
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mHistory:Ljava/util/LinkedList;

    monitor-enter p2

    .line 883
    :try_start_3f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 884
    :goto_44
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v0, 0x7d0

    if-le p1, v0, :cond_54

    .line 885
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_44

    .line 887
    :cond_54
    monitor-exit p2

    return-void

    :catchall_56
    move-exception p0

    monitor-exit p2
    :try_end_58
    .catchall {:try_start_3f .. :try_end_58} :catchall_56

    throw p0

    :catch_59
    move-exception p0

    const-string p1, "SemWifiServiceDetector"

    const-string p2, "format problem"

    .line 878
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method checkScpmPolicy(Ljava/io/FileInputStream;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, ","

    const-string v3, " "

    const-string v4, "SCPM: descriptor & stream close failure"

    const/4 v5, 0x1

    if-nez v0, :cond_13

    const-string v0, "SCPM: null ifs"

    .line 912
    invoke-virtual {v1, v0, v5}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    return-void

    :cond_13
    const/4 v6, 0x0

    .line 919
    :try_start_14
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_2b3

    .line 920
    :try_start_19
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_2af

    .line 925
    :try_start_23
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_39

    const-string v0, "SCPM: empty data"

    .line 927
    invoke-virtual {v1, v0, v5}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_2ad

    .line 1021
    :try_start_2e
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 1022
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_35

    goto :goto_38

    .line 1024
    :catchall_35
    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    :goto_38
    return-void

    .line 930
    :cond_39
    :try_start_39
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 931
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29d

    .line 932
    array-length v6, v0

    const/4 v9, 0x2

    if-ne v6, v9, :cond_29d

    .line 933
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SCPM policy version: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    aget-object v11, v0, v10

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v9}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    const/16 v0, 0x2710

    .line 939
    iput v0, v1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdSuspensionThresholdHigh:I

    const/4 v0, 0x5

    .line 940
    iput v0, v1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdSuspensionThresholdLow:I

    const/16 v6, 0x3c

    .line 942
    iput v6, v1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->wakeDurationThresholdPercent:I

    const/16 v6, 0x32

    .line 943
    iput v6, v1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->runTimeSleepTimerMs:I

    const/4 v6, 0x4

    new-array v11, v6, [I

    aput v10, v11, v10

    const/4 v12, 0x3

    aput v12, v11, v5

    aput v12, v11, v9

    aput v0, v11, v12

    new-array v13, v12, [I

    aput v10, v13, v10

    aput v12, v13, v5

    aput v12, v13, v9

    new-array v14, v6, [I

    aput v10, v14, v10

    aput v9, v14, v5

    aput v12, v14, v9

    aput v12, v14, v12

    .line 949
    :cond_9b
    :goto_9b
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_296

    .line 950
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 951
    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_9b

    .line 953
    array-length v0, v15

    if-ge v0, v12, :cond_b0

    const/4 v0, 0x5

    goto :goto_9b

    :cond_b0
    const-string v0, "Parameter"

    .line 957
    aget-object v16, v15, v10

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_292

    .line 958
    aget-object v0, v15, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 959
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_2ec

    goto :goto_fe

    :sswitch_cc
    const-string v10, "SUSPENSION_THRESHOLD"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fe

    const/4 v0, 0x0

    goto :goto_ff

    :sswitch_d6
    const-string v10, "L2_RT_PARAMETER"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fe

    move v0, v12

    goto :goto_ff

    :sswitch_e0
    const-string v10, "L2_NRT_PARAMETER"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fe

    move v0, v6

    goto :goto_ff

    :sswitch_ea
    const-string v10, "LEGACY_WAKE_TIME_MONITORING_PARAMETER"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fe

    move v0, v5

    goto :goto_ff

    :sswitch_f4
    const-string v10, "L1_PARAMETER"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fe

    move v0, v9

    goto :goto_ff

    :cond_fe
    :goto_fe
    const/4 v0, -0x1

    :goto_ff
    if-eqz v0, :cond_259

    if-eq v0, v5, :cond_218

    const/4 v10, 0x6

    if-eq v0, v9, :cond_1a8

    if-eq v0, v12, :cond_160

    if-eq v0, v6, :cond_10c

    goto/16 :goto_292

    .line 1003
    :cond_10c
    array-length v0, v15

    if-lt v0, v10, :cond_292

    .line 1004
    aget-object v0, v15, v9

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v10, 0x0

    aput v0, v14, v10

    .line 1005
    aget-object v0, v15, v12

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v14, v5

    .line 1006
    aget-object v0, v15, v6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v14, v9

    const/4 v0, 0x5

    .line 1007
    aget-object v10, v15, v0

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v14, v12

    .line 1008
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mXgbL2Nrt:Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Nrt;

    invoke-virtual {v0, v14}, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Nrt;->setPpParams([I)V

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SCPM L2 NRT parameter: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v9}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    goto/16 :goto_292

    .line 994
    :cond_160
    array-length v0, v15

    const/4 v10, 0x5

    if-lt v0, v10, :cond_292

    .line 995
    aget-object v0, v15, v9

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v10, 0x0

    aput v0, v13, v10

    .line 996
    aget-object v0, v15, v12

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v13, v5

    .line 997
    aget-object v0, v15, v6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v13, v9

    .line 998
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mXgbL2Rt:Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;

    invoke-virtual {v0, v13}, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;->setPpParams([I)V

    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SCPM L2 RT parameter: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v9}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    goto/16 :goto_292

    .line 980
    :cond_1a8
    array-length v0, v15

    const/4 v10, 0x7

    if-lt v0, v10, :cond_292

    .line 981
    aget-object v0, v15, v9

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v10, 0x0

    aput v0, v11, v10

    .line 982
    aget-object v0, v15, v12

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v11, v5

    .line 983
    aget-object v0, v15, v6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v11, v9

    const/4 v0, 0x5

    .line 984
    aget-object v17, v15, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    aput v17, v11, v12

    .line 985
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mXgbMsL1:Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;

    invoke-virtual {v0, v11}, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->setPpParams([I)V

    const/4 v0, 0x6

    .line 987
    aget-object v0, v15, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1f2

    move v0, v10

    goto :goto_1f3

    :cond_1f2
    move v0, v5

    .line 988
    :goto_1f3
    sget-object v15, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mXgbMsL1:Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;

    invoke-virtual {v15, v0}, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->setRunNrtModel(Z)V

    .line 989
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SCPM L1 parameter: "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v9}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    goto/16 :goto_292

    .line 969
    :cond_218
    array-length v0, v15

    if-lt v0, v6, :cond_292

    .line 970
    aget-object v0, v15, v9

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->wakeDurationThresholdPercent:I

    .line 971
    aget-object v0, v15, v12

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->runTimeSleepTimerMs:I

    .line 972
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficPatternTracker:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    if-eqz v10, :cond_23a

    .line 973
    invoke-virtual {v10, v0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->setRunTimeSleepTimer(I)V

    .line 975
    :cond_23a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SCPM NSD legacy wake time monitoring parameter: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->wakeDurationThresholdPercent:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->runTimeSleepTimerMs:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v9}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    goto :goto_292

    .line 961
    :cond_259
    array-length v0, v15

    if-lt v0, v6, :cond_292

    .line 962
    aget-object v0, v15, v9

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdSuspensionThresholdHigh:I

    .line 963
    aget-object v0, v15, v12

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdSuspensionThresholdLow:I

    .line 964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SCPM NSD suspension parameter: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdSuspensionThresholdHigh:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->nsdSuspensionThresholdLow:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v9}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V
    :try_end_292
    .catchall {:try_start_39 .. :try_end_292} :catchall_2ad

    :cond_292
    :goto_292
    const/4 v0, 0x5

    const/4 v10, 0x0

    goto/16 :goto_9b

    .line 1021
    :cond_296
    :try_start_296
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 1022
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_29c
    .catchall {:try_start_296 .. :try_end_29c} :catchall_2d8

    goto :goto_2db

    :cond_29d
    :try_start_29d
    const-string v0, "SCPM: wrong policy format"

    .line 935
    invoke-virtual {v1, v0, v5}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V
    :try_end_2a2
    .catchall {:try_start_29d .. :try_end_2a2} :catchall_2ad

    .line 1021
    :try_start_2a2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 1022
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_2a8
    .catchall {:try_start_2a2 .. :try_end_2a8} :catchall_2a9

    goto :goto_2ac

    .line 1024
    :catchall_2a9
    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    :goto_2ac
    return-void

    :catchall_2ad
    move-exception v0

    goto :goto_2b1

    :catchall_2af
    move-exception v0

    move-object v8, v6

    :goto_2b1
    move-object v6, v7

    goto :goto_2b5

    :catchall_2b3
    move-exception v0

    move-object v8, v6

    .line 1018
    :goto_2b5
    :try_start_2b5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCPM: policy query failure "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V
    :try_end_2cd
    .catchall {:try_start_2b5 .. :try_end_2cd} :catchall_2dc

    if-eqz v8, :cond_2d2

    .line 1021
    :try_start_2cf
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    :cond_2d2
    if-eqz v6, :cond_2db

    .line 1022
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_2d7
    .catchall {:try_start_2cf .. :try_end_2d7} :catchall_2d8

    goto :goto_2db

    .line 1024
    :catchall_2d8
    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    :cond_2db
    :goto_2db
    return-void

    :catchall_2dc
    move-exception v0

    if-eqz v8, :cond_2e2

    .line 1021
    :try_start_2df
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    :cond_2e2
    if-eqz v6, :cond_2eb

    .line 1022
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_2e7
    .catchall {:try_start_2df .. :try_end_2e7} :catchall_2e8

    goto :goto_2eb

    .line 1024
    :catchall_2e8
    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 1026
    :cond_2eb
    :goto_2eb
    throw v0

    :sswitch_data_2ec
    .sparse-switch
        -0x75a4f2d1 -> :sswitch_f4
        -0x53195d21 -> :sswitch_ea
        0x152bca01 -> :sswitch_e0
        0x60ddb405 -> :sswitch_d6
        0x6d987a69 -> :sswitch_cc
    .end sparse-switch
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 899
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mHistory:Ljava/util/LinkedList;

    monitor-enter v0

    .line 900
    :try_start_3
    new-instance v1, Ljava/util/LinkedList;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mHistory:Ljava/util/LinkedList;

    invoke-direct {v1, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 901
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2b

    const-string p0, "SemWifiServiceDetector history:"

    .line 902
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 903
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 904
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14

    .line 906
    :cond_24
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 907
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :catchall_2b
    move-exception p0

    .line 901
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public enableVerboseLogging(I)V
    .registers 3

    if-lez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 657
    :goto_5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mVerboseLoggingEnabled:Z

    .line 658
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficTypeDetector:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;

    if-eqz p0, :cond_e

    .line 659
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->enableVerboseLogging(I)V

    :cond_e
    return-void
.end method

.method public getFeatureEnabled()Z
    .registers 1

    .line 205
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mIsFeatureEnabled:Z

    return p0
.end method

.method public getModelCount()I
    .registers 1

    const/4 p0, 0x6

    return p0
.end method

.method public getScpmExecutorList()[Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;
    .registers 1

    .line 201
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->scpmExecutorList:[Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    return-object p0
.end method

.method getSemServiceInfo()Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;
    .registers 1

    .line 859
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    return-object p0
.end method

.method public handleLazyBootCompleted(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V
    .registers 3

    .line 324
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->isWifiOptimizerSupported()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->isTwtSupported()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mIsFeatureEnabled:Z

    if-eqz p1, :cond_30

    .line 326
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    const/4 v0, 0x6

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 327
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 328
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 329
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    .line 330
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_30
    return-void
.end method

.method public onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .registers 3

    .line 301
    iget-boolean p2, p2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    if-eqz p2, :cond_2c

    .line 302
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->ifaces:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    invoke-interface {p2}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->getPrimaryInterfaceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4d

    .line 304
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mClientIfaceName:Ljava/lang/String;

    .line 305
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 306
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mIsFeatureEnabled:Z

    if-eqz p1, :cond_4d

    .line 307
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    .line 308
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4d

    .line 312
    :cond_2c
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->ifaces:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 313
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mClientIfaceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 314
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 315
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mIsFeatureEnabled:Z

    if-eqz p1, :cond_4d

    .line 316
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    const/4 p1, 0x4

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    .line 317
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_4d
    :goto_4d
    return-void
.end method

.method public registerCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;)V
    .registers 3

    if-eqz p1, :cond_d

    .line 223
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    const/4 v0, 0x7

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 224
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 221
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method sendInternalMessage(IIILjava/lang/Object;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 893
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 894
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;)V
    .registers 3

    if-eqz p1, :cond_e

    .line 231
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    const/16 v0, 0x8

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 232
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 229
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
