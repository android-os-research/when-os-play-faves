.class public Lcom/android/internal/telephony/data/DataNetwork;
.super Lcom/android/internal/telephony/StateMachine;
.source "DataNetwork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;,
        Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;,
        Lcom/android/internal/telephony/data/DataNetwork$HandoverState;,
        Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;,
        Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;,
        Lcom/android/internal/telephony/data/DataNetwork$DefaultState;,
        Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;,
        Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;
    }
.end annotation


# static fields
.field public static final blacklist BANDWIDTH_SOURCE_BANDWIDTH_ESTIMATOR:I = 0x3

.field public static final blacklist BANDWIDTH_SOURCE_CARRIER_CONFIG:I = 0x2

.field public static final blacklist BANDWIDTH_SOURCE_MODEM:I = 0x1

.field public static final blacklist BANDWIDTH_SOURCE_UNKNOWN:I = 0x0

.field private static final blacklist MUTABLE_CAPABILITIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TEAR_DOWN_REASON_AIRPLANE_MODE_ON:I = 0x3

.field public static final blacklist TEAR_DOWN_REASON_CDMA_EMERGENCY_CALLBACK_MODE:I = 0x16

.field public static final blacklist TEAR_DOWN_REASON_CONCURRENT_VOICE_DATA_NOT_ALLOWED:I = 0x8

.field public static final blacklist TEAR_DOWN_REASON_CONNECTIVITY_SERVICE_UNWANTED:I = 0x1

.field public static final blacklist TEAR_DOWN_REASON_DATA_CONFIG_NOT_READY:I = 0x13

.field public static final blacklist TEAR_DOWN_REASON_DATA_DISABLED:I = 0x4

.field public static final blacklist TEAR_DOWN_REASON_DATA_PROFILE_INVALID:I = 0x19

.field public static final blacklist TEAR_DOWN_REASON_DATA_PROFILE_NOT_PREFERRED:I = 0x1a

.field public static final blacklist TEAR_DOWN_REASON_DATA_SERVICE_NOT_READY:I = 0xa

.field public static final blacklist TEAR_DOWN_REASON_DATA_STALL:I = 0xc

.field public static final blacklist TEAR_DOWN_REASON_DATA_THROTTLED:I = 0x18

.field public static final blacklist TEAR_DOWN_REASON_DEFAULT_DATA_UNSELECTED:I = 0x11

.field public static final blacklist TEAR_DOWN_REASON_HANDOVER_FAILED:I = 0xd

.field public static final blacklist TEAR_DOWN_REASON_HANDOVER_NOT_ALLOWED:I = 0xe

.field public static final blacklist TEAR_DOWN_REASON_ILLEGAL_STATE:I = 0x1c

.field public static final blacklist TEAR_DOWN_REASON_NOT_ALLOWED_BY_POLICY:I = 0x1b

.field public static final blacklist TEAR_DOWN_REASON_NOT_IN_SERVICE:I = 0x12

.field public static final blacklist TEAR_DOWN_REASON_NO_LIVE_REQUEST:I = 0x5

.field public static final blacklist TEAR_DOWN_REASON_NO_SUITABLE_DATA_PROFILE:I = 0x15

.field public static final blacklist TEAR_DOWN_REASON_ONLY_ALLOWED_SINGLE_NETWORK:I = 0x1d

.field public static final blacklist TEAR_DOWN_REASON_PENDING_TEAR_DOWN_ALL:I = 0x14

.field public static final blacklist TEAR_DOWN_REASON_POWER_OFF_BY_CARRIER:I = 0xb

.field public static final blacklist TEAR_DOWN_REASON_PREFERRED_DATA_SWITCHED:I = 0x1e

.field public static final blacklist TEAR_DOWN_REASON_RAT_NOT_ALLOWED:I = 0x6

.field public static final blacklist TEAR_DOWN_REASON_RETRY_SCHEDULED:I = 0x17

.field public static final blacklist TEAR_DOWN_REASON_ROAMING_DISABLED:I = 0x7

.field public static final blacklist TEAR_DOWN_REASON_SIM_REMOVAL:I = 0x2

.field public static final blacklist TEAR_DOWN_REASON_VCN_REQUESTED:I = 0xf

.field public static final blacklist TEAR_DOWN_REASON_VOPS_NOT_SUPPORTED:I = 0x10


# instance fields
.field private final blacklist mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

