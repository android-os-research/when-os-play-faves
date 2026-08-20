.class public Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;
.super Lcom/android/internal/util/StateMachine;
.source "SemWifiLeakyApDetector.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/ClientModeStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;,
        Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;,
        Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;,
        Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;,
        Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;,
        Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;,
        Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DefaultState;
    }
.end annotation


# static fields
.field private static final ACTIVE_DETECTION_DURATION_US:I = 0x1800

.field private static final CMD_DETERMINED:I = 0xb

.field private static final CMD_END_PASSIVE_DETECTION:I = 0xf

.field private static final CMD_NOT_DETERMINED:I = 0xc

.field private static final CMD_SET_GRACE_PERIOD:I = 0x10

.field private static final CMD_START_ACTIVE_DETECTION:I = 0xd

.field private static final CMD_START_PASSIVE_DETECTION:I = 0xe

.field private static final CMD_UPDATE_LEAKY_AP_DETECTION_RESULT:I = 0x11

.field private static DBG:Z = false

.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0xc8

.field private static final DUMP_ARG:Ljava/lang/String; = "SemWifiLeakyApDetector history:"

.field private static final EVENT_HIGH_RSSI:I = 0x7

.field private static final EVENT_LEAKY_AP_DETECTION:I = 0x8

.field private static final EVENT_LOW_RSSI:I = 0x6

.field private static final EVENT_NETWORK_CONNECTED:I = 0x1

.field private static final EVENT_NETWORK_DISCONNECTED:I = 0x3

.field private static final EVENT_ROAM_CONNECT:I = 0x2

.field private static final EVENT_SCREEN_OFF:I = 0x5

.field private static final EVENT_SCREEN_ON:I = 0x4

.field private static final FAILURE_DUE_TO_BUSY:I = -0xa

.field private static final FAILURE_DUE_TO_FIRMWARE_UNINITIALIZED:I = -0x2

.field private static final FAILURE_DUE_TO_INVALID_ARGS:I = -0x5

.field private static final FAILURE_DUE_TO_IP_ADDRESS_EMPTY:I = -0xb

.field private static final FAILURE_DUE_TO_NOT_AVAILABLE:I = -0x4

.field private static final FAILURE_DUE_TO_NOT_SUPPORTED:I = -0x3

.field private static final FAILURE_DUE_TO_OTHER_REASON:I = -0x1

.field private static final GRACE_PERIOD_US:I = 0x400

.field private static final LEAKY_AP_DETECTION_THRESHOLD:I = 0x3

.field private static final MAX_DATA_SIZE:I = 0xc8

.field private static final PASSIVE_DETECTION_DURATION_US:I = 0x1800

.field private static final RETRY_TIMEOUT_MS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "SemWifiLeakyApDetector"


# instance fields
.field private mActiveDetectionCnt:I

.field private final mActiveDetectionState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;

.field mContext:Landroid/content/Context;

.field private final mControlHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DefaultState;

.field private final mDetectionResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeterminedState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;

.field private final mDisconnectedState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;

.field private mIfaceName:Ljava/lang/String;

.field private mIsConnected:Z

.field private mIsFeatureSupported:Z

.field private mIsInternalUT:Z

.field private mIsScreenOn:Z

.field private mLeakyDetectionCntDuringPmSession:I

.field private final mNotDeterminedState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;

.field private mPassiveDetectionCnt:I

.field private final mPassiveDetectionState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;