.field private blacklist mAdministratorUids:[I

.field private final blacklist mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

.field private blacklist mCarrierServicePackageUid:I

.field private final blacklist mCid:Landroid/util/SparseIntArray;

.field private blacklist mCongested:Z

.field private final blacklist mConnectedState:Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;

.field private final blacklist mConnectingState:Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;

.field private blacklist mDataAllowedReason:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

.field private blacklist mDataCallResponse:Landroid/telephony/data/DataCallResponse;

.field private final blacklist mDataCallSessionStats:Lcom/android/internal/telephony/metrics/DataCallSessionStats;

.field private final blacklist mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

.field private final blacklist mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

.field private final blacklist mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

.field private blacklist mDataProfile:Landroid/telephony/data/DataProfile;

.field private final blacklist mDataServiceManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/data/DataServiceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDefaultState:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

.field private final blacklist mDisconnectedState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

.field private final blacklist mDisconnectingState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;

.field private blacklist mEverConnected:Z

.field private blacklist mFailCause:I

.field private blacklist mHandoverDataProfile:Landroid/telephony/data/DataProfile;

.field private final blacklist mHandoverState:Lcom/android/internal/telephony/data/DataNetwork$HandoverState;

.field private blacklist mInitialNetworkAgentId:I

.field private blacklist mInvokedDataDeactivation:Z

.field private blacklist mKeepaliveTracker:Lcom/android/internal/telephony/data/KeepaliveTracker;

.field private blacklist mLinkBandwidthEstimatorCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

.field private blacklist mLinkProperties:Landroid/net/LinkProperties;

.field private blacklist mLinkStatus:I

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mLogTag:Ljava/lang/String;

.field private blacklist mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

.field private blacklist mNetworkBandwidth:Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

.field private blacklist mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private blacklist mNetworkScore:I

.field private blacklist mNetworkSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

.field private final blacklist mPcoData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/PcoData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPduSessionId:I

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mQosBearerSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mQosCallbackTracker:Lcom/android/internal/telephony/data/QosCallbackTracker;

.field private blacklist mRetryDelayMillis:J

.field private final blacklist mRil:Lcom/android/internal/telephony/CommandsInterface;

.field private final blacklist mSubId:I

.field private blacklist mSuspended:Z

.field private blacklist mTcpBufferSizes:Ljava/lang/String;

.field private blacklist mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

.field private blacklist mTempNotMetered:Z

.field private blacklist mTempNotMeteredSupported:Z

.field private final blacklist mTrafficDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTransport:I

.field private final blacklist mVcnManager:Landroid/net/vcn/VcnManager;

.field private blacklist mVcnPolicyChangeListener:Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$6gITRHuuike2RfrFLSFZ2JI8SnA(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$updateSuspendState$5()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ALTV-1RRaiRLCQvSgIRS3OG1MB4(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$onPcoDataReceived$12()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$IKQK1VVDj1wJCO5ObLjEdlke6-w(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$onAttachNetworkRequests$0(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Ntb9qt2_0AFc_CbLQ-1dpQsbrjM(Ljava/lang/Integer;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$updateNetworkCapabilities$2(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$PlpbfLThzmDqkjaYKl9fRogxQpk(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$updateNetworkCapabilities$4()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Ubr8k8tZ5l0hV5IbEsIVYy85Pfc(Lcom/android/internal/telephony/data/DataNetwork;Landroid/telephony/data/DataCallResponse;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$onDataStateChanged$8(Landroid/telephony/data/DataCallResponse;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$YOJhmSiJSwAvO5yhwUZXquA8MbQ(Ljava/lang/Integer;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$getApnTypeNetworkCapability$9(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$_GFLyevUz81O2T01vmCQB2kblxY(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$onHandoverResponse$10()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dwRkYI7LpD1PZk5GlgbtqK5p5OM(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$tearDownWhenConditionMet$7(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fvOYrv1FxHe_pBGTTfwFMXMJA50(Landroid/net/LinkAddress;)Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$isLinkPropertiesCompatible$1(Landroid/net/LinkAddress;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$krB4Tj8D_XCsoRQ1XNgyxsHLky0(Lcom/android/internal/telephony/data/DataNetwork;JI)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$onHandoverResponse$11(JI)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mYs5wzuvUMobngr81EIaSQ3w_W8(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/Integer;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$updateNetworkCapabilities$3(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$pLaUcrPcoqXAwCFJHqr1-ACgs58(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$updateDataNetwork$6()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAccessNetworksManager(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/AccessNetworksManager;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAttachedNetworkRequestList(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCid(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/util/SparseIntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectedState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mConnectedState:Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataCallSessionStats(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/metrics/DataCallSessionStats;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallSessionStats:Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataConfigManager(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataConfigManager;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataNetworkCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataServiceManagers(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataServiceManagers:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisconnectedState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectedState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisconnectingState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectingState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEverConnected(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mEverConnected:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFailCause(Lcom/android/internal/telephony/data/DataNetwork;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitialNetworkAgentId(Lcom/android/internal/telephony/data/DataNetwork;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mInitialNetworkAgentId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInvokedDataDeactivation(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mInvokedDataDeactivation:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLinkProperties(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/LinkProperties;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/TelephonyNetworkAgent;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/NetworkCapabilities;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPduSessionId(Lcom/android/internal/telephony/data/DataNetwork;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPduSessionId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmQosBearerSessions(Lcom/android/internal/telephony/data/DataNetwork;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosBearerSessions:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmQosCallbackTracker(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/QosCallbackTracker;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosCallbackTracker:Lcom/android/internal/telephony/data/QosCallbackTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRetryDelayMillis(Lcom/android/internal/telephony/data/DataNetwork;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mRetryDelayMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRil(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/CommandsInterface;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVcnManager(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/vcn/VcnManager;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mVcnManager:Landroid/net/vcn/VcnManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVcnPolicyChangeListener(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mVcnPolicyChangeListener:Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAdministratorUids(Lcom/android/internal/telephony/data/DataNetwork;[I)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAdministratorUids:[I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCarrierServicePackageUid(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCarrierServicePackageUid:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEverConnected(Lcom/android/internal/telephony/data/DataNetwork;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mEverConnected:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFailCause(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInitialNetworkAgentId(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mInitialNetworkAgentId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmKeepaliveTracker(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/KeepaliveTracker;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mKeepaliveTracker:Lcom/android/internal/telephony/data/KeepaliveTracker;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLogTag(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLogTag:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNetworkAgent(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkAgent;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPduSessionId(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPduSessionId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmQosCallbackTracker(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/QosCallbackTracker;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosCallbackTracker:Lcom/android/internal/telephony/data/QosCallbackTracker;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRetryDelayMillis(Lcom/android/internal/telephony/data/DataNetwork;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mRetryDelayMillis:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVcnPolicyChangeListener(Lcom/android/internal/telephony/data/DataNetwork;Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mVcnPolicyChangeListener:Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mallocatePduSessionId(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->allocatePduSessionId()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateNetworkAgent(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/TelephonyNetworkAgent;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->createNetworkAgent()Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDataNetworkType(Lcom/android/internal/telephony/data/DataNetwork;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getDataNetworkType()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlogl(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyPreciseDataConnectionState(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->notifyPreciseDataConnectionState()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monBandwidthUpdated(Lcom/android/internal/telephony/data/DataNetwork;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->onBandwidthUpdated(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monBandwidthUpdatedFromModem(Lcom/android/internal/telephony/data/DataNetwork;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->onBandwidthUpdatedFromModem(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataConfigUpdated(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->onDataConfigUpdated()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataStateChanged(Lcom/android/internal/telephony/data/DataNetwork;ILjava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->onDataStateChanged(ILjava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDeactivateResponse(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->onDeactivateResponse(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDetachNetworkRequest(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->onDetachNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDisplayInfoChanged(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->onDisplayInfoChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monHandoverResponse(Lcom/android/internal/telephony/data/DataNetwork;ILandroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/DataNetwork;->onHandoverResponse(ILandroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monPcoDataReceived(Lcom/android/internal/telephony/data/DataNetwork;Landroid/telephony/PcoData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->onPcoDataReceived(Landroid/telephony/PcoData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monSetupResponse(Lcom/android/internal/telephony/data/DataNetwork;ILandroid/telephony/data/DataCallResponse;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->onSetupResponse(ILandroid/telephony/data/DataCallResponse;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monStartHandover(Lcom/android/internal/telephony/data/DataNetwork;ILcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->onStartHandover(ILcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monTearDown(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->onTearDown(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterForWwanEvents(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->registerForWwanEvents()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreportAnomaly(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetupData(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->setupData()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterForWwanEvents(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->unregisterForWwanEvents()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateMeteredAndCongested(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateMeteredAndCongested()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkCapabilities()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateNetworkScore(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkScore()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateSuspendState(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateSuspendState()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smeventToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->eventToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0xe

    .line 399
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x10

    .line 400
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x11

    .line 401
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x12

    .line 402
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x13

    .line 403
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x14

    .line 404
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0x15

    .line 405
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/16 v1, 0x18

    .line 406
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x19

    .line 407
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v1, 0x1c

    .line 408
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v1, 0x20

    .line 409
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v1, 0xb

    .line 412
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 416
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 398
    invoke-static {v0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/data/DataNetwork;->MUTABLE_CAPABILITIES:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Landroid/util/SparseArray;Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;ILcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Landroid/os/Looper;",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/data/DataServiceManager;",
            ">;",
            "Landroid/telephony/data/DataProfile;",
            "Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;",
            "I",
            "Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;",
            "Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    const-string v3, "DataNetwork"

    move-object v4, p2

    .line 835
    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 420
    new-instance v3, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetwork$DefaultState-IA;)V

    iput-object v3, v0, Lcom/android/internal/telephony/data/DataNetwork;->mDefaultState:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    .line 427
    new-instance v3, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetwork$ConnectingState-IA;)V

    iput-object v3, v0, Lcom/android/internal/telephony/data/DataNetwork;->mConnectingState:Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;

    .line 434
    new-instance v3, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetwork$ConnectedState-IA;)V

    iput-object v3, v0, Lcom/android/internal/telephony/data/DataNetwork;->mConnectedState:Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;

    .line 441
    new-instance v3, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetwork$HandoverState-IA;)V

    iput-object v3, v0, Lcom/android/internal/telephony/data/DataNetwork;->mHandoverState:Lcom/android/internal/telephony/data/DataNetwork$HandoverState;

    .line 451
    new-instance v3, Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState-IA;)V

    iput-object v3, v0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectingState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;

    .line 458
    new-instance v3, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState-IA;)V

    iput-object v3, v0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectedState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    const/4 v3, 0x0

    .line 477
    iput-boolean v3, v0, Lcom/android/internal/telephony/data/DataNetwork;->mInvokedDataDeactivation:Z

    .line 482
    iput-boolean v3, v0, Lcom/android/internal/telephony/data/DataNetwork;->mEverConnected:Z

    .line 488
    new-instance v5, Lcom/android/internal/telephony/LocalLog;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v5, v0, Lcom/android/internal/telephony/data/DataNetwork;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 505
    new-instance v5, Landroid/util/SparseIntArray;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v5, v0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    .line 515
    iput v3, v0, Lcom/android/internal/telephony/data/DataNetwork;->mPduSessionId:I

    .line 560
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/android/internal/telephony/data/DataNetwork;->mTrafficDescriptors:Ljava/util/List;

    const/4 v8, -0x1

    .line 569
    iput v8, v0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkStatus:I

    .line 572
    new-instance v9, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    const/16 v10, 0xe

    invoke-direct {v9, v10, v10}, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;-><init>(II)V

    iput-object v9, v0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkBandwidth:Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    .line 581
    iput-boolean v3, v0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMeteredSupported:Z

    .line 584
    iput-boolean v3, v0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMetered:Z

    .line 587
    iput-boolean v3, v0, Lcom/android/internal/telephony/data/DataNetwork;->mCongested:Z

    .line 590
    new-instance v9, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-direct {v9}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;-><init>()V

    iput-object v9, v0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    .line 599
    iput-object v4, v0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallResponse:Landroid/telephony/data/DataCallResponse;

    .line 605
    iput v3, v0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    const-wide/16 v10, -0x1

    .line 610
    iput-wide v10, v0, Lcom/android/internal/telephony/data/DataNetwork;->mRetryDelayMillis:J

    .line 619
    iput-boolean v3, v0, Lcom/android/internal/telephony/data/DataNetwork;->mSuspended:Z

    .line 634
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v0, Lcom/android/internal/telephony/data/DataNetwork;->mPcoData:Ljava/util/Map;

    .line 637
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/internal/telephony/data/DataNetwork;->mQosBearerSessions:Ljava/util/List;

    new-array v3, v3, [I

    .line 642
    iput-object v3, v0, Lcom/android/internal/telephony/data/DataNetwork;->mAdministratorUids:[I

    .line 647
    iput v8, v0, Lcom/android/internal/telephony/data/DataNetwork;->mCarrierServicePackageUid:I

    .line 839
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->initializeStateMachine()V

    .line 841
    iput-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 842
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/data/DataNetwork;->mSubId:I

    .line 843
    iget-object v3, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v3, v0, Lcom/android/internal/telephony/data/DataNetwork;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    .line 844
    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3}, Landroid/net/LinkProperties;-><init>()V

    iput-object v3, v0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    move-object v3, p3

    .line 845
    iput-object v3, v0, Lcom/android/internal/telephony/data/DataNetwork;->mDataServiceManagers:Landroid/util/SparseArray;

    .line 846
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getAccessNetworksManager()Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/data/DataNetwork;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 847
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/net/vcn/VcnManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/vcn/VcnManager;

    iput-object v3, v0, Lcom/android/internal/telephony/data/DataNetwork;->mVcnManager:Landroid/net/vcn/VcnManager;

    .line 848
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 849
    new-instance v4, Lcom/android/internal/telephony/data/DataNetwork$1;

    .line 850
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v11, v10}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-direct {v4, p0, v11}, Lcom/android/internal/telephony/data/DataNetwork$1;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Ljava/util/concurrent/Executor;)V

    .line 849
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/data/DataNetworkController;->registerDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    .line 855
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 856
    new-instance v4, Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    invoke-direct {v4, p1}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v4, v0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallSessionStats:Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    move-object/from16 v4, p8

    .line 857
    iput-object v4, v0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    .line 858
    iput-object v2, v0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 859
    invoke-virtual/range {p4 .. p4}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object v4

    if-eqz v4, :cond_f2

    .line 863
    invoke-virtual/range {p4 .. p4}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f2
    move/from16 v4, p6

    .line 865
    iput v4, v0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    move-object/from16 v4, p7

    .line 866
    iput-object v4, v0, Lcom/android/internal/telephony/data/DataNetwork;->mDataAllowedReason:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    .line 867
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Landroid/telephony/data/DataProfile;->setLastSetupTimestamp(J)V

    move-object/from16 v2, p5

    .line 868
    invoke-virtual {v9, v2}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->addAll(Ljava/util/Collection;)Z

    const/4 v4, 0x1

    .line 869
    invoke-virtual {v5, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 870
    invoke-virtual {v5, v6, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 871
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataConfigManager;->getDefaultTcpConfigString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/data/DataNetwork;->mTcpBufferSizes:Ljava/lang/String;

    .line 872
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getDisplayInfoController()Lcom/android/internal/telephony/DisplayInfoController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DisplayInfoController;->getTelephonyDisplayInfo()Landroid/telephony/TelephonyDisplayInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 874
    invoke-virtual/range {p5 .. p5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_121
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_134

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 875
    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setAttachedNetwork(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 876
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setState(I)V

    goto :goto_121

    .line 883
    :cond_134
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkCapabilities()V

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic blacklist access$100(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic blacklist access$200(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeDeferredMessages(I)V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic blacklist access$400(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic blacklist access$500(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic blacklist access$600(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeDeferredMessages(I)V

    return-void
.end method

.method private blacklist allocatePduSessionId()V
    .registers 3

    .line 2069
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->allocatePduSessionId(Landroid/os/Message;)V

    return-void
.end method

.method private static blacklist areImmutableCapabilitiesChanged(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_53

    .line 1766
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_53

    .line 1770
    :cond_e
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 1771
    invoke-interface {p0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 1772
    sget-object v1, Lcom/android/internal/telephony/data/DataNetwork;->MUTABLE_CAPABILITIES:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1773
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    .line 1774
    invoke-interface {p1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1775
    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1776
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_52

    .line 1777
    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_53

    :cond_52
    const/4 v0, 0x1

    :cond_53
    :goto_53
    return v0
.end method

.method private blacklist createNetworkAgent()Lcom/android/internal/telephony/data/TelephonyNetworkAgent;
    .registers 11

    .line 928
    new-instance v0, Landroid/net/NetworkAgentConfig$Builder;

    invoke-direct {v0}, Landroid/net/NetworkAgentConfig$Builder;-><init>()V

    const/4 v1, 0x0

    .line 929
    invoke-virtual {v0, v1}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyType(I)Landroid/net/NetworkAgentConfig$Builder;

    const-string v2, "MOBILE"

    .line 930
    invoke-virtual {v0, v2}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyTypeName(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 931
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getDataNetworkType()I

    move-result v2

    .line 932
    invoke-virtual {v0, v2}, Landroid/net/NetworkAgentConfig$Builder;->setLegacySubType(I)Landroid/net/NetworkAgentConfig$Builder;

    .line 933
    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/NetworkAgentConfig$Builder;->setLegacySubTypeName(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 934
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 935
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyExtraInfo(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 938
    :cond_31
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCarrierSignalAgent()Lcom/android/internal/telephony/CarrierSignalAgent;

    move-result-object v2

    const-string v3, "android.telephony.action.CARRIER_SIGNAL_REDIRECTED"

    .line 939
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CarrierSignalAgent;->hasRegisteredReceivers(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 942
    invoke-virtual {v0, v1}, Landroid/net/NetworkAgentConfig$Builder;->setProvisioningNotificationEnabled(Z)Landroid/net/NetworkAgentConfig$Builder;

    .line 946
    :cond_42
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 947
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 948
    invoke-virtual {v0, v2}, Landroid/net/NetworkAgentConfig$Builder;->setSubscriberId(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 952
    :cond_51
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->shouldSkip464Xlat()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 953
    invoke-virtual {v0, v1}, Landroid/net/NetworkAgentConfig$Builder;->setNat64DetectionEnabled(Z)Landroid/net/NetworkAgentConfig$Builder;

    .line 956
    :cond_5a
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 957
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 956
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getNetworkFactory(I)Lcom/android/internal/telephony/data/TelephonyNetworkFactory;

    move-result-object v1

    if-nez v1, :cond_68

    const/4 v1, 0x0

    goto :goto_6c

    .line 958
    :cond_68
    invoke-virtual {v1}, Lcom/android/internal/telephony/NetworkFactory;->getProvider()Landroid/net/NetworkProvider;

    move-result-object v1

    :goto_6c
    move-object v8, v1

    .line 960
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkScore()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkScore:I

    .line 961
    new-instance v1, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    new-instance v2, Landroid/net/NetworkScore$Builder;

    invoke-direct {v2}, Landroid/net/NetworkScore$Builder;-><init>()V

    iget v5, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkScore:I

    .line 962
    invoke-virtual {v2, v5}, Landroid/net/NetworkScore$Builder;->setLegacyInt(I)Landroid/net/NetworkScore$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    move-result-object v6

    .line 963
    invoke-virtual {v0}, Landroid/net/NetworkAgentConfig$Builder;->build()Landroid/net/NetworkAgentConfig;

    move-result-object v7

    new-instance v9, Lcom/android/internal/telephony/data/DataNetwork$2;

    .line 964
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-direct {v9, p0, v2}, Lcom/android/internal/telephony/data/DataNetwork$2;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Ljava/util/concurrent/Executor;)V

    move-object v2, v1

    move-object v5, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataNetwork;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;)V

    return-object v1
.end method

.method private static blacklist eventToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_5c

    .line 3312
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1a
    const-string p0, "EVENT_CSS_INDICATOR_CHANGED"

    return-object p0

    :pswitch_1d
    const-string p0, "EVENT_VOICE_CALL_ENDED"

    return-object p0

    :pswitch_20
    const-string p0, "EVENT_VOICE_CALL_STARTED"

    return-object p0

    :pswitch_23
    const-string p0, "EVENT_WAITING_FOR_TEARING_DOWN_CONDITION_MET"

    return-object p0

    :pswitch_26
    const-string p0, "EVENT_STUCK_IN_TRANSIENT_STATE"

    return-object p0

    :pswitch_29
    const-string p0, "EVENT_DEACTIVATE_DATA_NETWORK_RESPONSE"

    return-object p0

    :pswitch_2c
    const-string p0, "EVENT_CARRIER_PRIVILEGED_UIDS_CHANGED"

    return-object p0

    :pswitch_2f
    const-string p0, "EVENT_PCO_DATA_RECEIVED"

    return-object p0

    :pswitch_32
    const-string p0, "EVENT_SUBSCRIPTION_PLAN_OVERRIDE"

    return-object p0

    :pswitch_35
    const-string p0, "EVENT_HANDOVER_RESPONSE"

    return-object p0

    :pswitch_38
    const-string p0, "EVENT_START_HANDOVER"

    return-object p0

    :pswitch_3b
    const-string p0, "EVENT_DISPLAY_INFO_CHANGED"

    return-object p0

    :pswitch_3e
    const-string p0, "EVENT_BANDWIDTH_ESTIMATE_FROM_MODEM_CHANGED"

    return-object p0

    :pswitch_41
    const-string p0, "EVENT_DETACH_ALL_NETWORK_REQUESTS"

    return-object p0

    :pswitch_44
    const-string p0, "EVENT_DATA_NETWORK_TYPE_REG_STATE_CHANGED"

    return-object p0

    :pswitch_47
    const-string p0, "EVENT_DATA_STATE_CHANGED"

    return-object p0

    :pswitch_4a
    const-string p0, "EVENT_TEAR_DOWN_NETWORK"

    return-object p0

    :pswitch_4d
    const-string p0, "EVENT_SETUP_DATA_NETWORK_RESPONSE"

    return-object p0

    :pswitch_50
    const-string p0, "EVENT_ALLOCATE_PDU_SESSION_ID_RESPONSE"

    return-object p0

    :pswitch_53
    const-string p0, "EVENT_DETACH_NETWORK_REQUEST"

    return-object p0

    :pswitch_56
    const-string p0, "EVENT_ATTACH_NETWORK_REQUEST"

    return-object p0

    :pswitch_59
    const-string p0, "EVENT_DATA_CONFIG_UPDATED"

    return-object p0

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_3
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method private blacklist getDataNetworkType()I
    .registers 2

    .line 2751
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->getDataNetworkType(I)I

    move-result p0

    return p0
.end method

.method private blacklist getDataNetworkType(I)I
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    const/16 p0, 0x12

    return p0

    .line 2768
    :cond_6
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    .line 2769
    invoke-virtual {p0, v0, p1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 2772
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getFailCauseFromDataCallResponse(ILandroid/telephony/data/DataCallResponse;)I
    .registers 3

    if-eqz p1, :cond_22

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1e

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1a

    const/4 p0, 0x3

    if-eq p1, p0, :cond_16

    const/4 p0, 0x4

    if-eq p1, p0, :cond_12

    const/4 p0, 0x5

    if-eq p1, p0, :cond_16

    goto :goto_2d

    :cond_12
    const p0, 0x10001

    goto :goto_2e

    :cond_16
    const p0, 0x10009

    goto :goto_2e

    :cond_1a
    const p0, 0x10002

    goto :goto_2e

    :cond_1e
    const p0, 0x1000a

    goto :goto_2e

    :cond_22
    if-eqz p2, :cond_2d

    .line 2145
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result p0

    invoke-static {p0}, Landroid/telephony/DataFailCause;->getFailCause(I)I

    move-result p0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 p0, 0x0

    :goto_2e
    return p0
.end method

.method private blacklist getNetworkRegistrationInfo()Landroid/telephony/NetworkRegistrationInfo;
    .registers 4

    .line 2820
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    const/4 v2, 0x2

    .line 2821
    invoke-virtual {v0, v2, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 2823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t get network registration info for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    .line 2824
    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2823
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2f
    return-object v0
.end method

.method private blacklist getNetworkScore()I
    .registers 4

    .line 2806
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/16 v0, 0x2d

    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    const/16 v2, 0xc

    .line 2807
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2808
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v1

    if-nez v1, :cond_8

    const/16 v0, 0x32

    goto :goto_8

    :cond_25
    return v0
.end method

.method private blacklist getPreciseDataConnectionState()Landroid/telephony/PreciseDataConnectionState;
    .registers 4

    .line 2985
    new-instance v0, Landroid/telephony/PreciseDataConnectionState$Builder;

    invoke-direct {v0}, Landroid/telephony/PreciseDataConnectionState$Builder;-><init>()V

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    .line 2986
    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setTransportType(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    .line 2987
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setId(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    .line 2988
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setState(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 2989
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    .line 2990
    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setLinkProperties(Landroid/net/LinkProperties;)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    .line 2991
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getDataNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setNetworkType(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    .line 2992
    invoke-virtual {v0, p0}, Landroid/telephony/PreciseDataConnectionState$Builder;->setFailCause(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object p0

    .line 2993
    invoke-virtual {p0}, Landroid/telephony/PreciseDataConnectionState$Builder;->build()Landroid/telephony/PreciseDataConnectionState;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getState()I
    .registers 2

    .line 2936
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 2937
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_35

    .line 2939
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 p0, 0x1

    return p0

    .line 2941
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2943
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSuspended:Z

    if-eqz p0, :cond_21

    const/4 p0, 0x3

    return p0

    :cond_21
    const/4 p0, 0x2

    return p0

    .line 2947
    :cond_23
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnecting()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 p0, 0x4

    return p0

    .line 2949
    :cond_2b
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isHandoverInProgress()Z

    move-result p0

    if-eqz p0, :cond_33

    const/4 p0, 0x5

    return p0

    :cond_33
    const/4 p0, -0x1

    return p0

    :cond_35
    :goto_35
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getVcnPolicy(Landroid/net/NetworkCapabilities;)Landroid/net/vcn/VcnNetworkPolicyResult;
    .registers 3

    .line 3181
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mVcnManager:Landroid/net/vcn/VcnManager;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 3185
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/net/vcn/VcnManager;->applyVcnNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnNetworkPolicyResult;

    move-result-object p0

    return-object p0
.end method

.method private blacklist initializeStateMachine()V
    .registers 3

    .line 890
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDefaultState:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    .line 891
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mConnectingState:Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDefaultState:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 892
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mConnectedState:Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDefaultState:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 893
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mHandoverState:Lcom/android/internal/telephony/data/DataNetwork$HandoverState;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDefaultState:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 894
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectingState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDefaultState:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 895
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectedState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDefaultState:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 896
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mConnectingState:Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->setInitialState(Lcom/android/internal/telephony/State;)V

    .line 897
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->start()V

    return-void
.end method

.method private blacklist isLinkPropertiesCompatible(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z
    .registers 8

    .line 1728
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 1730
    :cond_8
    invoke-static {p1, p2}, Lcom/android/internal/telephony/util/LinkPropertiesUtils;->isIdenticalAddresses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result v0

    if-nez v0, :cond_78

    .line 1732
    new-instance v0, Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareOrUpdateResult;

    .line 1734
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v2

    .line 1735
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda17;

    invoke-direct {v4}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda17;-><init>()V

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareOrUpdateResult;-><init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/function/Function;)V

    .line 1738
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLinkPropertiesCompatible: old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " new="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " result="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 1740
    iget-object p0, v0, Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareOrUpdateResult;->added:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_78

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/LinkAddress;

    .line 1741
    iget-object p2, v0, Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareOrUpdateResult;->removed:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 1742
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/util/NetUtils;->addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const/4 p0, 0x0

    return p0

    :cond_78
    return v1
.end method

.method private blacklist isNetworkTypeUnmetered(I)Z
    .registers 13

    .line 2712
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->getSubscriptionPlans()Ljava/util/List;

    move-result-object p0

    .line 2713
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return v1

    .line 2715
    :cond_e
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 2716
    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 2717
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x1

    move v3, v2

    :cond_2a
    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionPlan;

    .line 2719
    invoke-virtual {v4}, Landroid/telephony/SubscriptionPlan;->getNetworkTypes()[I

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v5

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 2720
    invoke-interface {v5, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    const-wide v6, 0x7fffffffffffffffL

    if-eqz v5, :cond_61

    .line 2721
    invoke-virtual {v4}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2a

    move v3, v1

    goto :goto_2a

    :cond_61
    if-eqz p1, :cond_2a

    .line 2728
    invoke-virtual {v4}, Landroid/telephony/SubscriptionPlan;->getNetworkTypes()[I

    move-result-object v5

    array-length v8, v5

    move v9, v1

    :goto_69
    if-ge v9, v8, :cond_2a

    aget v10, v5, v9

    if-ne v10, p1, :cond_79

    .line 2730
    invoke-virtual {v4}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide p0

    cmp-long p0, p0, v6

    if-nez p0, :cond_78

    move v1, v2

    :cond_78
    return v1

    :cond_79
    add-int/lit8 v9, v9, 0x1

    goto :goto_69

    :cond_7c
    return v3
.end method

.method private static synthetic blacklist lambda$getApnTypeNetworkCapability$9(Ljava/lang/Integer;)Z
    .registers 1

    .line 2847
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToApnType(I)I

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private static synthetic blacklist lambda$isLinkPropertiesCompatible$1(Landroid/net/LinkAddress;)Ljava/lang/Integer;
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1736
    invoke-virtual {p0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1737
    invoke-virtual {p0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/net/LinkAddress;->getScope()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 1736
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$onAttachNetworkRequests$0(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V
    .registers 3

    .line 1615
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    .line 1616
    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onAttachFailed(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataStateChanged$8(Landroid/telephony/data/DataCallResponse;)Z
    .registers 3

    .line 2524
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result p1

    if-ne p0, p1, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private synthetic blacklist lambda$onHandoverResponse$10()V
    .registers 2

    .line 3123
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onHandoverSucceeded(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method private synthetic blacklist lambda$onHandoverResponse$11(JI)V
    .registers 10

    .line 3132
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    iget v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    move-object v1, p0

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onHandoverFailed(Lcom/android/internal/telephony/data/DataNetwork;IJI)V

    return-void
.end method

.method private synthetic blacklist lambda$onPcoDataReceived$12()V
    .registers 2

    .line 3152
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onPcoDataChanged(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method private synthetic blacklist lambda$tearDownWhenConditionMet$7(I)V
    .registers 2

    .line 2503
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->tearDown(I)V

    return-void
.end method

.method private synthetic blacklist lambda$updateDataNetwork$6()V
    .registers 3

    .line 2175
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkStatus:I

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onLinkStatusChanged(Lcom/android/internal/telephony/data/DataNetwork;I)V

    return-void
.end method

.method private static synthetic blacklist lambda$updateNetworkCapabilities$2(Ljava/lang/Integer;)Z
    .registers 1

    .line 1797
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private synthetic blacklist lambda$updateNetworkCapabilities$3(Ljava/lang/Integer;)Z
    .registers 2

    .line 1897
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_e

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private synthetic blacklist lambda$updateNetworkCapabilities$4()V
    .registers 2

    .line 1994
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    .line 1995
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onNetworkCapabilitiesChanged(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method private synthetic blacklist lambda$updateSuspendState$5()V
    .registers 3

    .line 2060
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSuspended:Z

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onSuspendedStateChanged(Lcom/android/internal/telephony/data/DataNetwork;Z)V

    return-void
.end method

.method private blacklist logl(Ljava/lang/String;)V
    .registers 5

    .line 3378
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3379
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v2

    if-eqz v2, :cond_2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2c

    :cond_2a
    const-string p0, ""

    :goto_2c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist notifyPreciseDataConnectionState()V
    .registers 4

    .line 3001
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getPreciseDataConnectionState()Landroid/telephony/PreciseDataConnectionState;

    move-result-object v0

    .line 3002
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyPreciseDataConnectionState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->logv(Ljava/lang/String;)V

    .line 3003
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Landroid/telephony/PreciseDataConnectionState;)V

    return-void
.end method

.method private blacklist onBandwidthUpdated(II)V
    .registers 5

    .line 2602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBandwidthUpdated: downlinkBandwidthKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uplinkBandwidthKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2604
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getBandwidthForNetworkType(Landroid/telephony/TelephonyDisplayInfo;)Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2b

    if-eqz v0, :cond_2b

    .line 2609
    iget p2, v0, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;->downlinkBandwidthKbps:I

    :cond_2b
    if-ne p1, v1, :cond_31

    if-eqz v0, :cond_31

    .line 2614
    iget p1, v0, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;->uplinkBandwidthKbps:I

    .line 2618
    :cond_31
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2619
    new-instance v0, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    invoke-direct {v0, p2, p1}, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;-><init>(II)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkBandwidth:Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    .line 2621
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkCapabilities()V

    return-void
.end method

.method private blacklist onBandwidthUpdatedFromModem(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;)V"
        }
    .end annotation

    .line 2575
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2576
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 2579
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/LinkCapacityEstimate;

    .line 2580
    invoke-virtual {v2}, Landroid/telephony/LinkCapacityEstimate;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2c

    .line 2581
    invoke-virtual {v2}, Landroid/telephony/LinkCapacityEstimate;->getUplinkCapacityKbps()I

    move-result v0

    .line 2582
    invoke-virtual {v2}, Landroid/telephony/LinkCapacityEstimate;->getDownlinkCapacityKbps()I

    move-result v1

    goto :goto_5e

    .line 2584
    :cond_2c
    invoke-virtual {v2}, Landroid/telephony/LinkCapacityEstimate;->getType()I

    move-result v3

    if-eqz v3, :cond_53

    .line 2585
    invoke-virtual {v2}, Landroid/telephony/LinkCapacityEstimate;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3a

    goto :goto_53

    .line 2589
    :cond_3a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid LinkCapacityEstimate type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/telephony/LinkCapacityEstimate;->getType()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    goto :goto_10

    .line 2586
    :cond_53
    :goto_53
    invoke-virtual {v2}, Landroid/telephony/LinkCapacityEstimate;->getUplinkCapacityKbps()I

    move-result v3

    add-int/2addr v0, v3

    .line 2587
    invoke-virtual {v2}, Landroid/telephony/LinkCapacityEstimate;->getDownlinkCapacityKbps()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_10

    .line 2592
    :cond_5e
    :goto_5e
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->onBandwidthUpdated(II)V

    return-void
.end method

.method private blacklist onDataConfigUpdated()V
    .registers 2

    const-string v0, "onDataConfigUpdated"

    .line 2561
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2563
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateBandwidthFromDataConfig()V

    .line 2564
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateTcpBufferSizes()V

    .line 2565
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateMeteredAndCongested()V

    return-void
.end method

.method private blacklist onDataStateChanged(ILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    .line 2518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->logv(Ljava/lang/String;)V

    .line 2519
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    if-ne p1, v0, :cond_cf

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_cf

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result p1

    if-eqz p1, :cond_29

    goto/16 :goto_cf

    .line 2523
    :cond_29
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda14;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda14;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 2524
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 2525
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 p2, 0x0

    .line 2526
    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/data/DataCallResponse;

    const-wide/16 v2, -0x1

    const p2, 0x1000b

    const-string v0, " data service."

    if-eqz p1, :cond_a2

    .line 2528
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallResponse:Landroid/telephony/data/DataCallResponse;

    invoke-virtual {p1, v4}, Landroid/telephony/data/DataCallResponse;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_cf

    .line 2529
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2530
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->validateDataCallResponse(Landroid/telephony/data/DataCallResponse;)V

    .line 2531
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallResponse:Landroid/telephony/data/DataCallResponse;

    .line 2532
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v1

    if-eqz v1, :cond_73

    .line 2533
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->updateDataNetwork(Landroid/telephony/data/DataCallResponse;)V

    goto :goto_cf

    .line 2535
    :cond_73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataStateChanged: PDN inactive reported by "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    .line 2536
    invoke-static {v4}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2535
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2538
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mEverConnected:Z

    if-eqz v0, :cond_98

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result p2

    .line 2539
    :cond_98
    iput p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    .line 2540
    iput-wide v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mRetryDelayMillis:J

    .line 2541
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectedState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_cf

    .line 2548
    :cond_a2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataStateChanged: PDN disconnected reported by "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    .line 2549
    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2548
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2550
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mEverConnected:Z

    if-eqz p1, :cond_c6

    const p2, 0x10004

    .line 2551
    :cond_c6
    iput p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    .line 2552
    iput-wide v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mRetryDelayMillis:J

    .line 2553
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectedState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    :cond_cf
    :goto_cf
    return-void
.end method

.method private blacklist onDeactivateResponse(I)V
    .registers 4

    .line 2413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeactivateResponse: resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2414
    invoke-static {p1}, Landroid/telephony/data/DataServiceCallback;->resultCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2413
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2b

    const-string p1, "Remove network since deactivate request returned an error."

    .line 2416
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    const p1, 0x10001

    .line 2417
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    .line 2418
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectedState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_5d

    .line 2419
    :cond_2b
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 2420
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Remove network on deactivate data response on old HAL "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2421
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2420
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    const p1, 0x10004

    .line 2422
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    .line 2423
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectedState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    :cond_5d
    :goto_5d
    return-void
.end method

.method private blacklist onDetachNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .registers 3

    .line 1626
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 1627
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setState(I)V

    const/4 v0, 0x0

    .line 1628
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setAttachedNetwork(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 1630
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_32

    const-string p1, "All network requests are detached."

    .line 1631
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 1637
    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getPreferredDataPhoneId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_32

    .line 1638
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1639
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-eq p1, v0, :cond_32

    const/16 p1, 0x1e

    .line 1640
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->tearDown(I)V

    :cond_32
    return-void
.end method

.method private blacklist onDisplayInfoChanged()V
    .registers 2

    .line 2629
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDisplayInfoController()Lcom/android/internal/telephony/DisplayInfoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/DisplayInfoController;->getTelephonyDisplayInfo()Landroid/telephony/TelephonyDisplayInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 2630
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateBandwidthFromDataConfig()V

    .line 2631
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateTcpBufferSizes()V

    .line 2632
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateMeteredAndCongested()V

    return-void
.end method

.method private blacklist onHandoverResponse(ILandroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V
    .registers 7

    .line 3094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHandoverResponse: resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/telephony/data/DataServiceCallback;->resultCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    .line 3096
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->getFailCauseFromDataCallResponse(ILandroid/telephony/data/DataCallResponse;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    .line 3097
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetwork;->validateDataCallResponse(Landroid/telephony/data/DataCallResponse;)V

    .line 3098
    iget p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    if-nez p1, :cond_9a

    .line 3102
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataServiceManagers:Landroid/util/SparseArray;

    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/internal/telephony/data/DataServiceManager;->deactivateDataCall(IILandroid/os/Message;)V

    .line 3105
    iget p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->getTargetTransport(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    .line 3107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DN-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mInitialNetworkAgentId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3108
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_68

    const-string v0, "C"

    goto :goto_6a

    :cond_68
    const-string v0, "I"

    :goto_6a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLogTag:Ljava/lang/String;

    .line 3111
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mHandoverDataProfile:Landroid/telephony/data/DataProfile;

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 3112
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetwork;->updateDataNetwork(Landroid/telephony/data/DataCallResponse;)V

    .line 3113
    iget p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    if-eq p1, v1, :cond_87

    .line 3115
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPcoData:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 3116
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->unregisterForWwanEvents()V

    goto :goto_8a

    .line 3119
    :cond_87
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->registerForWwanEvents()V

    :goto_8a
    if-eqz p3, :cond_8f

    .line 3121
    invoke-virtual {p3, v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    .line 3122
    :cond_8f
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    new-instance p2, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    goto :goto_c2

    :cond_9a
    if-eqz p2, :cond_a1

    .line 3126
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getRetryDurationMillis()J

    move-result-wide v0

    goto :goto_a3

    :cond_a1
    const-wide/16 v0, -0x1

    :goto_a3
    if-eqz p2, :cond_aa

    .line 3128
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getHandoverFailureMode()I

    move-result p1

    goto :goto_ab

    :cond_aa
    const/4 p1, 0x0

    :goto_ab
    if-eqz p3, :cond_b1

    const/4 p2, 0x2

    .line 3130
    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    .line 3131
    :cond_b1
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    new-instance p3, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda7;

    invoke-direct {p3, p0, v0, v1, p1}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/telephony/data/DataNetwork;JI)V

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    .line 3134
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallSessionStats:Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    iget p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->onHandoverFailure(I)V

    .line 3138
    :goto_c2
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mConnectedState:Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void
.end method

.method private blacklist onPcoDataReceived(Landroid/telephony/PcoData;)V
    .registers 6

    .line 3147
    iget v0, p1, Landroid/telephony/PcoData;->cid:I

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getId()I

    move-result v1

    if-eq v0, v1, :cond_9

    return-void

    .line 3148
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPcoData:Ljava/util/Map;

    iget v1, p1, Landroid/telephony/PcoData;->pcoId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PcoData;

    .line 3149
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    .line 3150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPcoDataReceived: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3151
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    .line 3153
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_90

    .line 3154
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3155
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.telephony.action.CARRIER_SIGNAL_PCO_VALUE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.telephony.extra.APN_TYPE"

    .line 3156
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3157
    iget-object v1, p1, Landroid/telephony/PcoData;->bearerProto:Ljava/lang/String;

    .line 3158
    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->getProtocolIntFromString(Ljava/lang/String;)I

    move-result v1

    const-string v3, "android.telephony.extra.APN_PROTOCOL"

    .line 3157
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3159
    iget v1, p1, Landroid/telephony/PcoData;->pcoId:I

    const-string v3, "android.telephony.extra.PCO_ID"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3160
    iget-object v1, p1, Landroid/telephony/PcoData;->contents:[B

    const-string v3, "android.telephony.extra.PCO_VALUE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 3161
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCarrierSignalAgent()Lcom/android/internal/telephony/CarrierSignalAgent;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CarrierSignalAgent;->notifyCarrierSignalReceivers(Landroid/content/Intent;)V

    goto :goto_51

    :cond_90
    return-void
.end method

.method private blacklist onSetupResponse(ILandroid/telephony/data/DataCallResponse;)V
    .registers 10

    .line 2305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetupResponse: resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/telephony/data/DataServiceCallback;->resultCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    .line 2307
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->getFailCauseFromDataCallResponse(ILandroid/telephony/data/DataCallResponse;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    .line 2308
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetwork;->validateDataCallResponse(Landroid/telephony/data/DataCallResponse;)V

    .line 2309
    iget p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    const-wide/16 v0, -0x1

    if-nez p1, :cond_c6

    .line 2310
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->isNetworkInterfaceExisting(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8e

    .line 2311
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already existing. Silently tear down now."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    .line 2315
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getTrafficDescriptors()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_81

    .line 2316
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate network interface "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " detected."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "62f66e7e-8d71-45de-a57b-dc5c78223fd5"

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    .line 2322
    :cond_81
    iput-wide v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mRetryDelayMillis:J

    const p1, 0x1000b

    .line 2323
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    .line 2324
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectedState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void

    .line 2328
    :cond_8e
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetwork;->updateDataNetwork(Landroid/telephony/data/DataCallResponse;)V

    .line 2334
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-nez p1, :cond_a3

    const-string p1, "Tear down the network since there is no live network request."

    .line 2335
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    const/4 p1, 0x5

    .line 2339
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->onTearDown(I)V

    return-void

    .line 2343
    :cond_a3
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mVcnManager:Landroid/net/vcn/VcnManager;

    if-eqz p1, :cond_c0

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v0, v1}, Landroid/net/vcn/VcnManager;->applyVcnNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnNetworkPolicyResult;

    move-result-object p1

    .line 2344
    invoke-virtual {p1}, Landroid/net/vcn/VcnNetworkPolicyResult;->isTeardownRequested()Z

    move-result p1

    if-eqz p1, :cond_c0

    const-string p1, "VCN service requested to tear down the network."

    .line 2345
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    const/16 p1, 0xf

    .line 2349
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->onTearDown(I)V

    return-void

    .line 2353
    :cond_c0
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mConnectedState:Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_d3

    :cond_c6
    if-eqz p2, :cond_cc

    .line 2356
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getRetryDurationMillis()J

    move-result-wide v0

    .line 2357
    :cond_cc
    iput-wide v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mRetryDelayMillis:J

    .line 2358
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectedState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    :goto_d3
    const/4 p1, 0x0

    const/4 v0, -0x1

    .line 2363
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_f1

    .line 2364
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result p1

    .line 2365
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v0

    :cond_f1
    move v4, p1

    move v5, v0

    .line 2367
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallSessionStats:Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    .line 2368
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getDataNetworkType()I

    move-result v3

    iget v6, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    move-object v2, p2

    .line 2367
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->onSetupDataCallResponse(Landroid/telephony/data/DataCallResponse;IIII)V

    return-void
.end method

.method private blacklist onStartHandover(ILcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V
    .registers 16

    .line 3034
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    if-ne v0, p1, :cond_2a

    .line 3035
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStartHandover: The network is already on "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    .line 3036
    invoke-static {v0}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", handover is not needed."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3035
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_29

    const/4 p0, 0x4

    .line 3038
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    :cond_29
    return-void

    .line 3045
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v4

    .line 3050
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getDataRoamingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4e

    if-eqz v4, :cond_4c

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3051
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    if-nez v0, :cond_4c

    goto :goto_4e

    :cond_4c
    move v5, v1

    goto :goto_50

    :cond_4e
    :goto_4e
    const/4 v0, 0x1

    move v5, v0

    .line 3053
    :goto_50
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mHandoverDataProfile:Landroid/telephony/data/DataProfile;

    .line 3054
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataNetworkType(I)I

    move-result v0

    if-eqz v0, :cond_bc

    .line 3055
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    .line 3056
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_bc

    .line 3057
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 3058
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataProfileManager()Lcom/android/internal/telephony/data/DataProfileManager;

    move-result-object v2

    .line 3059
    invoke-virtual {v2, v1, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->getDataProfileForNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;I)Landroid/telephony/data/DataProfile;

    move-result-object v0

    if-eqz v0, :cond_bc

    .line 3062
    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_bc

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 3063
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_bc

    .line 3064
    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 3065
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v2

    .line 3064
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_bc

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 3066
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bc

    .line 3067
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mHandoverDataProfile:Landroid/telephony/data/DataProfile;

    .line 3068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Used different data profile for handover. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3072
    :cond_bc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start handover from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3073
    invoke-static {p1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3072
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    .line 3075
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataServiceManagers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/data/DataServiceManager;

    .line 3076
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataNetworkType(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->networkTypeToAccessNetworkType(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mHandoverDataProfile:Landroid/telephony/data/DataProfile;

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    iget v8, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPduSessionId:I

    iget-object v9, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    .line 3079
    invoke-virtual {v3}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object v10

    const/4 v11, 0x1

    const/16 p1, 0xf

    .line 3080
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 3075
    invoke-virtual/range {v1 .. v12}, Lcom/android/internal/telephony/data/DataServiceManager;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Message;)V

    .line 3081
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mHandoverState:Lcom/android/internal/telephony/data/DataNetwork$HandoverState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void
.end method

.method private blacklist onTearDown(I)V
    .registers 6

    .line 2440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTearDown: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->tearDownReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_39

    .line 2444
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x4

    .line 2445
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_34

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v2, 0xc

    .line 2446
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 2448
    :cond_34
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onTrackNetworkUnwanted(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 2451
    :cond_39
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataServiceManagers:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    iget v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne p1, v3, :cond_50

    const/4 p1, 0x2

    goto :goto_51

    :cond_50
    move p1, v0

    :goto_51
    const/16 v3, 0x13

    .line 2454
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2451
    invoke-virtual {v1, v2, p1, v3}, Lcom/android/internal/telephony/data/DataServiceManager;->deactivateDataCall(IILandroid/os/Message;)V

    .line 2455
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallSessionStats:Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->setDeactivateDataCallReason(I)V

    .line 2456
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mInvokedDataDeactivation:Z

    return-void
.end method

.method private blacklist registerForBandwidthUpdate()V
    .registers 4

    .line 1662
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getBandwidthEstimateSource()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 1664
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1665
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 1664
    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForLceInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_52

    :cond_18
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3e

    .line 1667
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkBandwidthEstimatorCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    if-nez v0, :cond_52

    .line 1668
    new-instance v0, Lcom/android/internal/telephony/data/DataNetwork$3;

    .line 1669
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/data/DataNetwork$3;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkBandwidthEstimatorCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    .line 1678
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getLinkBandwidthEstimator()Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkBandwidthEstimatorCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->registerCallback(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V

    goto :goto_52

    .line 1682
    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid bandwidth source configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    :cond_52
    :goto_52
    return-void
.end method

.method private blacklist registerForWwanEvents()V
    .registers 4

    .line 1546
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->registerForBandwidthUpdate()V

    .line 1547
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mKeepaliveTracker:Lcom/android/internal/telephony/data/KeepaliveTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/KeepaliveTracker;->registerForKeepaliveStatus()V

    .line 1548
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForPcoData(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist removeUnsatisfiedNetworkRequests()V
    .registers 5

    .line 1708
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 1709
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1710
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeUnsatisfiedNetworkRequests: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " can\'t be satisfied anymore. Will be detached."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 1712
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->detachNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    goto :goto_6

    :cond_37
    return-void
.end method

.method private blacklist reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 3337
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    .line 3338
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    invoke-static {p2, p1, p0}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    return-void
.end method

.method private blacklist setupData()V
    .registers 20

    move-object/from16 v0, p0

    .line 2076
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/data/DataNetwork;->getDataNetworkType()I

    move-result v1

    .line 2081
    iget-object v2, v0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v2

    .line 2086
    iget-object v3, v0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/PhoneInternalInterface;->getDataRoamingEnabled()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2a

    if-eqz v2, :cond_28

    iget-object v3, v0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2087
    invoke-interface {v3}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v3

    if-nez v3, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v14, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    move v14, v4

    .line 2090
    :goto_2b
    iget-object v3, v0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v3}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object v12

    if-eqz v12, :cond_40

    .line 2092
    invoke-virtual {v12}, Landroid/telephony/data/TrafficDescriptor;->getDataNetworkName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3e

    goto :goto_40

    :cond_3e
    const/4 v11, 0x0

    goto :goto_41

    :cond_40
    :goto_40
    move v11, v4

    .line 2094
    :goto_41
    invoke-static {v1}, Lcom/android/internal/telephony/data/DataUtils;->networkTypeToAccessNetworkType(I)I

    move-result v16

    .line 2096
    iget-object v3, v0, Lcom/android/internal/telephony/data/DataNetwork;->mDataServiceManagers:Landroid/util/SparseArray;

    iget v4, v0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object v5, v0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget v10, v0, Lcom/android/internal/telephony/data/DataNetwork;->mPduSessionId:I

    const/4 v13, 0x0

    const/4 v4, 0x6

    .line 2100
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    move/from16 v4, v16

    move v6, v2

    move v7, v14

    move/from16 v18, v11

    move-object v11, v13

    move/from16 v13, v18

    move v15, v14

    move-object/from16 v14, v17

    .line 2097
    invoke-virtual/range {v3 .. v14}, Lcom/android/internal/telephony/data/DataServiceManager;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Message;)V

    .line 2102
    iget-object v3, v0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v3}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v3

    if-eqz v3, :cond_7d

    .line 2103
    iget-object v3, v0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v3}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v3

    goto :goto_7e

    :cond_7d
    const/4 v3, 0x0

    .line 2104
    :goto_7e
    iget-object v4, v0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallSessionStats:Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->onSetupDataCall(I)V

    .line 2106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupData: accessNetwork="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2107
    invoke-static/range {v16 .. v16}, Landroid/telephony/AccessNetworkConstants$AccessNetworkType;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", isModemRoaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", allowRoaming="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", PDU session id="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/internal/telephony/data/DataNetwork;->mPduSessionId:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", matchAllRuleAllowed="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, v18

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2106
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    .line 2111
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v3

    iget-object v2, v0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    .line 2112
    invoke-static {v1}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v5

    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 2113
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getProfileId()I

    move-result v6

    iget-object v1, v0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getProtocolType()I

    move-result v8

    .line 2111
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeSetupDataCall(IIILjava/lang/String;I)V

    return-void
.end method

.method private blacklist shouldSkip464Xlat()Z
    .registers 4

    .line 904
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    .line 905
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getSkip464Xlat()I

    move-result v0

    if-eqz v0, :cond_1a

    if-eq v0, v2, :cond_19

    goto :goto_1b

    :cond_19
    return v2

    :cond_1a
    return v1

    .line 917
    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p0

    const/4 v0, 0x4

    .line 918
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0xc

    .line 919
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-nez p0, :cond_2f

    move v1, v2

    :cond_2f
    return v1
.end method

.method public static blacklist tearDownReasonToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_72

    .line 3255
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1a
    const-string p0, "TEAR_DOWN_REASON_PREFERRED_DATA_SWITCHED"

    return-object p0

    :pswitch_1d
    const-string p0, "TEAR_DOWN_REASON_ONLY_ALLOWED_SINGLE_NETWORK"

    return-object p0

    :pswitch_20
    const-string p0, "TEAR_DOWN_REASON_ILLEGAL_STATE"

    return-object p0

    :pswitch_23
    const-string p0, "TEAR_DOWN_REASON_NOT_ALLOWED_BY_POLICY"

    return-object p0

    :pswitch_26
    const-string p0, "TEAR_DOWN_REASON_DATA_PROFILE_NOT_PREFERRED"

    return-object p0

    :pswitch_29
    const-string p0, "TEAR_DOWN_REASON_DATA_PROFILE_INVALID"

    return-object p0

    :pswitch_2c
    const-string p0, "TEAR_DOWN_REASON_DATA_THROTTLED"

    return-object p0

    :pswitch_2f
    const-string p0, "TEAR_DOWN_REASON_RETRY_SCHEDULED"

    return-object p0

    :pswitch_32
    const-string p0, "TEAR_DOWN_REASON_CDMA_EMERGENCY_CALLBACK_MODE"

    return-object p0

    :pswitch_35
    const-string p0, "TEAR_DOWN_REASON_NO_SUITABLE_DATA_PROFILE"

    return-object p0

    :pswitch_38
    const-string p0, "TEAR_DOWN_REASON_PENDING_TEAR_DOWN_ALL"

    return-object p0

    :pswitch_3b
    const-string p0, "TEAR_DOWN_REASON_DATA_CONFIG_NOT_READY"

    return-object p0

    :pswitch_3e
    const-string p0, "TEAR_DOWN_REASON_NOT_IN_SERVICE"

    return-object p0

    :pswitch_41
    const-string p0, "TEAR_DOWN_REASON_DEFAULT_DATA_UNSELECTED"

    return-object p0

    :pswitch_44
    const-string p0, "TEAR_DOWN_REASON_VOPS_NOT_SUPPORTED"

    return-object p0

    :pswitch_47
    const-string p0, "TEAR_DOWN_REASON_VCN_REQUESTED"

    return-object p0

    :pswitch_4a
    const-string p0, "TEAR_DOWN_REASON_HANDOVER_NOT_ALLOWED"

    return-object p0

    :pswitch_4d
    const-string p0, "TEAR_DOWN_REASON_HANDOVER_FAILED"

    return-object p0

    :pswitch_50
    const-string p0, "TEAR_DOWN_REASON_DATA_STALL"

    return-object p0

    :pswitch_53
    const-string p0, "TEAR_DOWN_REASON_POWER_OFF_BY_CARRIER"

    return-object p0

    :pswitch_56
    const-string p0, "TEAR_DOWN_REASON_DATA_SERVICE_NOT_READY"

    return-object p0

    :pswitch_59
    const-string p0, "TEAR_DOWN_REASON_CONCURRENT_VOICE_DATA_NOT_ALLOWED"

    return-object p0

    :pswitch_5c
    const-string p0, "TEAR_DOWN_REASON_ROAMING_DISABLED"

    return-object p0

    :pswitch_5f
    const-string p0, "TEAR_DOWN_REASON_RAT_NOT_ALLOWED"

    return-object p0

    :pswitch_62
    const-string p0, "TEAR_DOWN_REASON_NO_LIVE_REQUEST"

    return-object p0

    :pswitch_65
    const-string p0, "DATA_DISABLED"

    return-object p0

    :pswitch_68
    const-string p0, "AIRPLANE_MODE_ON"

    return-object p0

    :pswitch_6b
    const-string p0, "SIM_REMOVAL"

    return-object p0

    :pswitch_6e
    const-string p0, "CONNECTIVITY_SERVICE_UNWANTED"

    return-object p0

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_3
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method private blacklist unregisterForBandwidthUpdate()V
    .registers 4

    .line 1690
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getBandwidthEstimateSource()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 1692
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLceInfo(Landroid/os/Handler;)V

    goto :goto_3f

    :cond_15
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2b

    .line 1694
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkBandwidthEstimatorCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    if-eqz v0, :cond_3f

    .line 1695
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getLinkBandwidthEstimator()Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkBandwidthEstimatorCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    .line 1696
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->unregisterCallback(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V

    const/4 v0, 0x0

    .line 1697
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkBandwidthEstimatorCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    goto :goto_3f

    .line 1700
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid bandwidth source configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method private blacklist unregisterForWwanEvents()V
    .registers 2

    .line 1555
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->unregisterForBandwidthUpdate()V

    .line 1556
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mKeepaliveTracker:Lcom/android/internal/telephony/data/KeepaliveTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/KeepaliveTracker;->unregisterForKeepaliveStatus()V

    .line 1557
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForPcoData(Landroid/os/Handler;)V

    return-void
.end method

.method private blacklist updateBandwidthFromDataConfig()V
    .registers 3

    .line 2640
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getBandwidthEstimateSource()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    return-void

    :cond_a
    const-string v0, "updateBandwidthFromDataConfig"

    .line 2643
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2644
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getBandwidthForNetworkType(Landroid/telephony/TelephonyDisplayInfo;)Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkBandwidth:Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    .line 2645
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkCapabilities()V

    return-void
.end method

.method private blacklist updateDataNetwork(Landroid/telephony/data/DataCallResponse;)V
    .registers 13

    .line 2158
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2159
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    .line 2162
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 2165
    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPduSessionId:I

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getPduSessionId()I

    move-result v2

    if-eq v1, v2, :cond_3b

    .line 2166
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getPduSessionId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPduSessionId:I

    .line 2167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PDU session id updated to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPduSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2171
    :cond_3b
    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkStatus:I

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v2

    if-eq v1, v2, :cond_6d

    .line 2172
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkStatus:I

    .line 2173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Link status updated to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkStatus:I

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataUtils;->linkStatusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2174
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    new-instance v2, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda16;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    .line 2179
    :cond_6d
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_bd

    .line 2180
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7f
    :goto_7f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 2181
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v3

    if-nez v3, :cond_7f

    .line 2182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addr/pl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/data/DataNetwork;->logv(Ljava/lang/String;)V

    .line 2183
    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    goto :goto_7f

    .line 2187
    :cond_bd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no address for ifname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    .line 2191
    :cond_d5
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getDnsAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_fd

    .line 2192
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getDnsAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e7
    :goto_e7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_102

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 2193
    invoke-virtual {v2}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v3

    if-nez v3, :cond_e7

    .line 2194
    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_e7

    :cond_fd
    const-string v1, "Empty dns response"

    .line 2198
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    .line 2202
    :cond_102
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getPcscfAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_124

    .line 2203
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getPcscfAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_114
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_124

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 2204
    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addPcscfServer(Ljava/net/InetAddress;)Z

    goto :goto_114

    .line 2209
    :cond_124
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getMtuV4()I

    move-result v1

    if-lez v1, :cond_12f

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getMtuV4()I

    move-result v1

    goto :goto_133

    :cond_12f
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getMtu()I

    move-result v1

    :goto_133
    if-gtz v1, :cond_14f

    .line 2213
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    if-eqz v2, :cond_147

    .line 2214
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getMtuV4()I

    move-result v1

    :cond_147
    if-gtz v1, :cond_14f

    .line 2217
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getDefaultMtu()I

    move-result v1

    .line 2222
    :cond_14f
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getMtuV6()I

    move-result v2

    if-lez v2, :cond_15a

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getMtuV6()I

    move-result v2

    goto :goto_15e

    :cond_15a
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getMtu()I

    move-result v2

    :goto_15e
    if-gtz v2, :cond_17a

    .line 2225
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v3}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v3

    if-eqz v3, :cond_172

    .line 2226
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getMtuV6()I

    move-result v2

    :cond_172
    if-gtz v2, :cond_17a

    .line 2229
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataConfigManager;->getDefaultMtu()I

    move-result v2

    .line 2234
    :cond_17a
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getGatewayAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_182
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/net/InetAddress;

    .line 2235
    instance-of v4, v7, Ljava/net/Inet6Address;

    if-eqz v4, :cond_195

    move v10, v2

    goto :goto_196

    :cond_195
    move v10, v1

    .line 2236
    :goto_196
    new-instance v4, Landroid/net/RouteInfo;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;II)V

    invoke-virtual {v0, v4}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_182

    .line 2243
    :cond_1a3
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 2245
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_1e2

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 2246
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e2

    .line 2247
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1d1

    const/16 v1, 0x1f90

    .line 2251
    :cond_1d1
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 2252
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v2

    .line 2251
    invoke-static {v2, v1}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object v1

    .line 2253
    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 2256
    :cond_1e2
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    .line 2258
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getSliceInfo()Landroid/telephony/data/NetworkSliceInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    .line 2260
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTrafficDescriptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2261
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTrafficDescriptors:Ljava/util/List;

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getTrafficDescriptors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2263
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosBearerSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2264
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosBearerSessions:Ljava/util/List;

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getQosBearerSessions()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2265
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosCallbackTracker:Lcom/android/internal/telephony/data/QosCallbackTracker;

    if-eqz p1, :cond_212

    .line 2266
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosBearerSessions:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/data/QosCallbackTracker;->updateSessions(Ljava/util/List;)V

    .line 2269
    :cond_212
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27e

    .line 2272
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result p1

    if-nez p1, :cond_226

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isHandoverInProgress()Z

    move-result p1

    if-eqz p1, :cond_25f

    :cond_226
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    .line 2273
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->isLinkPropertiesCompatible(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result p1

    if-nez p1, :cond_25f

    .line 2274
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDataNetwork: Incompatible link properties detected. Re-create the network agent. Changed from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    .line 2278
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    .line 2281
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->abandon()V

    .line 2284
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    .line 2285
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->createNetworkAgent()Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    .line 2286
    invoke-virtual {p1}, Landroid/net/NetworkAgent;->markConnected()V

    goto :goto_27e

    .line 2288
    :cond_25f
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    .line 2289
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendLinkProperties "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2290
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v0}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 2294
    :cond_27e
    :goto_27e
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkCapabilities()V

    return-void
.end method

.method private blacklist updateMeteredAndCongested()V
    .registers 7

    .line 2667
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v0

    .line 2668
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v1}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1c

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1c

    const/4 v3, 0x3

    if-eq v1, v3, :cond_19

    const/4 v3, 0x5

    if-eq v1, v3, :cond_19

    goto :goto_1e

    :cond_19
    const/16 v0, 0x14

    goto :goto_1e

    :cond_1c
    const/16 v0, 0x13

    .line 2678
    :goto_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMeteredAndCongested: networkType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2679
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2678
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2681
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->isTempNotMeteredSupportedByCarrier()Z

    move-result v1

    iget-boolean v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMeteredSupported:Z

    const/4 v4, 0x0

    if-eq v1, v3, :cond_5d

    xor-int/lit8 v1, v3, 0x1

    .line 2682
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMeteredSupported:Z

    .line 2684
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMeteredAndCongested: mTempNotMeteredSupported changed to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMeteredSupported:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    move v1, v2

    goto :goto_5e

    :cond_5d
    move v1, v4

    .line 2687
    :goto_5e
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataNetworkController;->getUnmeteredOverrideNetworkTypes()Ljava/util/Set;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_74

    .line 2688
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->isNetworkTypeUnmetered(I)Z

    move-result v3

    if-eqz v3, :cond_75

    :cond_74
    move v4, v2

    :cond_75
    iget-boolean v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMetered:Z

    if-eq v4, v3, :cond_94

    xor-int/lit8 v1, v3, 0x1

    .line 2689
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMetered:Z

    .line 2691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMeteredAndCongested: mTempNotMetered changed to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMetered:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    move v1, v2

    .line 2693
    :cond_94
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataNetworkController;->getCongestedOverrideNetworkTypes()Ljava/util/Set;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-boolean v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCongested:Z

    if-eq v0, v3, :cond_c1

    xor-int/lit8 v0, v3, 0x1

    .line 2695
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCongested:Z

    .line 2697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMeteredAndCongested: mCongested changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCongested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto :goto_c2

    :cond_c1
    move v2, v1

    :goto_c2
    if-eqz v2, :cond_c7

    .line 2700
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkCapabilities()V

    :cond_c7
    return-void
.end method

.method private blacklist updateNetworkCapabilities()V
    .registers 10

    .line 1784
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    const/4 v1, 0x0

    .line 1785
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 1786
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    .line 1788
    new-instance v2, Landroid/net/TelephonyNetworkSpecifier$Builder;

    invoke-direct {v2}, Landroid/net/TelephonyNetworkSpecifier$Builder;-><init>()V

    iget v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSubId:I

    .line 1789
    invoke-virtual {v2, v3}, Landroid/net/TelephonyNetworkSpecifier$Builder;->setSubscriptionId(I)Landroid/net/TelephonyNetworkSpecifier$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/TelephonyNetworkSpecifier$Builder;->build()Landroid/net/TelephonyNetworkSpecifier;

    move-result-object v2

    .line 1788
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities$Builder;

    .line 1790
    iget v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSubId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    .line 1792
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    const/16 v3, 0xc

    if-eqz v2, :cond_72

    .line 1795
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getApnTypes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda11;

    invoke-direct {v5}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda11;-><init>()V

    .line 1796
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda9;

    invoke-direct {v5}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda9;-><init>()V

    .line 1797
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 1798
    new-instance v5, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda10;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda10;-><init>(Landroid/net/NetworkCapabilities$Builder;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1799
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getApnTypes()Ljava/util/List;

    move-result-object v2

    const/16 v4, 0x4000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 1800
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1807
    :cond_72
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v4, 0x1

    const/16 v5, 0x21

    if-eqz v2, :cond_83

    .line 1808
    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 1810
    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_c6

    .line 1814
    :cond_83
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Landroid/telephony/data/DataProfile;->canSatisfy(I)Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 1815
    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1816
    iget v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    if-ne v2, v4, :cond_c6

    .line 1817
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkRegistrationInfo()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    if-eqz v2, :cond_c6

    .line 1819
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v2

    if-eqz v2, :cond_b2

    .line 1821
    invoke-virtual {v2}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object v6

    if-eqz v6, :cond_b2

    .line 1822
    invoke-virtual {v2}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/VopsSupportInfo;->isVopsSupported()Z

    move-result v6

    if-nez v6, :cond_b2

    .line 1823
    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1825
    :cond_b2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateNetworkCapabilities: dsri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 1832
    :cond_c6
    :goto_c6
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTrafficDescriptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_cc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/data/TrafficDescriptor;

    .line 1834
    :try_start_d8
    invoke-virtual {v5}, Landroid/telephony/data/TrafficDescriptor;->getOsAppId()[B

    move-result-object v6

    if-nez v6, :cond_df

    goto :goto_cc

    .line 1835
    :cond_df
    new-instance v6, Landroid/telephony/data/TrafficDescriptor$OsAppId;

    invoke-virtual {v5}, Landroid/telephony/data/TrafficDescriptor;->getOsAppId()[B

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/telephony/data/TrafficDescriptor$OsAppId;-><init>([B)V

    .line 1836
    invoke-virtual {v6}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getOsId()Ljava/util/UUID;

    move-result-object v7

    sget-object v8, Landroid/telephony/data/TrafficDescriptor$OsAppId;->ANDROID_OS_ID:Ljava/util/UUID;

    invoke-virtual {v7, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10d

    .line 1837
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received non-Android OS id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getOsId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    goto :goto_cc

    .line 1841
    :cond_10d
    invoke-virtual {v6}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getAppId()Ljava/lang/String;

    move-result-object v7

    .line 1840
    invoke-static {v7}, Lcom/android/internal/telephony/data/DataUtils;->getNetworkCapabilityFromString(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x5

    if-eq v7, v8, :cond_14b

    const/16 v8, 0x1d

    if-eq v7, v8, :cond_13d

    const/16 v8, 0x22

    if-eq v7, v8, :cond_14b

    const/16 v8, 0x23

    if-eq v7, v8, :cond_14b

    .line 1855
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid app id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    goto :goto_cc

    .line 1844
    :cond_13d
    invoke-virtual {v0, v7}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1846
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1847
    invoke-virtual {v6}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getDifferentiator()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities$Builder;->addEnterpriseId(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_cc

    .line 1852
    :cond_14b
    invoke-virtual {v0, v7}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_14e} :catch_150

    goto/16 :goto_cc

    :catch_150
    move-exception v6

    .line 1858
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ". Failed to create osAppId from "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/math/BigInteger;

    .line 1859
    invoke-virtual {v5}, Landroid/telephony/data/TrafficDescriptor;->getOsAppId()[B

    move-result-object v5

    invoke-direct {v6, v4, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v5, 0x10

    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1858
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    goto/16 :goto_cc

    .line 1863
    :cond_17e
    iget-boolean v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCongested:Z

    if-nez v2, :cond_187

    const/16 v2, 0x14

    .line 1864
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1867
    :cond_187
    iget-boolean v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMeteredSupported:Z

    if-eqz v2, :cond_194

    iget-boolean v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMetered:Z

    if-eqz v2, :cond_194

    const/16 v2, 0x19

    .line 1868
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    :cond_194
    const/16 v2, 0x1c

    .line 1873
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1874
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataNetwork;->getVcnPolicy(Landroid/net/NetworkCapabilities;)Landroid/net/vcn/VcnNetworkPolicyResult;

    move-result-object v3

    if-eqz v3, :cond_1b0

    .line 1875
    invoke-virtual {v3}, Landroid/net/vcn/VcnNetworkPolicyResult;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v5

    .line 1876
    invoke-virtual {v5, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-nez v5, :cond_1b0

    .line 1877
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    :cond_1b0
    if-nez v1, :cond_1b7

    const/16 v2, 0x12

    .line 1881
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1884
    :cond_1b7
    iget-boolean v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSuspended:Z

    if-nez v2, :cond_1c0

    const/16 v2, 0x15

    .line 1885
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1888
    :cond_1c0
    iget v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCarrierServicePackageUid:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1df

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAdministratorUids:[I

    .line 1889
    invoke-static {v5, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-eqz v2, :cond_1df

    .line 1890
    iget v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCarrierServicePackageUid:I

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->setOwnerUid(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1891
    iget v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCarrierServicePackageUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->setAllowedUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    .line 1893
    :cond_1df
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAdministratorUids:[I

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->setAdministratorUids([I)Landroid/net/NetworkCapabilities$Builder;

    .line 1895
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 1896
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getMeteredNetworkCapabilities(Z)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda11;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 1897
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 1899
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1900
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    .line 1901
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v5

    .line 1902
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda12;

    invoke-direct {v6, v5}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda12;-><init>(Ljava/util/Set;)V

    .line 1900
    invoke-interface {v2, v6}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_232

    const/16 v2, 0xb

    .line 1905
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    :cond_232
    const/16 v2, 0xd

    .line 1909
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1913
    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v5}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled()Z

    move-result v5

    if-eqz v5, :cond_25b

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1914
    invoke-interface {v5}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v5

    if-eqz v5, :cond_29a

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 1915
    invoke-virtual {v5}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingEnabled()Z

    move-result v5

    if-nez v5, :cond_29a

    .line 1920
    :cond_25b
    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataAllowedReason:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    sget-object v6, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->RESTRICTED_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    if-ne v5, v6, :cond_265

    .line 1921
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_29a

    .line 1922
    :cond_265
    sget-object v6, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->UNMETERED_USAGE:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    if-eq v5, v6, :cond_271

    sget-object v6, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->MMS_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    if-eq v5, v6, :cond_271

    sget-object v6, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->EMERGENCY_SUPL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    if-ne v5, v6, :cond_29a

    .line 1927
    :cond_271
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_275
    :goto_275
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_29a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_28d

    .line 1931
    iget-object v6, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataAllowedReason:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    sget-object v7, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->MMS_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    if-eq v6, v7, :cond_275

    :cond_28d
    if-ne v5, v4, :cond_296

    iget-object v6, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataAllowedReason:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    sget-object v7, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->EMERGENCY_SUPL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    if-ne v6, v7, :cond_296

    goto :goto_275

    .line 1938
    :cond_296
    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_275

    .line 1945
    :cond_29a
    :goto_29a
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/util/NetworkCapabilitiesUtils;->inferRestrictedCapability(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-nez v1, :cond_2b0

    if-eqz v3, :cond_2b3

    .line 1946
    invoke-virtual {v3}, Landroid/net/vcn/VcnNetworkPolicyResult;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 1947
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_2b3

    .line 1948
    :cond_2b0
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1952
    :cond_2b3
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkBandwidth:Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    iget v1, v1, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;->downlinkBandwidthKbps:I

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1953
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkBandwidth:Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    iget v1, v1, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;->uplinkBandwidthKbps:I

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1955
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 1956
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v1, :cond_34f

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    if-nez v2, :cond_2cf

    goto/16 :goto_34f

    .line 1965
    :cond_2cf
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_349

    .line 1970
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mEverConnected:Z

    if-eqz v1, :cond_31c

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->areImmutableCapabilitiesChanged(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_31c

    .line 1971
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2ed

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isHandoverInProgress()Z

    move-result v1

    if-eqz v1, :cond_31c

    .line 1975
    :cond_2ed
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNetworkCapabilities: Immutable capabilities changed. Re-create the network agent. Attempted to change from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    .line 1979
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->abandon()V

    .line 1982
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1983
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->createNetworkAgent()Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    .line 1984
    invoke-virtual {v0}, Landroid/net/NetworkAgent;->markConnected()V

    goto :goto_33b

    .line 1988
    :cond_31c
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capabilities changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 1990
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 1993
    :goto_33b
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->removeUnsatisfiedNetworkRequests()V

    .line 1994
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda13;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    goto :goto_34e

    :cond_349
    const-string v0, "updateNetworkCapabilities: Capabilities not changed."

    .line 1997
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    :goto_34e
    return-void

    .line 1960
    :cond_34f
    :goto_34f
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initial capabilities "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateNetworkScore()V
    .registers 4

    .line 2788
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkScore()I

    move-result v0

    .line 2789
    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkScore:I

    if-eq v0, v1, :cond_2d

    .line 2790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating score from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkScore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    .line 2791
    iput v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkScore:I

    .line 2792
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    invoke-virtual {p0, v0}, Landroid/net/NetworkAgent;->sendNetworkScore(I)V

    :cond_2d
    return-void
.end method

.method private blacklist updateSuspendState()V
    .registers 5

    .line 2026
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_83

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_83

    .line 2033
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkRegistrationInfo()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-nez v0, :cond_15

    return-void

    .line 2038
    :cond_15
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_22

    goto :goto_50

    .line 2041
    :cond_22
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v1

    if-eq v1, v3, :cond_31

    .line 2043
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_31

    :goto_2f
    move v2, v3

    goto :goto_50

    .line 2047
    :cond_31
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_50

    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    if-ne v0, v3, :cond_50

    .line 2049
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_50

    goto :goto_2f

    .line 2053
    :cond_50
    :goto_50
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSuspended:Z

    if-eq v0, v2, :cond_83

    .line 2054
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSuspended:Z

    .line 2055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network becomes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSuspended:Z

    if-eqz v1, :cond_67

    const-string v1, "suspended"

    goto :goto_69

    :cond_67
    const-string v1, "unsuspended"

    :goto_69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    .line 2057
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkCapabilities()V

    .line 2058
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->notifyPreciseDataConnectionState()V

    .line 2059
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda15;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    :cond_83
    :goto_83
    return-void
.end method

.method private blacklist updateTcpBufferSizes()V
    .registers 3

    const-string v0, "updateTcpBufferSizes"

    .line 2652
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2653
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getTcpConfigString(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTcpBufferSizes:Ljava/lang/String;

    .line 2654
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 2655
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    .line 2656
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 2657
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    .line 2658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendLinkProperties "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2659
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p0}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    :cond_42
    return-void
.end method

.method private blacklist validateDataCallResponse(Landroid/telephony/data/DataCallResponse;)V
    .registers 5

    if-eqz p1, :cond_a1

    .line 2381
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_a1

    .line 2382
    :cond_a
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result v0

    if-nez v0, :cond_68

    .line 2384
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 2385
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 2387
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v0

    const/4 v1, -0x1

    if-lt v0, v1, :cond_4c

    .line 2388
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_4c

    .line 2389
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getProtocolType()I

    move-result v0

    if-lt v0, v1, :cond_4c

    .line 2390
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getProtocolType()I

    move-result v0

    const/4 v2, 0x5

    if-gt v0, v2, :cond_4c

    .line 2391
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getHandoverFailureMode()I

    move-result v0

    if-lt v0, v1, :cond_4c

    .line 2393
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getHandoverFailureMode()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_a1

    .line 2395
    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid DataCallResponse:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    const-string p1, "Invalid DataCallResponse detected"

    const-string v0, "1f273e9d-b09c-46eb-ad1c-421d01f61164"

    .line 2396
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a1

    .line 2399
    :cond_68
    invoke-static {v0}, Landroid/telephony/DataFailCause;->isFailCauseExisting(I)Z

    move-result v1

    if-nez v1, :cond_a1

    .line 2400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DataFailCause in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    .line 2401
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid DataFailCause: (0x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "6b264f28-9f58-4cbd-9e0e-d7624ba30879"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a1
    :goto_a1
    return-void
.end method


# virtual methods
.method public blacklist attachNetworkRequests(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Z
    .registers 3

    .line 1583
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_17

    :cond_d
    const/4 v0, 0x2

    .line 1587
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(Landroid/os/Message;)V

    const/4 p0, 0x1

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist detachNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .registers 3

    .line 1652
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_15

    :cond_d
    const/4 v0, 0x3

    .line 1655
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_15
    :goto_15
    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 3390
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3391
    invoke-super {p0, p1, v0, p3}, Lcom/android/internal/telephony/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3392
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3393
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 3394
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSubId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSubId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3395
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTransport="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3396
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WWAN cid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3397
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WLAN cid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3398
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkScore="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkScore:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3399
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataAllowedReason="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataAllowedReason:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3400
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPduSessionId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPduSessionId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3401
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataProfile="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3402
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkCapabilities="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3403
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLinkProperties="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3404
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkSliceInfo="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3405
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkBandwidth="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkBandwidth:Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3406
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTcpBufferSizes="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3407
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTelephonyDisplayInfo="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3408
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTempNotMeteredSupported="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMeteredSupported:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3409
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTempNotMetered="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMetered:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3410
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCongested="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCongested:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3411
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSuspended="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSuspended:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3412
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataCallResponse="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallResponse:Landroid/telephony/data/DataCallResponse;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3413
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFailCause="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    invoke-static {v1}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3414
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAdministratorUids="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAdministratorUids:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3415
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCarrierServicePackageUid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCarrierServicePackageUid:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3416
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEverConnected="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mEverConnected:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3417
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mInvokedDataDeactivation="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mInvokedDataDeactivation:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "Attached network requests:"

    .line 3419
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3420
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 3421
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_259
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_269

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 3422
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_259

    .line 3424
    :cond_269
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 3425
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mQosBearerSessions="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosBearerSessions:Ljava/util/List;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3427
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string p2, "Local logs:"

    .line 3428
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3429
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 3430
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3431
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 3432
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string p0, "---------------"

    .line 3433
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getApnTypeNetworkCapability()I
    .registers 3

    .line 2842
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 2844
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getApnTypeNetworkCapability()I

    move-result p0

    return p0

    .line 2846
    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda3;-><init>()V

    .line 2847
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2849
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/data/DataConfigManager;)V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, -0x1

    .line 2850
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getAttachedNetworkRequestList()Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;
    .registers 1

    .line 2883
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    return-object p0
.end method

.method public blacklist getDataProfile()Landroid/telephony/data/DataProfile;
    .registers 1

    .line 2019
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    return-object p0
.end method

.method public blacklist getId()I
    .registers 2

    .line 2744
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method public blacklist getLinkProperties()Landroid/net/LinkProperties;
    .registers 1

    .line 2012
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method

.method public blacklist getLinkStatus()I
    .registers 1

    .line 2781
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkStatus:I

    return p0
.end method

.method public blacklist getNetworkCapabilities()Landroid/net/NetworkCapabilities;
    .registers 1

    .line 2005
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method public blacklist getPcoData()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/PcoData;",
            ">;"
        }
    .end annotation

    .line 3171
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPcoData:Ljava/util/Map;

    return-object p0
.end method

.method public blacklist getPriority()I
    .registers 4

    .line 2866
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 2868
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getPriority()I

    move-result p0

    return p0

    .line 2872
    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2873
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/DataConfigManager;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda1;-><init>()V

    .line 2874
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p0

    .line 2875
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getTransport()I
    .registers 1

    .line 2932
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    return p0
.end method

.method public blacklist isConnected()Z
    .registers 2

    .line 2897
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mConnectedState:Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;

    if-ne v0, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public blacklist isConnecting()Z
    .registers 2

    .line 2890
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mConnectingState:Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;

    if-ne v0, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public blacklist isDisconnected()Z
    .registers 2

    .line 2911
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectedState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    if-ne v0, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public blacklist isDisconnecting()Z
    .registers 2

    .line 2904
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectingState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;

    if-ne v0, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public blacklist isEmergencySupl()Z
    .registers 2

    .line 2976
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataAllowedReason:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->EMERGENCY_SUPL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public blacklist isHandoverInProgress()Z
    .registers 2

    .line 2918
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mHandoverState:Lcom/android/internal/telephony/data/DataNetwork$HandoverState;

    if-ne v0, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public blacklist isInternetSupported()Z
    .registers 3

    .line 2960
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xd

    .line 2961
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xe

    .line 2963
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0x1c

    .line 2965
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v0, 0xf

    .line 2967
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x1

    goto :goto_35

    :cond_34
    const/4 p0, 0x0

    :goto_35
    return p0
.end method

.method public blacklist isSuspended()Z
    .registers 2

    .line 2925
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method protected blacklist log(Ljava/lang/String;)V
    .registers 5

    .line 3347
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 3348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_29

    :cond_27
    const-string p0, ""

    :goto_29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3347
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .registers 5

    .line 3357
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 3358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_29

    :cond_27
    const-string p0, ""

    :goto_29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3357
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist logv(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public blacklist name()Ljava/lang/String;
    .registers 1

    .line 3327
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLogTag:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist onAttachNetworkRequests(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V
    .registers 6

    .line 1597
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;-><init>()V

    .line 1598
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 1599
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->isNetworkRequestExisting(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 1600
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->add(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    .line 1601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attached failed. Network request was already removed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto :goto_9

    .line 1602
    :cond_35
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 1603
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->add(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    .line 1604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attached failed. Cannot satisfy the network request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto :goto_9

    .line 1607
    :cond_57
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->add(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    .line 1608
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setAttachedNetwork(Lcom/android/internal/telephony/data/DataNetwork;)V

    const/4 v2, 0x1

    .line 1609
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setState(I)V

    .line 1611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully attached network request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto :goto_9

    .line 1614
    :cond_78
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-lez p1, :cond_88

    .line 1615
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    :cond_88
    return-void
.end method

.method public blacklist shouldDelayImsTearDown()Z
    .registers 3

    .line 2464
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->isImsDelayTearDownEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_30

    const/16 v1, 0x21

    .line 2466
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2467
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2468
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p0, v0, :cond_30

    const/4 p0, 0x1

    goto :goto_31

    :cond_30
    const/4 p0, 0x0

    :goto_31
    return p0
.end method

.method public blacklist startHandover(ILcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)Z
    .registers 5

    .line 3016
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnecting()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_1f

    :cond_14
    const/16 v0, 0xe

    .line 3021
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(Landroid/os/Message;)V

    const/4 p0, 0x1

    return p0

    :cond_1f
    :goto_1f
    if-eqz p2, :cond_25

    const/4 p0, 0x4

    .line 3018
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    :cond_25
    return v1
.end method

.method public blacklist tearDown(I)V
    .registers 3

    .line 2433
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_15

    :cond_d
    const/4 v0, 0x7

    .line 2436
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_15
    :goto_15
    return-void
.end method

.method public blacklist tearDownWhenConditionMet(IJ)Ljava/lang/Runnable;
    .registers 6

    .line 2496
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    if-eqz v0, :cond_44

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result v0

    if-nez v0, :cond_44

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnecting()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_44

    .line 2500
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tearDownWhenConditionMet: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->tearDownReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    const/16 v0, 0x15

    long-to-int p2, p2

    .line 2502
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/StateMachine;->sendMessage(III)V

    .line 2503
    new-instance p2, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/data/DataNetwork;I)V

    return-object p2

    .line 2497
    :cond_44
    :goto_44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "tearDownWhenConditionMet: Not in the right state. State="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 3318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DataNetwork: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    .line 3319
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    :cond_28
    move-object v1, v2

    :goto_29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3320
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v1

    if-eqz v1, :cond_3f

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_3f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist unhandledMessage(Landroid/os/Message;)V
    .registers 5

    .line 1562
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    .line 1563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in state "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1d

    const-string p1, "null"

    goto :goto_21

    .line 1564
    :cond_1d
    invoke-interface {v0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1563
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    return-void
.end method