# direct methods
.method public static synthetic $r8$lambda$Ndq4UL2o9tDNH6JeAfD5qpGJEAo(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->lambda$new$0(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActiveDetectionCnt(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mActiveDetectionCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmActiveDetectionState(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mActiveDetectionState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeterminedState(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDeterminedState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisconnectedState(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDisconnectedState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFeatureSupported(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsFeatureSupported:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsInternalUT(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsInternalUT:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsScreenOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLeakyDetectionCntDuringPmSession(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mLeakyDetectionCntDuringPmSession:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotDeterminedState(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mNotDeterminedState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPassiveDetectionCnt(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mPassiveDetectionCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPassiveDetectionState(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mPassiveDetectionState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmActiveDetectionCnt(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mActiveDetectionCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLeakyDetectionCntDuringPmSession(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mLeakyDetectionCntDuringPmSession:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPassiveDetectionCnt(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mPassiveDetectionCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoActiveDetection(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)I
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->doActiveDetection()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mendPassiveDetection(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)I
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->endPassiveDetection()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$meventToString(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->eventToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetLeakyApDetectionResult(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Landroid/net/wifi/WifiInfo;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->getLeakyApDetectionResult(Landroid/net/wifi/WifiInfo;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitializeVariables(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->initializeVariables()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->logControlHistory(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetGracePeriod(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)I
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->setGracePeriod()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartPassiveDetection(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)I
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->startPassiveDetection()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateDetectionResult(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Ljava/lang/String;Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->updateDetectionResult(Ljava/lang/String;Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLeakyDetectionCount(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->updateLeakyDetectionCount()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->DBG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 48
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->DBG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .registers 10

    const-string v0, "SemWifiLeakyApDetector"

    .line 104
    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mControlHistory:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mActiveDetectionCnt:I

    .line 55
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mPassiveDetectionCnt:I

    .line 56
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mLeakyDetectionCntDuringPmSession:I

    .line 58
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsFeatureSupported:Z

    .line 59
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsInternalUT:Z

    const/4 v1, 0x1

    .line 60
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsScreenOn:Z

    .line 61
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsConnected:Z

    .line 95
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DefaultState;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DefaultState;-><init>(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDefaultState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DefaultState;

    .line 96
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;-><init>(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDisconnectedState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;

    .line 97
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;-><init>(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDeterminedState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;

    .line 98
    new-instance v3, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;

    invoke-direct {v3, p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;-><init>(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)V

    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mNotDeterminedState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;

    .line 99
    new-instance v4, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;

    invoke-direct {v4, p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;-><init>(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)V

    iput-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mActiveDetectionState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;

    .line 100
    new-instance v5, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;

    invoke-direct {v5, p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;-><init>(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)V

    iput-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mPassiveDetectionState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;

    .line 681
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionResult:Ljava/util/HashMap;

    .line 106
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mContext:Landroid/content/Context;

    .line 107
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 108
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 110
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->addState(Lcom/android/internal/util/State;)V

    .line 111
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 112
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 113
    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 114
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 115
    invoke-virtual {p0, v5, v3}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 117
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->setInitialState(Lcom/android/internal/util/State;)V

    .line 121
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->removeMessages(I)V

    return-void
.end method

.method private checkIfIssueTrackerIsRunning()Z
    .registers 3

    .line 528
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    .line 529
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_39

    .line 533
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_39

    .line 535
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 536
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v1, "com.salab.issuetracker"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 537
    sget-boolean p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->DBG:Z

    if-eqz p0, :cond_37

    const-string p0, "SemWifiLeakyApDetector"

    const-string v0, "IssueTracker is installed"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    const/4 p0, 0x1

    return p0

    :cond_39
    const/4 p0, 0x0

    return p0
.end method

.method private checkIfScheduledPmIsSupported(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)Z
    .registers 2

    const/4 p0, 0x0

    if-eqz p1, :cond_a

    .line 521
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->getScheduledPmFeature()I

    move-result p1

    if-lez p1, :cond_a

    const/4 p0, 0x1

    :cond_a
    return p0
.end method

.method private convertHexStringToMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 608
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 609
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_9
    const/4 v1, 0x3

    if-lt v0, v1, :cond_22

    add-int/lit8 v2, v0, -0x2

    .line 610
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

    .line 612
    :cond_22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private convertIntegerToFourDigitsFormat(I)Ljava/lang/String;
    .registers 4

    .line 474
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

.method private doActiveDetection()I
    .registers 5

    .line 460
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 462
    iget v1, v0, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->convertIntegerToFourDigitsFormat(I)Ljava/lang/String;

    move-result-object v1

    .line 463
    iget v0, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->convertIntegerToFourDigitsFormat(I)Ljava/lang/String;

    move-result-object v0

    .line 465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x1800

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 466
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->doLeakyApActiveDetection(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_3a
    const-string v0, "dhcpInfo is invalid"

    .line 468
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->logControlHistory(Ljava/lang/String;)V

    const/16 p0, -0xb

    return p0
.end method

.method private endPassiveDetection()I
    .registers 2

    .line 484
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->endLeakyApPassiveDetection(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private eventToString(I)Ljava/lang/String;
    .registers 3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_43

    const/4 p0, 0x2

    if-eq p1, p0, :cond_40

    const/4 p0, 0x3

    if-eq p1, p0, :cond_3d

    const/4 p0, 0x4

    if-eq p1, p0, :cond_3a

    const/4 p0, 0x5

    if-eq p1, p0, :cond_37

    const/16 p0, 0x8

    if-eq p1, p0, :cond_34

    packed-switch p1, :pswitch_data_46

    .line 662
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown event: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_45

    :pswitch_28
    const-string p0, "CMD_SET_GRACE_PERIOD"

    goto :goto_45

    :pswitch_2b
    const-string p0, "CMD_END_PASSIVE_DETECTION"

    goto :goto_45

    :pswitch_2e
    const-string p0, "CMD_START_PASSIVE_DETECTION"

    goto :goto_45

    :pswitch_31
    const-string p0, "CMD_START_ACTIVE_DETECTION"

    goto :goto_45

    :cond_34
    const-string p0, "EVENT_LEAKY_AP_DETECTION"

    goto :goto_45

    :cond_37
    const-string p0, "EVENT_SCREEN_OFF"

    goto :goto_45

    :cond_3a
    const-string p0, "EVENT_SCREEN_ON"

    goto :goto_45

    :cond_3d
    const-string p0, "EVENT_NETWORK_DISCONNECTED"

    goto :goto_45

    :cond_40
    const-string p0, "EVENT_ROAM_CONNECT"

    goto :goto_45

    :cond_43
    const-string p0, "EVENT_NETWORK_CONNECTED"

    :goto_45
    return-object p0

    :pswitch_data_46
    .packed-switch 0xd
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
    .end packed-switch
.end method

.method private getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 1

    .line 499
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object p0

    return-object p0
.end method

.method private getInformationElements(Landroid/net/wifi/WifiInfo;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;"
        }
    .end annotation

    .line 591
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p0

    .line 592
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getScanPoll()Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object p1

    .line 593
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->getLastScanResults()Ljava/util/List;

    move-result-object p1

    if-eqz p0, :cond_35

    .line 596
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_35

    .line 597
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 598
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 599
    invoke-virtual {v0}, Landroid/net/wifi/ScanResult;->getInformationElements()Ljava/util/List;

    move-result-object p0

    goto :goto_36

    :cond_35
    const/4 p0, 0x0

    :goto_36
    return-object p0
.end method

.method private getLeakyApDetectionResult(Landroid/net/wifi/WifiInfo;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;
    .registers 5

    .line 547
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;-><init>()V

    .line 548
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->detectedTime:J

    .line 550
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->bssid:Ljava/lang/String;

    .line 551
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->frequency:I

    .line 552
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->getApChipsetOuiFromVsie(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->chipsetOui:Ljava/lang/String;

    .line 554
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mActiveDetectionCnt:I

    iput p1, v0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->activeDetectionCnt:I

    .line 555
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mPassiveDetectionCnt:I

    iput p1, v0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->passiveDetectionCnt:I

    .line 556
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mLeakyDetectionCntDuringPmSession:I

    iput p0, v0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->sessionDetectionCnt:I

    return-object v0
.end method

.method private hasDetectionResult(Ljava/lang/String;)Z
    .registers 2

    .line 733
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionResult:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private initializeVariables()V
    .registers 2

    const/4 v0, 0x0

    .line 493
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mActiveDetectionCnt:I

    .line 494
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mPassiveDetectionCnt:I

    .line 495
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mLeakyDetectionCntDuringPmSession:I

    return-void
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 2

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    .line 123
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsScreenOn:Z

    const/4 p1, 0x4

    .line 124
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->sendMessage(I)V

    goto :goto_11

    :cond_a
    const/4 p1, 0x0

    .line 126
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsScreenOn:Z

    const/4 p1, 0x5

    .line 127
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->sendMessage(I)V

    :goto_11
    return-void
.end method

.method private logControlHistory(Ljava/lang/String;)V
    .registers 6

    const-string v0, "SemWifiLeakyApDetector"

    .line 616
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS "

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    .line 619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 620
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mControlHistory:Ljava/util/LinkedList;

    monitor-enter v1

    .line 621
    :try_start_1e
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mControlHistory:Ljava/util/LinkedList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 622
    :goto_32
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mControlHistory:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v0, 0xc8

    if-le p1, v0, :cond_42

    .line 623
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mControlHistory:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_32

    .line 625
    :cond_42
    monitor-exit v1

    return-void

    :catchall_44
    move-exception p0

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_1e .. :try_end_46} :catchall_44

    throw p0
.end method

.method public static makeWifiLeakyApDetector(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;
    .registers 3

    .line 134
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    .line 135
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->start()V

    .line 137
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getClientModeManager()Lcom/samsung/android/server/wifi/SemClientModeManager;

    move-result-object p0

    .line 138
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerClientModeStateListener(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    return-object v0
.end method

.method private setGracePeriod()I
    .registers 3

    .line 489
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIfaceName:Ljava/lang/String;

    const-string v1, " 1024"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setLeakyApGracePeriod(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private startPassiveDetection()I
    .registers 3

    .line 480
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIfaceName:Ljava/lang/String;

    const-string v1, " 6144"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->startLeakyApPassiveDetection(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private updateDetectionResult(Ljava/lang/String;Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;)V
    .registers 10

    .line 705
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionResult:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionResult:Ljava/util/HashMap;

    .line 706
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_42

    const/4 v0, 0x0

    .line 709
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionResult:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 710
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;

    if-eqz v0, :cond_39

    .line 711
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->detectedTime:J

    iget-wide v5, v2, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->detectedTime:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_1d

    :cond_39
    move-object v0, v2

    goto :goto_1d

    .line 715
    :cond_3b
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionResult:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->bssid:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    :cond_42
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionResult:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updateLeakyDetectionCount()V
    .registers 4

    .line 721
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 723
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 724
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionResult:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 725
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionResult:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;

    .line 726
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mLeakyDetectionCntDuringPmSession:I

    iput v2, v1, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->sessionDetectionCnt:I

    .line 727
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionResult:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    return-void
.end method


# virtual methods
.method public dongleRoamEvent()V
    .registers 2

    const/4 v0, 0x2

    .line 503
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->sendMessage(I)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 670
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mControlHistory:Ljava/util/LinkedList;

    monitor-enter v0

    .line 671
    :try_start_3
    new-instance v1, Ljava/util/LinkedList;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mControlHistory:Ljava/util/LinkedList;

    invoke-direct {v1, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 672
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2b

    const-string p0, "SemWifiLeakyApDetector history:"

    .line 673
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 674
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 675
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14

    .line 677
    :cond_24
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 678
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :catchall_2b
    move-exception p0

    .line 672
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public getApChipsetOuiFromVsie(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .registers 8

    .line 562
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->getInformationElements(Landroid/net/wifi/WifiInfo;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_87

    .line 563
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_e

    goto/16 :goto_87

    .line 567
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_74

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult$InformationElement;

    .line 569
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult$InformationElement;->getId()I

    move-result v3

    const/16 v4, 0xdd

    if-ne v3, v4, :cond_17

    .line 572
    :try_start_2c
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-string v4, "%02X"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 573
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 574
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x7

    if-ne v2, v4, :cond_17

    .line 575
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->convertHexStringToMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 576
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5c
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2c .. :try_end_5c} :catch_5d

    goto :goto_17

    .line 579
    :catch_5d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BufferUnderflowException ie:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWifiLeakyApDetector"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 584
    :cond_74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_82

    .line 585
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 587
    :cond_82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_87
    :goto_87
    const-string p0, ""

    return-object p0
.end method

.method public handleLazyBootCompleted(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V
    .registers 2

    .line 511
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->checkIfScheduledPmIsSupported(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsFeatureSupported:Z

    .line 512
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->checkIfIssueTrackerIsRunning()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsInternalUT:Z

    if-eqz p1, :cond_1a

    .line 514
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsFeatureSupported:Z

    if-eqz p1, :cond_1a

    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsConnected:Z

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    .line 515
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->sendMessage(I)V

    :cond_1a
    return-void
.end method

.method public leakyApDetectionEvent()V
    .registers 2

    const/16 v0, 0x8

    .line 507
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->sendMessage(I)V

    return-void
.end method

.method public onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .registers 3

    if-eqz p1, :cond_17

    .line 145
    iget-boolean p2, p2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    if-eqz p2, :cond_f

    const/4 p2, 0x1

    .line 146
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsConnected:Z

    .line 147
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIfaceName:Ljava/lang/String;

    .line 148
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->sendMessage(ILjava/lang/Object;)V

    goto :goto_2f

    :cond_f
    const/4 p2, 0x0

    .line 150
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsConnected:Z

    const/4 p2, 0x3

    .line 151
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->sendMessage(ILjava/lang/Object;)V

    goto :goto_2f

    .line 154
    :cond_17
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ifaceName is null, isConnected "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiLeakyApDetector"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    return-void
.end method
